/* ******************************************************* *
 *  Modulo para a implementacao de funcoes de simulacao    *
 *  do MIPS ...                                            *
 * ******************************************************* */

#ifndef MIṔS_H
#define MIPS_H

  #include  "mips_arch.h"
  #include  <cstdint>
  #include  <fstream>

  /* ************************************************ *
   *  Arquivos que serao abertos contendo o segmento  *
   *  de texto e de dados do programa, e seus         *
   *  respectivos nomes.                *
   * ************************************************ */
  fstream textf, dataf;
  string  textf_name, dataf_name;



  /* ********************************************************** *
   *  DEFINICAO de Funcoes que serao utilizadas pelo simulador  *
   * ********************************************************** */

  /* ********************************************************************** *
   *  Le uma instrucao, armazena em $ri, e atualiza o $pc para a proxima    *
   *  instrucao ($pc = $pc + 4)                                             *
   * ********************************************************************** */
  void fetch();

  /* ******************************************************************************** *
   * Extrai todos os campos da instrucao                                              *
   * - opcode:	código	da	operação                                                  *
   * - rs:	índice	do	primeiro	registrador	fonte                                   *
   * - rt:	índice	do	segundo	registrador	fonte                                     *
   * - rd:	índice	do	registrador	destino,	que	recebe	o	resultado	da	operação    *
   * - shamt:	quantidade	de	deslocamento	em	instruções	shift	e	rotate            *
   * - funct:	código	auxiliar	para	determinar	a	instrução	a	ser	executada         *
   * - k16:	constante	de	16	bits,	valor	imediato	em	instruções	tipo	I           *
   * - k26:	constante	de	26	bits,	para	instruções	tipo	J                         *
   * ******************************************************************************** */
  void decode();

  /* ************************************************************* *
   *  Executa a instrucao pega por fetch() com os operandos pegos  *
   *  por decode()                                                 *
   * ************************************************************* */
  void execute();

  
  /*
   *
   */
  void step();
  /*
   *
   */
  void run();
  /*
   *
   */
  void dump_mem(int start, int end, char format);
  /*
   *
   */
  void dump_reg(char format);

#endif
