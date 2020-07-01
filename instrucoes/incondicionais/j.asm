# j
# faz saltos para outros blocos de instrução

.data
	number: .asciiz "10\n"
.text
.globl main

main:
	li $v0, 4
	la $a0, number
	syscall
	j main # loop infinito
