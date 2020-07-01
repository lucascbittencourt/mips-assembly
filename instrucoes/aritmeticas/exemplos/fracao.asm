.data
	x:	.asciiz	"Digite o valor de X: "
	y:	.asciiz	"Digite o valor de Y: "
	z:	.asciiz	"O resultado de X/Y (inteiro) é "
	
.text
	li $v0, 4
	la $a0, x
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	li $v0, 4
	la $a0, y
	syscall
	
	li $v0, 5
	syscall
	
	move $t2, $v0
	
	div $t0, $t1, $2
	
	li $v0, 4
	la $a0, z
	syscall
	
	li $v0, 1
	la $a0, ($t0)
	syscall
	
	li $v0, 10
	syscall