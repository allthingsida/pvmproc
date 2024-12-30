/*
  PigletVM processor module for IDA Pro

  by Elias Bachaalany / AllThingsIDA
*/

#include <bytes.hpp>
#include "ins.hpp"
#include "common.h"
#include "pigletvm.hpp"

//------------------------------------------------------------------------
// Analyze one instruction and fill 'insn' structure.
// insn.ea contains address of instruction to analyze.
// Return length of the instruction in bytes, 0 if instruction can't be decoded.
// This function shouldn't change the database, flags or anything else.
int pigletvm_t::ana(insn_t& insn)
{
    uchar opcode = get_byte(insn.ea);

    switch (opcode)
    {
        case PVM_LOAD:  // push the contents of memory[pop()]
        case PVM_STORE: // pops a value, pop an address, store the value in memory[addr]
        case PVM_DUP:   // push a copy of the top of the stack
        case PVM_DISCARD: // pop the stack and discard the value
        case PVM_ADD:   // pop two values, add them, push the result
        case PVM_SUB:   // pop two values, subtract, push the result
        case PVM_DIV:   // pop two values, divide, push the result
        case PVM_MUL:   // pop two values, multiply, push the result
        case PVM_XOR:   // pop two values, XOR them, push the result
        case PVM_OR:    // pop two values, OR them, push the result
        case PVM_AND:   // pop two values, AND them, push the result
        case PVM_MOD:   // pop two values, push value2 % value1
        case PVM_SHL:   // pop value1, value2, push value2 << value1
        case PVM_SHR:   // pop value1, value2, push value2 >> value1
        case PVM_ROTL32: // pop value1, pop value2, push value2 rotated left by value1
        case PVM_ROTR32: // pop value1, pop value2, push value2 rotated right by value1
        case PVM_ROTL16: // pop value1, pop value2, push value2 rotated left by value1
        case PVM_ROTR16: // pop value1, pop value2, push value2 rotated right by value1
        case PVM_ROTL8: // pop value1, pop value2, push value2 rotated left by value1
        case PVM_ROTR8: // pop value1, pop value2, push value2 rotated right by value1
        case PVM_IS_EQ:  // pop two values, push 1 if equal, 0 otherwise
        case PVM_IS_LESS: // pop two values, push 1 if less, 0 otherwise
        case PVM_IS_LE:   // pop two values, push 1 if less or equal, 0 otherwise
        case PVM_IS_GREATER: // pop two values, push 1 if greater, 0 otherwise
        case PVM_IS_GE:   // pop two values, push 1 if greater or equal, 0 otherwise
        case PVM_RET:     // return from VM
        case PVM_DONE:    // exit VM
        case PVM_POP_CHECK: // store the top of the stack into the 'check' variable
        case PVM_POP_CHECK2: // store the top of the stack into the 'check' variable
        case PVM_PRINT:   // pop value, print it
        {
            insn.size = 1; // Single-byte instructions
            break;
        }

        case PVM_ADDI:    // pop a value, add imm16, push result
        case PVM_IS_GE_IMM16: // pop value1, compare to imm16, push result
        case PVM_PUSHI:  // push imm16
        case PVM_LOADI:  // push the contents of memory[imm16]
        case PVM_LOADADDI: // adds the contents of memory[imm16] to the top of the stack
        case PVM_STOREI: // pops the stack and stores the value in memory[imm16]
        {
            insn.ops[0].type = o_imm;
            insn.ops[0].dtype = dt_word;
            insn.ops[0].value = get_word(insn.ea + 1);
            insn.size = 3;
            break;
        }

        case PVM_JMP:   // jump to imm16
        case PVM_JMP_IF_TRUE:  // pop a value, jump to imm16 if not zero
        case PVM_JMP_IF_FALSE: // pop a value, jump to imm16 if zero
        {
            insn.ops[0].type = o_near;
            insn.ops[0].dtype = dt_word;
            insn.ops[0].addr = PVM_CODE_BASE + get_word(insn.ea + 1);
            insn.size = 3;
            break;
        }

        default:
        {
            return 0; // Unknown instruction
        }
    }

    insn.itype = opcode;
    return insn.size;
}
