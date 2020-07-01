.data
	question:	.asciiz	"Qual sua idade? "
	msg1:	.asciiz	"Menor de idade!"
	msg2:	.asciiz	"Maior de idade!"

.text
	li $v0, 4
	la $a0, question
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	li $t0, 18
	
	blt $t1, $t0, less
	bge $t1, $t0, bigger
	
	less:
		li $v0, 4
		la $a0, msg1
		syscall
		li $v0, 10
		syscall
	bigger:
		li $v0, 4
		la $a0, msg2
		syscall
		li $v0, 10
		syscall