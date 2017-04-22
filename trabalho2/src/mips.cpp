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
      //code
      break;
    case ANDI:
      //code
      break;
    case ORI:
      //code
      break;
    case XORI:
      //code
      break;
    case SLTI:
      //code
      break;
    case SLTIU:
      //code
      break;
    case ADDIU:
      //code
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
    switch (funct) {
      case ADD:
        //code
        break;
      case SUB:
        //code
        break;
      case DIV:
        //code
        break;
      case MULT:
        //code
        break;
      case AND:
        //code
        break;
      case OR:
        //code
        break;
      case NOR:
        //code
        break;
      case SLT:
        //code
        break;
      case SLL:
        //code
        break;
      case SRL:
        //code
        break;
      case SRA:
        //code
        break;
      case MFHI:
        //code
        break;
      case MFLO:
        //code
        break;
      case XOR:
        //code
        break;
      case JR:
        //code
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

}

void dump_mem(int start, int end, char format){

}

void dump_reg(char format){

}
