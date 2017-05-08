.text 

TEST:	addi $t0, $zero, -4
	addi $t1, $zero, 4
	addi $t2, $zero, 15
	mult $t0, $t1
	mfhi $t3
	mflo $t4
	div  $t2,$t1 
	mfhi $t3
	mflo $t4
	slti $t5, $t0, -1	#t0 < -1 then t5 = 1 , true
	
	li   $v0, 10          # system call for exit
	syscall               # we are out of here.
	
.data