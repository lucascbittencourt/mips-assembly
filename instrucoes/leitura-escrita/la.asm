# la

# load address (le o endereço de memoria de uma variavel)
# atribui o valor armazenado numa variavel diretamente num registrador

.data
	msg: .asciiz "Hello world!"
	
.text
	la $a0, msg
	li $v0, 4
	syscall
	
	li $v0, 10
	syscall