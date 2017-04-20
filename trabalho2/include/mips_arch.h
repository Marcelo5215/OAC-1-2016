/************************************************************ *
 * Importantes definicoes sobre a arquitetura do processador  *
 * MIPS ...                                                   *
 * ********************************************************** */

#ifdef MIPS_ARCH_H
#define MIPS_ARCH_H

  #include <cstdint>

  /* ********************************************************* *
   *  MACROS para o inicio de cada segmento da memoria do MIPS *
   * ********************************************************* */
  #define TEXT_START  0x00000000
  #define TEXT_END    0x00000044
  #define TEXT_SEG    0x00000000

  #define DATA_START  0x00002000
  #define DATA_END    0x0000204C
  #define DATA_SEG    0x00002000

  /* Memoria do simulador */
  #define MEM_SIZE 4096
  int32_t mem[MEM_SIZE];

  /* Registradores disponiveis */
  #define REG_NUM     32             // $v0, $a0, $a1, ... , $t7, $t8, ...
  uint32_t reg[REG_NUM];
  #define HI_LO_NUM   2              // $hi, $lo
  int32_t hilo[HI_LO_NUM];









#endif
