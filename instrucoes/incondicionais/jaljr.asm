# jal (jump a
# faz um salto e retorna para a mesma parte do código

.data
	msg:	.asciiz	"\nFim da contagem..."
	space:	.asciiz	", "

.text
	prog:
		addi $t0, $zero, 0
		
	while:
		bgt $t0, 10, exit	# se for maior do que 10 vai para exit
		jal print_number	# chama a função
		addi $t0, $t0, 1
		j while
	
	exit:
		li $v0, 4
		la $a0, msg
		syscall
		li $v0, 10
		syscall
	
	print_number:
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		
		beq $a0, 10, return_function
		
		li $v0, 4
		la $a0, space
		syscall
		
	return_function:
		jr $ra	# retorna para a função