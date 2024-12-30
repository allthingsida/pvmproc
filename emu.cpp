/*
  PigletVM processor module for IDA Pro

  by Elias Bachaalany / AllThingsIDA
*/

#include "pigletvm.hpp"
#include "ins.hpp"

int pigletvm_t::emu(const insn_t& insn)
{
    uint32 Feature = insn.get_canon_feature(ph);
    bool flow = ((Feature & CF_STOP) == 0);

    switch (insn.itype)
    {
        case PVM_JMP:
            flow = false;
            [[fallthrough]];
        case PVM_JMP_IF_TRUE:  // pop a value, jump to imm16 if not zero
        case PVM_JMP_IF_FALSE: // pop a value, jump to imm16 if zero
        {
            insn.add_cref(insn.ops[0].addr, 0, fl_JN);
            break;
        }
    }

    if (flow)
        add_cref(insn.ea, insn.ea + insn.size, fl_F);

    return 1;
}


