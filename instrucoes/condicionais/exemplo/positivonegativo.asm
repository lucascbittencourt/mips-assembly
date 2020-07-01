.data
	msg:	.asciiz	"Digite um número: "
	positive:	.asciiz	"Positivo!\n"
	negative:	.asciiz	"Negativo!\n"
	end:	.asciiz	"Fim do programa!\n"

.text
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, exit
	jal verify
	
	verify:
		bgt $t0, $zero, bigger
		blt	$t0, $zero, less
		
	bigger:
		li $v0, 4
		la $a0, positive
		syscall
		j exit
		
	less:
		li $v0, 4
		la $a0, negative
		syscall
		j exit
	
	exit:
		li $v0, 4
		la $a0, end
		syscall
		li $v0, 10
		syscall 