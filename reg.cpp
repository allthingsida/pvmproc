/*
  PigletVM processor module for IDA Pro

  by Elias Bachaalany / AllThingsIDA
*/

#include "pigletvm.hpp"
#include "ins.hpp"

#include <loader.hpp>
#include <segregs.hpp>
#include <cvt64.hpp>

int data_id;

//-----------------------------------------------------------------------
//      Registers Definition
//-----------------------------------------------------------------------
const char* const RegNames[rLastRegister] =
{
  "ip",
  "sp",
  "result",
  "cs", "ds"
};
CASSERT(qnumber(RegNames) == rLastRegister);

//----------------------------------------------------------------------
static const asm_t pigletvm_asm =
{
  ASH_HEXF3 | AS_COLON | ASB_BINF3 | AS_N2CHR,  // flags
  0,                                // user flags
  "PigletVM Assembler",             // assembler name
  0,                                // help
  nullptr,                          // array of automatically generated header lines
  ".org",                           // org directive
  ".end",                           // end directive
  "#",                              // comment string
  '"',                              // string delimiter
  '\'',                             // char delimiter
  "'\"",                            // special symbols in char and string constants
  ".str",                           // ascii string directive
  "db",                             // byte directive
  "dw",                             // halfword (16 bits)   [IDA: word]
  "dd",                             // word (32 bits)       [IDA: dword]
  "dq",                             // doubleword (64 bits) [IDA: qword]
  nullptr,                          // oword (16 bytes)
  nullptr,                          // float (4-byte)
  nullptr,                          // double (8-byte)
  nullptr,                          // no tbytes
  nullptr,                          // no packreal
  "#d dup(#v)",                     //".db.#s(b,w) #d,#v"
  ".byte (%s) ?",                   // uninited data (reserve space) ;?
  "equ",                            // 'equ' Used if AS_UNEQU is set
  nullptr,                          // seg prefix
  "ip",                             // a_curip
  nullptr,                          // returns function header line
  nullptr,                          // returns function footer line
  nullptr,                          // public
  nullptr,                          // weak
  nullptr,                          // extrn
  nullptr,                          // comm
  nullptr,                          // get_type_name
  nullptr,                          // align
  '(',                              // lbrace
  ')',                              // rbrace
  nullptr,                          // mod
  "and",                            // bit-and
  "or",                             // or
  "xor",                            // xor
  "not",                            // not
  "shl",                            // shl
  "shr",                            // shr
  nullptr,                          // sizeof
  0,                                // flags2
  nullptr,                          // cmnt2
  nullptr,                          // low8 operation, should contain %s for the operand
  nullptr,                          // high8
  nullptr,                          // low16
  nullptr,                          // high16
  nullptr,                          // a_include_fmt
  nullptr,                          // if a named item is a structure and displayed
  nullptr                           // 'rva' keyword for image based offsets
};

static const asm_t* const asms[] = { &pigletvm_asm, nullptr };

static const char* const shnames[] =
{
  "pvm",
  nullptr
};

static const char* const lnames[] =
{
  "PigletVM",
  nullptr
};

//----------------------------------------------------------------------
ssize_t idaapi pigletvm_t::on_event(ssize_t msgid, va_list va)
{
    int code = 0;
    switch (msgid)
    {
        case processor_t::ev_init:
        {
            inf_set_be(true);
            break;
        }

        case processor_t::ev_ana_insn:
        {
            insn_t &insn = *va_arg(va, insn_t*);
            return ana(insn);
        }

        //case processor_t::ev_out_header:
        //{
        //    outctx_t* ctx = va_arg(va, outctx_t*);
        //    ctx->gen_header(GH_PRINT_PROC_AND_ASM);
        //    return 1;
        //}

        //case processor_t::ev_out_data:
        //{
        //    outctx_t* ctx = va_arg(va, outctx_t*);
        //    bool analyze_only = va_argi(va, bool);
        //    ctx->out_data(analyze_only);
        //    return 1;
        //}

        //case processor_t::ev_out_footer:
        //{
        //    outctx_t& ctx = *va_arg(va, outctx_t*);
        //    ctx.gen_empty_line();
        //    ctx.out_line(ash.end, COLOR_ASMDIR);
        //    ctx.flush_outbuf(DEFAULT_INDENT);
        //    ctx.gen_cmt_line("-------------- end of module --------------");
        //    return 1;
        //}

        case processor_t::ev_out_segstart:
        {
            outctx_t& ctx = *va_arg(va, outctx_t*);
            segment_t* s = va_arg(va, segment_t*);
            return out_segstart(ctx, s);
        }

        case processor_t::ev_emu_insn:
        {
            const insn_t* insn = va_arg(va, const insn_t*);
            return emu(*insn) ? 1 : -1;
        }

        case processor_t::ev_out_insn:
        {
            outctx_t& ctx = *va_arg(va, outctx_t*);
            out_insn(ctx);
            return 1;
        }

        case processor_t::ev_out_operand:
        {
            outctx_t& ctx = *va_arg(va, outctx_t*);
            const op_t& op = *va_arg(va, const op_t*);
            return out_opnd(ctx, op) ? 1 : -1;
        }

        default:
        {
            break;
        }
    }
    return code;
}

//----------------------------------------------------------------------
// This old-style callback only returns the processor module object.
static ssize_t idaapi notify(void*, int msgid, va_list)
{
    if (msgid == processor_t::ev_get_procmod)
        return size_t(SET_MODULE_DATA(pigletvm_t));
    return 0;
}

//-----------------------------------------------------------------------
//      Processor Definition
//-----------------------------------------------------------------------
processor_t LPH =
{
  IDP_INTERFACE_VERSION,  // version
  PLFM_PIGLETVM,          // id
  PR_DEFSEG64 | PR_USE64 | PRN_HEX, // flag
  0,                      // flag2         
  8,                      // 8 bits in a byte for code segments
  8,                      // 8 bits in a byte for other segments
  shnames,                // short processor names
  lnames,                 // long processor names
  asms,                   // assemblers
  notify,                 // legacy: return the procmod_t* subclass
  RegNames,               // Regsiter names
  rLastRegister,          // Number of registers
  rVcs/*rVep*/,           // number of first segment register
  rVds/*rVcs*/,           // number of last segment register
  0 /*4*/,                // size of a segment register
  rVcs,
  rVds,
  nullptr,                // No known code start sequences
  nullptr,                // Array of 'return' instruction opcodes
  PVM_NULL,
  PVM_LAST_INSTRUCTION,
  Instructions,
  0,                      // size of tbyte
  {0},                    // real width
  PVM_DONE,               // icode_return
  nullptr,                // Micro virtual machine description
};
