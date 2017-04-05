#-------------------------------------------------------------------------
#		Organização e Arquitetura de Computadores - Turma C 
#			Trabalho 1 - Programação Assembler
#
# Nome: 				Matrícula: 
# Nome: 				Matrícula: 
# Nome: 				Matrícula: 

.data

image_name:   	.asciiz "lenaeye.raw"   # nome da imagem a ser carregada
address: 	.word   0x10040000	# endereco do bitmap display na memoria	
buffer:		.word   0		# configuracao default do MARS
size:		.word	4096		# numero de pixels da imagem


.text

  # carrega imagem --------------------

  la $a0, image_name
  lw $a1, address
  la $a2, buffer
  lw $a3, size
  jal load_image
  
  li $v0 10		# end program
  syscall

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
  
loop:  

  beq  $a3, $zero, close
  
  li   $v0, 14       # system call para leitura de arquivo
  syscall            # lê o arquivo
  lw   $t0, 0($a1)   # lê pixel do buffer	
  sw   $t0, 0($t8)   # escreve pixel no display
  addi $t8, $t8, 4   # próximo pixel
  addi $a3, $a3, -1  # decrementa countador
  
  j loop
  
  # fecha o arquivo 
close:  
  li   $v0, 16       # system call para fechamento do arquivo
  move $a0, $t6      # descritor do arquivo a ser fechado
  syscall            # fecha arquivo
  	
  jr $ra
  
  
  
