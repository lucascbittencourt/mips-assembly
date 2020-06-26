# sw
# construindo um vetor de inteiros

.data
	vetor: .space 12 # suporta 3 numeros (12 bits)

.text
	la $t0, vetor
	li $t1, 5
	sw $t1, 0($t0) # registra o primeiro elemento
	li $t1, 13
	sw $t1, 4($t0) # registra o segundo elemento
	li $t1, -7
	sw $t1, 8($t0) # registra o terceiro numero
	li $v0, 10
	syscall