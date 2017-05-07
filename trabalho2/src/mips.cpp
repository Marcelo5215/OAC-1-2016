#include "mips.hpp"
/* ************************************************* *
 *  implementacao das funcoes descritas no mips.h    *
 * ************************************************* */

uint32_t opcode, rs, rt, rd, shamt, funct, k16, k26;  // campos da instrucao
bool EXIT = false;                                    // flag para sair da execucao

void fetch(){
  ri = mem[pc/4];
  pc += 4;
}

void decode(){
  uint32_t opcode_mask = 0xFC000000;
  uint32_t rs_mask = 0x03E00000;
  uint32_t rt_mask = 0x001F0000;
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
      memcpy(&reg[rt], &mem[(reg[rs] + k16)/4] ,4);
      break;
    case SB:
       memcpy(&mem[reg[rs] + k16],&reg[rt],1);
       break;
    case SH:
       memcpy(&mem[reg[rs] + k16],&reg[rt],2);
       break;
    case SW:
       memcpy(&mem[reg[rs] + k16],&reg[rt],4);
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
        switch (reg[2]) { //check $v0
          case 1:
            std::cout << reg[4] << std::endl;
            break;
          case 4:
            printf("%s\n", (char*)&reg[4]);
            break;
          case 10:
            EXIT = true;
            break;
        }
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
  pc = 0;
  hi = 0;
  lo = 0;
  for (int i = 0; i < REG_NUM; i++) {
    reg[i] = 0;
  }

  do{
    if (EXIT) {
      return;
    }
    step();
  }while(pc < TEXT_END);

  step();

  return;
}

void dump_mem(int start, int end, char format){

   std::ofstream memfile("mem.txt");

   cout << "MEMORY" << endl;
   for (unsigned int i = start; i <= end; i+=4) {
     if (format == 'h') {
       cout << hex << i << " = " << hex << mem[i/4] << endl;
       if(writetxt == 1){
           memfile << hex << i << " = " << hex << mem[i/4] << endl;
       }
     }
     else{
       cout << hex << i << " = " << dec << mem[i/4] << endl;
     }
   }

   if(writetxt == 1)
       memfile.close();
   else
       remove("mem.txt");

 }

