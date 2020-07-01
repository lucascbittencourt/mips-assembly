.data
	question:	.asciiz	"Digite um número: "
	msg:	.asciiz	"Saindo..."
.text
	.globl main
	
	main:
		li $v0, 4
		la $a0, question
		syscall
	
		li $v0, 5
		syscall
	
		move $t0, $v0
		beq $t0, $zero, exit
		j main
	
	exit:
		li $v0, 4
		la $a0, msg
		syscall
		li $v0, 10
		syscall