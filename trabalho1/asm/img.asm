#=============================================================================#
#          Trabalho 1 - Organizacao e arquitetura de Computadores             #
#              Marcelo de Araujo Lopes Junior - 150016794                     #
#               Pedro Henrique Pires Egler - 150044615                        #
#                     Luiza Amanajas - 160056659                              #
#=============================================================================#

.data

image_name:     .asciiz "lenaeye.raw"
address: 	      .word   0x10040000	    # endereco do bitmap display na memoria
buffer:		      .word   0		            # configuracao default do MARS
size:		        .word	  4096		        # numero de pixels da imagem
str_size:       .word   21              # tamanho da string padrao
menu_str:       .asciiz "\nEscolha a opcao desejada:\n1.  get_point\n2.  draw_point\n3.  draw_empty_rectangle\n4.  convert_negative\n5.  load_image\n6.  Exit\n\n"
load_image_str: .asciiz "Digite o nome da imagem: "
get_point_str1:  .asciiz "Digite o valor de X:"
get_point_str2:  .asciiz "Digite o valor de Y:"
print_int:      .word   1
print_str:      .word   4
read_int:       .word   5
read_str:       .word   8
value_RGB_max:	.byte	0xFF

.text
  jal menu

  li $v0 10		# end program
  syscall

# APRESENTA O MENU PARA O USUARIO :
#
#     Escolha a opcao :
#         1. get_point
#         2. draw_point
#         ...
#         6. Exit
#
#  Utiliza do syscall para realizar operacoes de I/O
#   No caso para apresentar para o usuario o menu
#   de opcoes possiveis
menu:

  lw    $v0, print_str        # preparando syscall para imprimir a string do menu
  la    $a0, menu_str         # string do menu
  syscall
  lw    $v0, read_int         # prepara o syscall para pegar a opcao do usuario
  syscall                     # $v0 contem o valor lido
  beq    $v0, 1, get_point              # if $v0 == 1 then get_point
  beq    $v0, 2, draw_point             # if $v0 == 2 then draw_point
  beq    $v0, 3, draw_empty_rectangle   # if $v0 == 3 then draw_empty_rectangle
  beq    $v0, 4, convert_negative       # if $v0 == 4 then convert_negative
  beq    $v0, 5, load_image             # if $v0 == 5 then load_image

  jr $ra

# DOCUMENTACAO DA ROTINA
#    X = numero da coluna onde o pixel esta
#    Y = numero da linha onde o pixel esta
#    portanto para acessarmos o valor do pixel a prtir do endereco inicial
#    precisamos ir ate a linha Y  e a coluna X fazendo fazendo:
#    address + Y*256 + X*4
#
#    $t0 --> possuira o valor de X
#    $t1 --> possuira o valor de Y
#
#
get_point:
  # pede a entrada para o usuario
  lw    $v0, print_str      # prepara o syscall para mostrar uma string
  la    $a0, get_point_str1
  syscall
  lw    $v0, read_int       # espera a entrada de um inteiro
  syscall
  move   $t0, $v0           # $t0 = v0 = X

  # pede a entrda do segundo inteiro
  lw    $v0, print_str      # prepara o syscall para mostrar uma string
  la    $a0, get_point_str2
  syscall
  lw    $v0, read_int       # espera a entrada de um inteiro
  syscall
  move   $t1, $v0           # $t1 = v0 = Y

  lw   $t3, address         # $t3 = address (0x10040000)

  li    $t2, 256            # $t2 = 256
  mult  $t1, $t2            # $t1 * 256 = Hi and Lo registers (provevelmente so usaremos Lo)
  mflo  $t4                 # copy Lo to t4 = Y*256
  li    $t2, 4              # $t2 = 4
  mult  $t0, $t2            # t0 * 4 = Hi and Lo registers
  mflo  $t5                 # copy Lo to t5 = X*4

  # vamos para o endereco desejado em $t3
  add    $t3, $t3, $t4      # $t3 += $t4
  add    $t3, $t3, $t5      # $t3 += $t5

  #pegamos o valor do ponto do endereco apontado por t3 e armazenamos em t4
  sw     $t4, 0($t3)        # $t4 = *t3

  #pegamos a componente R fazendo um and com t4 e 0x00FF0000
  li     $t2, 0x00FF0000              # $t2 = 0x00FF0000
  and    $t5, $t4, $t2
  srl    $t5, $t5, 16

  lw    $v0, print_int    # prepara o syscall para imprimir um inteiro
  move  $a0, $t5          #
  syscall

  # print new line
  addi $a0, $0, 0xA #ascii code for LF, if you have any trouble try 0xD for CR.
  addi $v0, $0, 0xB #syscall 11 prints the lower 8 bits of $a0 as an ascii character.
  syscall

  #pegamos a componente G fazendo um and com t4 e 0x0000FF00
  li     $t2, 0x0000FF00              # $t2 = 0x0000FF00
  and    $t5, $t4, $t2
  srl    $t5, $t5, 8

  lw    $v0, print_int    # prepara o syscall para imprimir um inteiro
  move  $a0, $t5          #
  syscall

  # print new line
  addi $a0, $0, 0xA #ascii code for LF, if you have any trouble try 0xD for CR.
  addi $v0, $0, 0xB #syscall 11 prints the lower 8 bits of $a0 as an ascii character.
  syscall

  #pegamos a componente B fazendo um and com t4 e 0x000000FF
  li     $t2, 0x000000FF              # $t2 = 0x000000FF
  and    $t5, $t4, $t2

  lw    $v0, print_int    # prepara o syscall para imprimir um inteiro
  move  $a0, $t5          #
  syscall


  j    menu        # jump to menu


