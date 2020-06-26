# add
# add <registrador_destino>, <registrador1>, <registrador2>
# os registradores 1 e 2 são os registradores que conterão os numeros para o calculo.
# o registrador destino conterá o resultado da soma dos 2 registradores

.data
.text
	li $t1, 10
	li $t2, 20
	add $t0, $t1, $t2
	li $v0, 10
	syscall