.data
	l1:	.asciiz	"Inform o 1 lado do retangulo em cm: "
	l2:	.asciiz	"Inform o 2 lado do retangulo em cm: "
	l3:	.asciiz	"Inform o 3 lado do retangulo em cm: "
	l4:	.asciiz	"Inform o 4 lado do retangulo em cm: "
	perimetro:	.asciiz	"O perimetro do retangulo é: "
	
.text
	li $v0, 4
	la $a0, l1
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	li $v0, 4
	la $a0, l2
	syscall
	
	li $v0, 5
	syscall
	
	move $t2, $v0
	
	add $t5, $t1, $t2
	
	li $v0, 4
	la $a0, l3
	syscall
	
	li $v0, 5
	syscall
	
	move $t3, $v0
	
	li $v0, 4
	la $a0, l4
	syscall
	
	li $v0, 5
	syscall
	
	move $t4, $v0
	
	add $t6, $t3, $t4
	add $t0, $t5, $t6
	
	li $v0, 4
	la $a0, perimetro
	syscall
	
	li $v0, 1
	la $a0, ($t0) # conteudo de $t0 sera atribuido a $a0
	syscall
	
	li $v0, 10
	syscall