# DOCUMENTACAO DA ROTINA
#
#
#
#
#
draw_point:

  j    menu        # jump to menu

# DOCUMENTACAO DA ROTINA
#
#
#
#
#
draw_empty_rectangle:

  j    menu        # jump to menu

# DOCUMENTACAO DA ROTINA
# t6: ponteiro para pixel atual
# t1: valor maximo de rgb para realizar o negativo
# t2: intermediario para valor de cada elemento de cor
# t3: contador
# t7: intermediario 2 para valor de cada elemento de cor
# s0: numero de pixels
# v0: novo pixel

convert_negative:
  lw	$t6, address
  
  li	$t3, 0
  li	$s0, 255
  while:
  	bgt	$t3, $s0, exit 
  	lw	$t0, ($t6)		#guarda o pixel em t0
  	lw	$t1, max_RGB_value	#guarda 255 em t1
  	sll	$t1, $t1, 16		#shift 255 16 bits para a esquerda
  	and	$t2, $t0, $t1		#faz and do valor do pixel para obter o segundo byte (valor R)
  	sub	$v0, $t1, $t2		#guarda o novo pixel em v0, subtraindo o valor R do pixel de 255 para obter o negativo
  	srl	$t1, $t1, 8		#shift 255 para os proximos 8 bits (valor G)
  	and	$t2, $t0, $t1		
  	sub	$t7, $t1, $t2		#subtrai o valor G do pixel de 255 para obter o negativo
  	add	$v0, $t7, $v0		#adiciona o valor a v0
  	srl	$t1, $t1, 8		#shift 255 para os proximos 8 bits (valor B)
 	and	$t2, $t0, $t1
  	sub	$t7, $t1, $t2
  	add	$v0, $t7, $v0
  
  	sw	$v0, ($t6)		#salva novo pixel
  	addi  	$t6, $t6, 32		#passa para o proximo pixel
  	addiu	$t3, $t3, 1		#aumenta contador
  	
  	j while
  	
  
  exit: 
  	j    menu        # jump to menu

#-------------------------------------------------------------------------
# Funcao load_image: carrega uma imagem em formato RAW RGB para memoria
# Formato RAW: sequencia de pixels no formato RGB, 8 bits por componente
# de cor, R o byte mais significativo
#
# Parametros:
#  $a0: endereco do string ".asciiz" com o nome do arquivo com a imagem
#  $a1: endereco de memoria para onde a imagem sera carregada
#  $a2: endereco de uma palavra na memoria para utilizar como buffer
#  $a3: tamanho da imagem em pixels
#
# A função foi implementada ...

load_image:
  lw    $v0, print_str        # preparando syscall para imprimir a string
  la    $a0, load_image_str   # string para leitura da imagem
  syscall
  #leitura do nome do arquivo (string)
  lw $v0, read_str    # $v0 = 8
  la $a0, image_name  # address
  lw $a1, str_size    # load string max size
  syscall

  # carrega imagem --------------------
  lw $a1, address
  la $a2, buffer
  lw $a3, size

  # salvar parametros da funcao nos termporarios
  move $t7, $a0	     # nome do arquivo
  move $t8, $a1      # endereco de carga
  move $t9, $a2	     # buffer para leitura de um pixel do arquivo

  li   $v0, 13       # system call para abertura de arquivo
  li   $a1, 0        # Abre arquivo para leitura (parâmtros são 0: leitura, 1: escrita)
  li   $a2, 0        # modo é ignorado
  syscall            # abre um arquivo (descritor do arquivo é retornado em $v0)
  move $t6, $v0      # salva o descritor do arquivo

  move $a0, $t6      # descritor do arquivo
  move $a1, $t9      # endereço do buffer
  li   $a2, 3        # largura do buffer

  load_image_loop:

    beq  $a3, $zero, close_file

    li   $v0, 14       # system call para leitura de arquivo
    syscall            # lê o arquivo
    lw   $t0, 0($a1)   # lê pixel do buffer
    sw   $t0, 0($t8)   # escreve pixel no display
    addi $t8, $t8, 4   # próximo pixel
    addi $a3, $a3, -1  # decrementa countador

    j load_image_loop

  # fecha o arquivo
  close_file:
    li   $v0, 16       # system call para fechamento do arquivo
    move $a0, $t6      # descritor do arquivo a ser fechado
    syscall            # fecha arquivo

  j    menu        # jump to menu