void dump_reg(char format){

  cout << "REGISTERS" << endl;
  if (format = 'd') {
    cout << "$zero" << " = " << reg[0] << endl;
    cout << "$at" << " = " << reg[1] << endl;
    cout << "$v0" << " = " << reg[2] << endl;
    cout << "$v1" << " = " << reg[3] << endl;
    cout << "$a0" << " = " << reg[4] << endl;
    cout << "$a1" << " = " << reg[5] << endl;
    cout << "$a2" << " = " << reg[6] << endl;
    cout << "$a3" << " = " << reg[7] << endl;
    cout << "$t0" << " = " << reg[8] << endl;
    cout << "$t1" << " = " << reg[9] << endl;
    cout << "$t2" << " = " << reg[10] << endl;
    cout << "$t3" << " = " << reg[11] << endl;
    cout << "$t4" << " = " << reg[12] << endl;
    cout << "$t5" << " = " << reg[13] << endl;
    cout << "$t6" << " = " << reg[14] << endl;
    cout << "$t7" << " = " << reg[15] << endl;
    cout << "$s0" << " = " << reg[16] << endl;
    cout << "$s1" << " = " << reg[17] << endl;
    cout << "$s2" << " = " << reg[18] << endl;
    cout << "$s3" << " = " << reg[19] << endl;
    cout << "$s4" << " = " << reg[20] << endl;
    cout << "$s5" << " = " << reg[21] << endl;
    cout << "$s6" << " = " << reg[22] << endl;
    cout << "$s7" << " = " << reg[23] << endl;
    cout << "$t8" << " = " << reg[24] << endl;
    cout << "$t9" << " = " << reg[25] << endl;
    cout << "$k0" << " = " << reg[26] << endl;
    cout << "$k1" << " = " << reg[27] << endl;
    cout << "$gp" << " = " << reg[28] << endl;
    cout << "$sp" << " = " << reg[29] << endl;
    cout << "$fp" << " = " << reg[30] << endl;
    cout << "$ra" << " = " << reg[31] << endl << endl;


    cout << "$PC" << " = " << pc << endl;
    cout << "$HI" << " = " << hi << endl;
    cout << "$LO" << " = " << lo << endl;
  }
  else{
    cout << hex << "$zero" << " = " << reg[0] << endl;
    cout << hex << "$at" << " = " << reg[1] << endl;
    cout << hex << "$v0" << " = " << reg[2] << endl;
    cout << hex << "$v1" << " = " << reg[3] << endl;
    cout << hex << "$a0" << " = " << reg[4] << endl;
    cout << hex << "$a1" << " = " << reg[5] << endl;
    cout << hex << "$a2" << " = " << reg[6] << endl;
    cout << hex << "$a3" << " = " << reg[7] << endl;
    cout << hex << "$t0" << " = " << reg[8] << endl;
    cout << hex << "$t1" << " = " << reg[9] << endl;
    cout << hex << "$t2" << " = " << reg[10] << endl;
    cout << hex << "$t3" << " = " << reg[11] << endl;
    cout << hex << "$t4" << " = " << reg[12] << endl;
    cout << hex << "$t5" << " = " << reg[13] << endl;
    cout << hex << "$t6" << " = " << reg[14] << endl;
    cout << hex << "$t7" << " = " << reg[15] << endl;
    cout << hex << "$s0" << " = " << reg[16] << endl;
    cout << hex << "$s1" << " = " << reg[17] << endl;
    cout << hex << "$s2" << " = " << reg[18] << endl;
    cout << hex << "$s3" << " = " << reg[19] << endl;
    cout << hex << "$s4" << " = " << reg[20] << endl;
    cout << hex << "$s5" << " = " << reg[21] << endl;
    cout << hex << "$s6" << " = " << reg[22] << endl;
    cout << hex << "$s7" << " = " << reg[23] << endl;
    cout << hex << "$t8" << " = " << reg[24] << endl;
    cout << hex << "$t9" << " = " << reg[25] << endl;
    cout << hex << "$k0" << " = " << reg[26] << endl;
    cout << hex << "$k1" << " = " << reg[27] << endl;
    cout << hex << "$gp" << " = " << reg[28] << endl;
    cout << hex << "$sp" << " = " << reg[29] << endl;
    cout << hex << "$fp" << " = " << reg[30] << endl;
    cout << hex << "$ra" << " = " << reg[31] << endl << endl;


    cout << hex << "$PC" << " = " << pc << endl;
    cout << hex << "$HI" << " = " << hi << endl;
    cout << hex << "$LO" << " = " << lo << endl;
  }
  if(writetxt == 1){
       std::ofstream regfile("reg.txt");

       regfile << hex << "$zero" << " = " << reg[0] << endl;
       regfile << hex << "$at" << " = " << reg[1] << endl;
       regfile << hex << "$v0" << " = " << reg[2] << endl;
       regfile << hex << "$v1" << " = " << reg[3] << endl;
       regfile << hex << "$a0" << " = " << reg[4] << endl;
       regfile << hex << "$a1" << " = " << reg[5] << endl;
       regfile << hex << "$a2" << " = " << reg[6] << endl;
       regfile << hex << "$a3" << " = " << reg[7]<< endl;
       regfile << hex << "$t0" << " = " << reg[8] << endl;
       regfile << hex << "$t1" << " = " << reg[9] << endl;
       regfile << hex << "$t2" << " = " << reg[10] << endl;
       regfile << hex << "$t3" << " = " << reg[11] << endl;
       regfile << hex << "$t4" << " = " << reg[12] << endl;
       regfile << hex << "$t5" << " = " << reg[13] << endl;
       regfile << hex << "$t6" << " = " << reg[14] << endl;
       regfile << hex << "$t7" << " = " << reg[15] << endl;
       regfile << hex << "$s0" << " = " << reg[16] << endl;
       regfile << hex << "$s1" << " = " << reg[17] << endl;
       regfile << hex << "$s2" << " = " << reg[18] << endl;
       regfile << hex << "$s3" << " = " << reg[19] << endl;
       regfile << hex << "$s4" << " = " << reg[20] << endl;
       regfile << hex << "$s5" << " = " << reg[21] << endl;
       regfile << hex << "$s6" << " = " << reg[22] << endl;
       regfile << hex << "$s7" << " = " << reg[23] << endl;
       regfile << hex << "$t8" << " = " << reg[24] << endl;
       regfile << hex << "$t9" << " = " << reg[25] << endl;
       regfile << hex << "$k0" << " = " << reg[26] << endl;
       regfile << hex << "$k1" << " = " << reg[27] << endl;
       regfile << hex << "$gp" << " = " << reg[28] << endl;
       regfile << hex << "$sp" << " = " << reg[29] << endl;
       regfile << hex << "$fp" << " = " << reg[30] << endl;
       regfile << hex << "$ra" << " = " << reg[31] << endl;


       regfile << hex << "$PC" << " = " << pc << endl;
       regfile << hex << "$HI" << " = " << hi << endl;
       regfile << hex << "$LO" << " = " << lo << endl;

       regfile.close();
   }else
       remove("reg.txt");

}
