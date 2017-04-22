/************************************************************ *
 * Importantes definicoes sobre a arquitetura do processador  *
 * MIPS ...                                                   *
 * ********************************************************** */

#ifndef MIPS_ARCH_H
#define MIPS_ARCH_H

  #include <stdint.h>

  /* ********************************************************* *
   *  MACROS para o inicio de cada segmento da memoria do MIPS *
   * ********************************************************* */
  #define TEXT_START  0x00000000
  #define TEXT_END    0x00000044
  #define TEXT_SEG    0x00000000

  #define DATA_START  0x00002000
  #define DATA_SEG    0x00002000

  /* Memoria do simulador */
  #define MEM_SIZE 4096
  int32_t mem[MEM_SIZE];

  /* Registradores disponiveis 8==D */
  #define REG_NUM     32             // $v0, $a0, $a1, ... , $t7, $t8, ..., $ri
  uint32_t reg[REG_NUM], ri;
  int32_t hi, lo, pc;                // $hi, $lo, $pc

  enum OPCODES {
    ADDI=0x08, ANDI=0x0C, ORI=0x0D, XORI=0x0E, SLTI=0x0A, SLTIU=0x0B, ADDIU=0x09,
    J=0x02, JAL=0x03, BEQ=0x04, BGTZ=0x07, BLEZ=0x06, BNE=0x05, LB=0x20,
    LBU=0x24, LH=0x21,
    LHU=0x25, LW=0x23,SB=0x28, SH=0x29, SW=0x2B, LUI=0x0F
  };

  enum FUNCT {
    ADD=0x20, SUB=0x22, DIV=0x1A, MULT=0x18, AND=0x24, OR=0x25, NOR=0x27,
    SLT=0x2A, SLL=0x00, SRL=0x02, SRA=0x03,
    MFHI=0x10, MFLO=0x12, XOR=0x26,
    JR=0x08, SYSCALL=0x0C
  };


#endif
