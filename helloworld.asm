.data

msg: .asciiz "Hello world"

.text
li $v0, 4 # imprime string
la $a0, msg # $a0 recebe msg
syscall

li $v0, 10 # prepara o processador para finalizar
syscall