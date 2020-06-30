# bge
# a instrução bge faz o desvio se o valor do primeiro for maior ou igual que o valor do segundo registrador
# blt
# a instrução blt faz o desvio se o valor do primeiro for menor que o valor do segundo registrador

.data
	question1:		.asciiz	"Digite o primeiro número: "
	question2:		.asciiz	"Digite o segundo número: "
	first_bigger:	.asciiz	"O primeiro número é maior!\n"
	second_bigger:	.asciiz	"O segundo número é maior!\n"

.text
	li $v0, 4
	la $a0, question1
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, question2
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	bge $t0, $t1, if_first_bigger
	blt $t0, $t1, if_second_bigger
	
	if_first_bigger:
		li $v0, 4
		la $a0, first_bigger
		syscall
		
		li $v0, 10
		syscall
	
	if_second_bigger:
		li $v0, 4
		la $a0, second_bigger
		syscall
		
		li $v0, 10
		syscall	

	
	