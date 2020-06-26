# move
# copia os dados do registrador de origem para o registrador destino

.data
.text
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 10
	syscall