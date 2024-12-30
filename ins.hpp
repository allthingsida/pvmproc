#pragma once

#include <idp.hpp>

//----------------------------------------------------------------------

extern const instruc_t Instructions[];

enum PVM_Instructions
{
  PVM_NULL,         // Reserved (0)
  PVM_PUSHI,        // push imm16 (1)
  PVM_LOADI,        // push the contents of memory[imm16] (2)
  PVM_LOADADDI,     // adds the contents of memory[imm16] to the top of the stack (pops the stack, adds, pushes the result) (3)
  PVM_STOREI,       // pops the stack and stores the value in memory[imm16] (4)
  PVM_LOAD,         // push the contents of memory[pop()] (5)
  PVM_STORE,        // pops a value, pop an address, store the value in memory[addr] (6)
  PVM_DUP,          // push a copy of the top of the stack (7)
  PVM_DISCARD,      // pop the stack and discard the value (8)
  PVM_ADD,          // pop two values, add them, push the result (9)
  PVM_ADDI,         // pop a value, add imm16, push the result (10)
  PVM_SUB,          // pop value1, pop value2, then do value2 - value1, push the result (11)
  PVM_DIV,          // pop two values, divide the second by the first, push the result (12)
  PVM_MUL,          // pop two values, multiply them, push the result (13)
  PVM_JMP,          // jump to imm16 (14)
  PVM_JMP_IF_TRUE,  // pop a value, if it's not zero, jump to imm16 (15)
  PVM_JMP_IF_FALSE, // pop a value, if it's zero, jump to imm16 (16)
  PVM_IS_EQ,        // pop two values, compare them, push 1 if equal, 0 if not (17)
  PVM_IS_LESS,      // pop two values, compare them, push 1 if less, 0 if not (18)
  PVM_IS_LE,        // pop value1, pop value2, push 1 if value2 <= value1, 0 if not (19)
  PVM_IS_GREATER,   // pop value1, pop value2, push 1 if value2 > value1, 0 if not (20)
  PVM_IS_GE,        // pop value1, pop value2, push 1 if value2 >= value1, 0 if not (21)
  PVM_IS_GE_IMM16,  // pop value1, compare to imm16, push 1 if value1 >= imm16, 0 if not (22)
  PVM_POP_CHECK,    // store the top of the stack into the 'check' variable (23)
  PVM_RET,          // return from vm (done) (24)
  PVM_POP_CHECK2,   // store the top of the stack into the 'check' variable (25)
  PVM_XOR,          // pop two values, xor them, push the result (26)
  PVM_OR,           // pop two values, or them, push the result (27)
  PVM_AND,          // pop two values, and them, push the result (28)
  PVM_MOD,          // pop value1, pop value2, push value2 % value1 (29)
  PVM_SHL,          // pop value1, pop value2, push value2 << value1 (30)
  PVM_SHR,          // pop value1, pop value2, push value2 >> value1 (31)
  PVM_ROTL32,       // pop value1, pop value2, push value2 rotated left by value1 (32)
  PVM_ROTR32,       // pop value1, pop value2, push value2 rotated right by value1 (33)
  PVM_ROTL16,       // pop value1, pop value2, push value2 rotated left by value1 (34)
  PVM_ROTR16,       // pop value1, pop value2, push value2 rotated right by value1 (35)
  PVM_ROTL8,        // pop value1, pop value2, push value2 rotated left by value1 (36)
  PVM_ROTR8,        // pop value1, pop value2, push value2 rotated right by value1 (37)
  PVM_PRINT,        // pop value, print it (38)
  PVM_DONE,         // exit the vm (39)
  PVM_LAST_INSTRUCTION
};
