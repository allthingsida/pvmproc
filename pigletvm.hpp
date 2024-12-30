#pragma once

#include <list>
#include <../module/idaidp.hpp>

#define PROCMOD_NAME pigletvm
#define PLFM_PIGLETVM (0x8000 + 17)

extern int data_id;

//----------------------------------------------------------------------
// Registers
enum PVM_Registers
{
    rIP,
    rSP,
    rRESULT,
    rVcs, rVds,    // virtual registers for code and data segments
    rLastRegister
};

//-------------------------------------------------------------------------
struct pigletvm_t: public procmod_t
{
    // dispatcher
    ssize_t idaapi on_event(ssize_t msgid, va_list va) override;

    // emulator
    int emu(const insn_t& insn);
    // analzer
    int ana(insn_t& insn);
    // output
    int out_segstart(outctx_t& ctx, segment_t* s);
};
