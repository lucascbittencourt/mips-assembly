# lb (load byte) e sb (save byte)
# tratam dados do tipo caracter
# armazaena o código da representação dos caracteres na tabela ASCII

.data
	var: .byte 'A'

.text
	lb $t0, var
	li $t1, 97
	sb $t1, var
	li $v0, 10
	syscall