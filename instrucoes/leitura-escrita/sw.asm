# sw (save)
# grava um dado de um registrador diretamente na memoria ram
# é o inverso a instrução lw

.data
	age: .word 0
	
.text
	# solicita ao usuario digitar um valor
	li $v0, 5 # le um numero inteiro
	syscall
	move $t0, $v0 # $t0 recebe $v0
	
	# salva na variavel age o numero digitado
	sw $t0, age
	
	# encerra o programa
	li $v0, 10
	syscall