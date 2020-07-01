.data
	question:	.asciiz	"Qual sua idade? "
	msg:	.asciiz	"Menor de idade!\n"
	msg1:	.asciiz	"Maior de idade!\n"
	
.text
	.globl	main
	
	main:
		li $v0, 4
		la $a0, question
		syscall
		
		li $v0, 5
		syscall
		
		move $t1, $v0
		
		beq $t1, $zero, exit
		bge	$t1, 18, bigger
		blt	$t1, 18, less
		
		j main
		
		bigger:
			li $v0, 4
			la $a0, msg1
			syscall
			j main
			
		less:
			li $v0, 4
			la $a0, msg
			syscall			
			j main
			
		exit:
			li $v0, 10
			syscall