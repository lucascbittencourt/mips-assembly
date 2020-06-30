# ble
# faz o desvio se o valor do primeiro for menor ou igual ao segundo registrador
# bgt
# faz o desvio se o valor do primeiro for maior que o segundo

.data
	question1:	.asciiz	"Digite o primeiro número: "
	question2:	.asciiz	"Digite o segundo número: "
	first_less:	.asciiz	"Primeiro número é menor ou igual ao segundo"
	second_less:	.asciiz	"O primeiro número é maior que o segundo"
	
.text
	li $v0, 4
	la $a0, question1
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	li $v0, 4
	la $a0, question2
	syscall
	
	li $v0, 5
	syscall
	
	move $t2, $v0
	
	ble $t1, $t2, if_first_less
	bgt $t1, $t2, if_second_less
	
	if_first_less:
		li $v0, 4
		la $a0, first_less
		syscall
		li $v0, 10
		syscall
		
	if_second_less:
		li $v0, 4
		la $a0, second_less
		syscall
		li $v0, 10
		syscall