#include "mips.hpp"
/* ************************************************* *
 *  implementacao das funcoes descritas no mips.h    *
 * ************************************************* */

uint32_t opcode, rs, rt, rd, shamt, funct, k16, k26;  // campos da instrucao
bool EXIT = false;                                    // flag para sair da execucao
int32_t sign_ext16(int32_t a);

void fetch(){
  ri = mem[pc/4];
  pc += 4;
}

void decode(){
  uint32_t opcode_mask = 0xFC000000;
  uint32_t rs_mask = 0x03E00000;
  uint32_t rt_mask = 0x001F0000;
  uint32_t rd_mask = 0x0000F800;
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
      reg[rt] = reg[rs] + ((int32_t) k16) << 16 >> 16;
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
      pc = (uint32_t)((pc-4) & 0xC0000000) + (k26 << 2);
      break;
    case JAL:
      reg[31] = pc;
      pc = ((pc-4) & 0xC0000000) + (k26 << 2);
      break;
    case BEQ:
      if(reg[rt] == reg[rs]){
        pc += (sign_ext16(k16) << 2);
      }
      break;
    case BGTZ:
      if(reg[rs] > 0){
        pc += (sign_ext16(k16) << 2);
      }
      break;
    case BLEZ:
      if(reg[rt] < 0){
        pc = (uint32_t)((int32_t)pc +  (((int32_t)(k16 << 16))>>16));
      }
      break;
    case BNE:
      if(reg[rt] != reg[rs]){
        pc = (uint32_t)((int32_t)pc +  (((int32_t)(k16 << 16))>>16));
      }
      break;
    case LB:
      reg[rt] = ((mem[(reg[rs] + k16)/4]) << 24) >> 24;
      break;
    case LBU:
      reg[rt] = (uint32_t)((mem[(reg[rs] + k16)/4]) & 0x000000FF);
      break;
    case LH:
      reg[rt] = ((mem[(reg[rs] + k16)/4]) << 16) >> 16;
      break;
    case LHU:
      reg[rt] = (uint32_t)((mem[(reg[rs] + k16)/4]) & 0x0000FFFF);
      break;
    case LW:
      memcpy(&reg[rt], &mem[(reg[rs]+k16)/4], 4);
      break;
    case SB:
       memcpy(&mem[(reg[rs] + k16)/4],&reg[rt],1);
       break;
    case SH:
       memcpy(&mem[(reg[rs] + k16)/4],&reg[rt],2);
       break;
    case SW:
       memcpy(&mem[(reg[rs] + k16)/4],&reg[rt],4);
       break;
    case LUI:
      //code
      break;
  }
  if (opcode == 0) {
    int32_t AUX;
    int64_t prod;
    switch (funct) {
      case ADD:
        reg[rd] = reg[rs] + reg[rt];
        break;
      case SUB:
        reg[rd] = reg[rs] - reg[rt];
        break;
      case DIV:
        lo = (int32_t) reg[rs]/reg[rt];
        hi = reg[rs]%reg[rt];
        break;
      case MULT:
        prod = reg[rs] * reg[rt];
        hi = prod >> 32;
        lo = (prod & 0x00000000FFFFFFFF);
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
            cout << reg[4];
            break;
          case 4:
            AUX = 0;
            while(mem[reg[4]/4 + AUX] != 0){
              uint32_t seg = mem[reg[4]/4 + AUX];
              char chars[5];
              chars[4] = '\0';
              chars[3] = (seg >> 24) & 0xFF;
              chars[2] = (seg >> 16) & 0xFF;
              chars[1] = (seg >> 8) & 0xFF;
              chars[0] = seg & 0xFF;

              cout << chars;
              AUX++;
            }
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
  }while(pc < DATA_START);

  step();

  return;
}

void dump_mem(int start, int end, char format){

   std::ofstream memfile("mem.txt");

   cout << endl << "MEMORY" << endl;
   for (unsigned int i = start; i <= end; i+=4) {
     if (format == 'h') {
       cout << hex << i << " = " << hex << mem[i/4] << endl;
       if(writetxt == 1){
           memfile << hex << i << " = " << hex << mem[i/4] << endl;
       }
     }
     else{
       cout << hex << i << " = " << dec << (uint32_t)mem[i/4] << endl;
     }
   }

   if(writetxt == 1)
       memfile.close();
   else
       remove("mem.txt");

 }

void dump_reg(char format){

  cout << endl << "REGISTERS" << endl;
  if (format == 'd') {
    cout << dec << "$zero" << " = " << reg[0] << endl;
    cout << dec << "$at" << " = " << reg[1] << endl;
    cout << dec << "$v0" << " = " << reg[2] << endl;
    cout << dec << "$v1" << " = " << reg[3] << endl;
    cout << dec << "$a0" << " = " << reg[4] << endl;
    cout << dec << "$a1" << " = " << reg[5] << endl;
    cout << dec << "$a2" << " = " << reg[6] << endl;
    cout << dec << "$a3" << " = " << reg[7] << endl;
    cout << dec << "$t0" << " = " << reg[8] << endl;
    cout << dec << "$t1" << " = " << reg[9] << endl;
    cout << dec << "$t2" << " = " << reg[10] << endl;
    cout << dec << "$t3" << " = " << reg[11] << endl;
    cout << dec << "$t4" << " = " << reg[12] << endl;
    cout << dec << "$t5" << " = " << reg[13] << endl;
    cout << dec << "$t6" << " = " << reg[14] << endl;
    cout << dec << "$t7" << " = " << reg[15] << endl;
    cout << dec << "$s0" << " = " << reg[16] << endl;
    cout << dec << "$s1" << " = " << reg[17] << endl;
    cout << dec << "$s2" << " = " << reg[18] << endl;
    cout << dec << "$s3" << " = " << reg[19] << endl;
    cout << dec << "$s4" << " = " << reg[20] << endl;
    cout << dec << "$s5" << " = " << reg[21] << endl;
    cout << dec << "$s6" << " = " << reg[22] << endl;
    cout << dec << "$s7" << " = " << reg[23] << endl;
    cout << dec << "$t8" << " = " << reg[24] << endl;
    cout << dec << "$t9" << " = " << reg[25] << endl;
    cout << dec << "$k0" << " = " << reg[26] << endl;
    cout << dec << "$k1" << " = " << reg[27] << endl;
    cout << dec << "$gp" << " = " << reg[28] << endl;
    cout << dec << "$sp" << " = " << reg[29] << endl;
    cout << dec << "$fp" << " = " << reg[30] << endl;
    cout << dec << "$ra" << " = " << reg[31] << endl << endl;

    cout << dec << "$PC" << " = " << pc << endl;
    cout << dec << "$HI" << " = " << hi << endl;
    cout << dec << "$LO" << " = " << lo << endl;
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

int32_t sign_ext16(int32_t a){
  int32_t res = a;
  if ( (a & 0x00008000) == 0x00008000) {
    return (a | 0xFFFF0000);
  }
  else
    return (a & 0x0000FFFF);
}
