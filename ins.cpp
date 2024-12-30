/*
  PigletVM processor module for IDA Pro

  by Elias Bachaalany / AllThingsIDA
*/

#include "ins.hpp"

const instruc_t Instructions[] =
{
  {"", 0}, // Unknown Operation
  {"pushi", CF_USE1}, // push imm16
  {"loadi", CF_USE1}, // push the contents of memory[imm16]
  {"loadaddi", CF_USE1}, // adds the contents of memory[imm16] to the top of the stack (pops the stack, adds, pushes the result)
  {"storei", CF_USE1}, // pops the stack and stores the value in memory[imm16]
  {"load", 0}, // push the contents of memory[pop()]
  {"store", 0}, // pops a value, pop an address, store the value in memory[addr]
  {"dup", 0}, // push a copy of the top of the stack
  {"discard", 0}, // pop the stack and discard the value
  {"add", 0}, // pop two values, add them, push the result
  {"addi", CF_USE1}, // pop a value, add imm16, push the result
  {"sub", 0}, // pop value1, pop value2, then do value2 - value1, push the result
  {"div", 0}, // pop two values, divide the second by the first, push the result
  {"mul", 0}, // pop two values, multiply them, push the result
  {"jmp", CF_JUMP | CF_USE1}, // jump to imm16
  {"jmp_if_true", CF_USE1}, // pop a value, if it's not zero, jump to imm16
  {"jmp_if_false", CF_USE1}, // pop a value, if it's zero, jump to imm16
  {"is_eq", 0}, // pop two values, compare them, push 1 if equal, 0 if not
  {"is_less", 0}, // pop two values, compare them, push 1 if less, 0 if not
  {"is_le", 0}, // pop value1, pop value2, push 1 if value2 <= value1, 0 if not
  {"is_greater", 0}, // pop value1, pop value2, push 1 if value2 > value1, 0 if not
  {"is_ge", 0}, // pop value1, pop value2, push 1 if value2 >= value1, 0 if not
  {"is_ge_imm16", CF_USE1}, // pop value1, compare to imm16, push 1 if value1 >= imm16, 0 if not
  {"pop_check", 0}, // store the top of the stack into the 'check' variable
  {"ret", CF_STOP}, // return from vm (done)
  {"pop_check2", 0}, // store the top of the stack into the 'check' variable
  {"xor", 0}, // pop two values, xor them, push the result
  {"or", 0}, // pop two values, or them, push the result
  {"and", 0}, // pop two values, and them, push the result
  {"mod", 0}, // pop value1, pop value2, push value2 % value1
  {"shl", CF_SHFT}, // pop value1, pop value2, push value2 << value1
  {"shr", CF_SHFT}, // pop value1, pop value2, push value2 >> value1
  {"rotl32", 0}, // pop value1, pop value2, push value2 rotated left by value1
  {"rotr32", 0}, // pop value1, pop value2, push value2 rotated right by value1
  {"rotl16", 0}, // pop value1, pop value2, push value2 rotated left by value1
  {"rotr16", 0}, // pop value1, pop value2, push value2 rotated right by value1
  {"rotl8", 0}, // pop value1, pop value2, push value2 rotated left by value1
  {"rotr8", 0}, // pop value1, pop value2, push value2 rotated right by value1
  {"print", 0}, // pop value, print it
  {"done", CF_STOP}, // exit the vm
};

CASSERT(qnumber(Instructions) == PVM_LAST_INSTRUCTION);
