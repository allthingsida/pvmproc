/*
  CatBert PigletVM loader for IDA Pro

  by Elias Bachaalany / AllThingsIDA
*/

#include <ida.hpp>
#include <fpro.h>
#include <idp.hpp>
#include <loader.hpp>
#include <diskio.hpp>
#include <../ldr/idaldr.h>
#include "common.h"

// CatBert file header format:
// {
//     @0: uint32_t sig; // 'BT4C'
//     @4: uint32_t data_size;
//     @8: uint32_t pos_bytecode;
//     @0xc: uint32_t bytecode_size;
//     ...data[data_size]...
//     @pos_bytecode: ...bytecode[bytecode_size]...
// }

#define MEM_SIZE 0x10000

//--------------------------------------------------------------------------
//
//      check input file format. if recognized, then return 1
//      and fill 'fileformatname'.
//      otherwise return 0
//
static int idaapi accept_file(
    qstring* fileformatname,
    qstring* processor,
    linput_t* li,
    const char* filename)
{
    uint32_t sig;
    lread(li, &sig, sizeof(sig));
    if (sig != 'BT4C')
        return 0;

    *fileformatname = "Catbert PigletVM";
    *processor = "pvm";

    return 1;
}

//--------------------------------------------------------------------------
//
//      load file into the database.
//
void idaapi load_file(
    linput_t* li, 
    ushort neflag, 
    const char* fileformatname)
{
    // Set the processor type
    set_processor_type("pvm", SETPROC_LOADER);

    uint32_t pos_bytecode, bytecode_size;
    qlseek(li, 8, SEEK_SET);
    lread(li, &pos_bytecode, sizeof(pos_bytecode));
    lread(li, &bytecode_size, sizeof(bytecode_size));

    // Code segment
    ea_t start_ea = PVM_CODE_BASE;
    QASSERT(0, start_ea > (MEM_SIZE * 8));
    ea_t end_ea = start_ea + bytecode_size;
    sel_t sel = 0;

    segment_t s;
    s.start_ea = start_ea;
    s.end_ea = end_ea;
    s.type = SEG_CODE;
    s.bitness = 2; // 64-bit
    sel = s.sel = allocate_selector(0);
    inf_set_max_ea(s.end_ea);

    if (!add_segm_ex(&s, "code", CLASS_CODE, 0))
        loader_failure();

    file2base(li, pos_bytecode, start_ea, end_ea, FILEREG_PATCHABLE);

    inf_set_start_ip(start_ea);
    inf_set_start_cs(sel);
    inf_set_start_ea(start_ea);

    // Data segment
    s.start_ea = 0x0;
    s.end_ea = s.start_ea + (sizeof(uint64_t) * MEM_SIZE);
    s.type = SEG_DATA;
    s.bitness = 2; // 64-bit
    s.sel = allocate_selector(0);//sel;

    if (!add_segm_ex(&s, "memory", CLASS_BSS, ADDSEG_SPARSE))
        loader_failure();

    create_qword(s.start_ea, s.size());

    inf_set_be(true);
    inf_set_min_ea(s.start_ea);
}

//----------------------------------------------------------------------
//
//      LOADER DESCRIPTION BLOCK
//
//----------------------------------------------------------------------

// Make sure we export LDSC
idaman loader_t ida_module_data LDSC;

loader_t LDSC =
{
  IDP_INTERFACE_VERSION,
  0, // loader flags
  accept_file, // recognize the file?
  load_file, // load file into the database.
  nullptr, // savefile()
  nullptr, // move_segm()
  nullptr,
};
