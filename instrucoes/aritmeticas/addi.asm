# addi
# addi <registrador_destino>, <registrador1>, <registrador2>
# os registradores 1 e 2 são os registradores que conterão os numeros para o calculo.
# o registrador destino conterá o resultado da soma dos 2 registradores
# nos podemos passar os numeros diretamente na instrução
# basta apenas carregar 1 registrador e o outro número pode ser colocado diretamente

.data
.text
	li $t1, 10
	addi $t0, $t1, 5
	li $v0, 10
	syscall