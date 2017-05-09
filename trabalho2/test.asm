
.text 

TEST:	
	addi $t0, $zero, -4 #t0 = 0xfffffffc
	addi $t1, $zero, 4  #t1 = 0x00000004
	addi $t2, $zero, 15 #t2 = 0x0000000f
	mult $t0, $t1
	mfhi $t3 #0xffffffff
	mflo $t4 #0xfffffffc
	div  $t2,$t1 
	mfhi $t3 #0x00000003
	mflo $t4 #0x00000003
	slti $t5, $t0, -1	#t0 < -1 then t5 = 1 , true
	sltiu $t5, $t0, 3  #t0 = 0xFFFFFFFC > 3, t5 = 0, false
	addiu $t5, $t5, 0xFFFFFFFE  #t5 = 0xFFFFFFFE
	ori $t5, 0x00000000    #t5 = 0xFFFFFFFE
	andi $t5, 0x00000000   #t5 = 0x00000000
	xori $t5, 0x0000FFFF   #t5 = 0x0000FFFF
	addiu $t5, $t5, 983040 #t5 = 0x000FFFFF
	addi $t0, $zero, 0x00002000
	lb $t5, 0($t0)
	lbu $t5, 0($t0)
	lh $t5, 0($t0)
	lhu $t5, 0($t0)
	lw $t5, 0($t0)
	sb $t5, 0($t0)
	sh $t5, 0($t0)
	sw $t5, 0($t0)
	lui $t0, 0x00002000

	addi $t6, $zero, 0x0000F0F0
	addi $t7, $zero, 0x0F0F00F0
	or  $t6, $t6, $t7 #t6 = 0x0F0FF0F0
	and $t6, $t7, $t6  #t6 = 0x0F0F00F0
	xor $t6, $t7, $t6 #t6 = 0x00000000
	add $t6, $t7, $t6 #t6 = 0x0F0F00F0
	sll $t6, $t6, 4 #t6 = 0xF0F00F00
	sra $t6, $t6, 4 #t6 = 0xFF0F00F0
	srl $t6, $t6, 4 #t6 = 0x0FF0F00F
	slt $t0, $t7, $t6 #true
	nor $t6, $t7, $t6 #t6 = 0xf0000f00
	
	addi $t6, $zero, -1
	addi $t7, $zero, -1

	beq $t6, $t7 BRANCH
	addi $t7, $zero, 40 #vai pular a instrucao
	BRANCH:
	addi $t6, $t6, 1
	blez $t6, BRANCH
	j JUMP
	nor $t6, $t5, $t7 #vai pular a instrucao
JUMP:	jal JAL
	j EXIT 
JAL:
	addi $t6, $zero, 1
	jr $ra

EXIT:
	li   $v0, 10          # system call for exit
	syscall               # we are out of here.

	
.data