# beq
# a instrução beq faz o desvio condicional caso o conteudo do primeiro e o segundo registrador sejam iguais

# bne
# a instrução faz o oposto da beq

.data
	question:	.asciiz	"Digite um número:"
	is_zero:	.asciiz	"É zero!\n"
	not_zero:	.asciiz	"Não é zero!\n"

.text
	li $v0, 4 # imprimir string
	la $a0, question
	syscall
	
	li $v0, 5 # le um inteiro
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, if_zero
	bne $t0, $zero, if_not_zero
	
	if_zero:
		li $v0, 4
		la $a0, is_zero
		syscall
		li $v0, 10
		syscall
		
	if_not_zero:
		li $v0, 4
		la $a0, not_zero
		syscall
		li $v0, 10
		syscall