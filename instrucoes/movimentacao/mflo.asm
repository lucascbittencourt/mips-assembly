# mflo
# copia a informação que esta o registrado lo para o registrador destino

.data
.text
	li $t1, 18
	li $t2, 3
	div $t1, $t2
	mflo $t0
	li $v0, 10
	syscall