#include "mips.hpp"
/* ************************************************* *
 *  implementacao das funcoes descritas no mips.h    *
 * ************************************************* */

uint32_t opcode, rs, rt, rd, shamt, funct, k16, k26;  // campos da instrucao

void fetch(){
  ri = mem[pc/4];
  pc += 4;
}

void decode(){
  uint32_t opcode_mask = 0xFC000000;
  uint32_t rs_mask = 0x3E00000;
  uint32_t rt_mask = 0x1F00000;
  uint32_t rd_mask = 0xF800000;
  uint32_t shamt_mask = 0x7C0;
  uint32_t funct_mask = 0x3F;
  uint32_t k16_mask = 0xFFFF;
  uint32_t k26_mask = 0x3FFFFFF;

  opcode = (ri & opcode_mask) >> 26;
  rs = (ri & rs_mask) >> 21;
  rt = (ri & rt_mask) >> 16;
  rd = (ri & rd_mask) >> 11;
  shamt = (ri & shamt_mask) >> 6;
  funct = (ri & funct_mask);
  k16 = (ri & k16_mask);
  k26 = (ri & k26_mask);

}

void execute(){
  switch (opcode) {
    case ADDI:
      reg[rt] = reg[rs] + k16;
      break;
    case ANDI:
      reg[rt] = reg[rs] & k16;
      break;
    case ORI:
      reg[rt] = reg[rs] | k16;
      break;
    case XORI:
      reg[rt] = reg[rs] ^ k16;
      break;
    case SLTI:
      if (reg[rs] < (int32_t) k16) {
        reg[rt] = 1;
      }
      else{
        reg[rt] = 0;
      }
      break;
    case SLTIU:
      if ( (uint32_t)reg[rs] < (uint32_t)k16) {
        reg[rt] = 1;
      }
      else{
        reg[rt] = 0;
      }
      break;
    case ADDIU:
      reg[rt] = (uint32_t)reg[rs] + (uint32_t)k16;
      break;
    case J:
      //code
      break;
    case JAL:
      //code
      break;
    case BEQ:
      //code
      break;
    case BGTZ:
      //code
      break;
    case BLEZ:
      //code
      break;
    case BNE:
      //code
      break;
    case LB:
      //code
      break;
    case LBU:
      //code
      break;
    case LH:
      //code
      break;
    case LHU:
      //code
      break;
    case LW:
      //code
      break;
    case SB:
      //code
      break;
    case SH:
      //code
      break;
    case SW:
      //code
      break;
    case LUI:
      //code
      break;
  }
  if (opcode == 0) {
    int32_t AUX;
    switch (funct) {
      case ADD:
        reg[rd] = reg[rs] + reg[rd];
        break;
      case SUB:
        reg[rd] = reg[rs] - reg[rd];
        break;
      case DIV:
        lo = (int32_t) reg[rs]/reg[rt];
        hi = reg[rs]%reg[rt];
        break;
      case MULT:
        //code
        break;
      case AND:
        reg[rd] = reg[rs] & reg[rt];
        break;
      case OR:
        reg[rd] = reg[rs] | reg[rt];
        break;
      case NOR:
        reg[rd] = ~(reg[rs] | reg[rt]);
        break;
      case SLT:
        if (reg[rs] < reg[rd]) {
          reg[rd] = 1;
        }
        else{
          reg[rd] = 0;
        }
        break;
      case SLL:
        reg[rd] = reg[rt] << reg[rs];
        break;
      case SRL:
        reg[rd] = reg[rt] >> reg[rs];
        break;
      case SRA:
        AUX = reg[rd] & 0x80000000;
        reg[rd] = reg[rt] >> reg[rs];
        reg[rd] |= AUX;
        break;
      case MFHI:
        reg[rd] = hi;
        break;
      case MFLO:
        reg[rd] = lo;
        break;
      case XOR:
        reg[rd] = reg[rs] ^ reg[rt];
        break;
      case JR:
        pc = reg[rs];
        break;
      case SYSCALL:
        //code
        break;
    }
  }
}

void step(){
  fetch();
  decode();
  execute();
}

void run(){
    cout << textf_name << endl << dataf_name << endl;
}

void dump_mem(int start, int end, char format){

}

void dump_reg(char format){

}
