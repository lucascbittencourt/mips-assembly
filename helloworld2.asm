.data 

msg: .asciiz "Hello world!"

.text
.globl main

main:
li $v0, 4 # atribui a instrução 4 para o registrador $v0 (imprimir string)
la $a0, msg # atribui o valor de msg parao registrador $a0
syscall # executa o codigo

li $v0, 10 # prepara o processador para desligar
syscall # executa