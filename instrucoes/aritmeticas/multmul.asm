# mult e mul
# mult trabalha com 2 registradores e o resultado vai para o registrador lo
# mul trabalha com 3 registradores (registrador destino e 2 registradores que serão multiplicados)

.data
.text
	li $t0, 3
	li $t1, 2
	mult $t0, $t1 # lo = $t0 * $t1
	mflo $t2
	mul $t3, $t2, $t1 # $t3 = $t2 * $t1
	li $v0, 10
	syscall