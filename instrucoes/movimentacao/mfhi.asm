# mfhi
# copia a informação que esta no registrador hi para o registrador destino

.data
.text
	li $t1, 5
	li $t2, 2
	div $t1, $t2
	mfhi $t0
	li $v0, 10
	syscall