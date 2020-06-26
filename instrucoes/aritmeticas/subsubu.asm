# sub e sbu
# a instrução sub, trabalha com 3 registradores
# 2 carregados com dados e um para armazenar a resposta
# subu pode carregar um valor diretamente bastantando ter 1 registrador carregado

.data
.text
	li $t1, 9
	li $t2, 2
	sub $t0, $t1, $t2 # $t0 = $t1 - $t2
	subu $t3, $t0, 1 # $t3 = $t0 - 1
	li $v0, 10
	syscall