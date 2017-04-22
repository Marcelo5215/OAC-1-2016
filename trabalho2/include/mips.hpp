/* ******************************************************* *
 *  Modulo para a implementacao de funcoes de simulacao    *
 *  do MIPS ...                                            *
 * ******************************************************* */

#ifndef MIPS_H
#define MIPS_H

  #include  "mips_arch.hpp"
  #include  <stdint.h>
  #include  <iostream>
  #include  <fstream>
  #include  <stdio.h>
  #include  <cstring>

  using namespace std;

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

  /* ****************************************************************************** *
   * Extrai todos os campos da instrucao                                            *
   * - opcode:	código	da	operação                                                *
   * - rs:	índice	do	primeiro	registrador	fonte                                 *
   * - rt:	índice	do	segundo	registrador	fonte                                   *
   * - rd:	índice	do	registrador	destino,	que	recebe	o	resultado	da	operação  *
   * - shamt:	quantidade	de	deslocamento	em	instruções	shift	e	rotate          *
   * - funct:	código	auxiliar	para	determinar	a	instrução	a	ser	executada       *
   * - k16:	constante	de	16	bits,	valor	imediato	em	instruções	tipo	I         *
   * - k26:	constante	de	26	bits,	para	instruções	tipo	J                       *
   * ****************************************************************************** */
  void decode();

  /* ************************************************************* *
   *  Executa a instrucao pega por fetch() com os operandos pegos  *
   *  por decode()                                                 *
   * ************************************************************* */
  void execute();


  /* ******************************************** *
   *  step()	=>	fetch(),	decode(),	execute()   *
   * ******************************************** */
  void step();

  /* ******************************************************************* *
   * Essa	função	executa	o	programa	até	encontrar	uma	chamada	de       *
   * sistema	para	encerramento,	ou	até	o	pc	ultrapassar	o	limite     *
   * do	segmento	de	código	(2k	words).	                               *
   * ******************************************************************* */
  void run();

  /* ************************************************************ *
   *  Imprime o conteudo da memoria a partir do endereco start    *
   *  ate o endereco end, em hexadecimal (format = h), ou         *
   *  decimal (format = d).                                       *
   * ************************************************************ */
  void dump_mem(int start, int end, char format);

  /* ************************************************************************ *
   *  Essa	 função	 imprime	 o	 conteúdo	 dos	 registradores	 do	 MIPS,  *
   * incluindo	 o	 banco	 de	 registradores	e	os	registradores	pc,	hi	e	*
   * lo.	O	formato	pode	ser	em	hexa	(‘h’)	ou	decimal	(‘d’).	            *
   * ************************************************************************ */
  void dump_reg(char format);

#endif
