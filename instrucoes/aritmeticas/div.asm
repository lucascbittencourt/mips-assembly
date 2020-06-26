# div
# a instrução div trabalha com 3 registradores e pode opcionalmente ser usada com os registradores hi e lo
# se utilizarmos somente 2 registradores para o cálculo o assembly usará os registradores hi e lo para registrar o calculo
# onde o registrador hi armazena o resto da divisão e o registrador lo o resultado da divisão

.data
.text
	li $t0, 5 
	li $t1, 2
	div $t0, $t1
	mflo $t2
	mfhi $t3
	li $v0, 10
	syscall
	