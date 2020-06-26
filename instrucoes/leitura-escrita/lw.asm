# l<tipagem> (load)
# lê um dado na memoria ram e grava num registrador
# a tipagem depende do tipo de constante ou variavel criada

.data
	idade: .word	40

.text
	lw $t0, idade # como a constante é do tipo word, usamos lw
	li $v0, 10
	syscall