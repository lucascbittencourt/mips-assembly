.data
	km_p:	.asciiz	"Digite o Km percorrido: "
	km_f:	.asciiz " Km faltante"

.text
	li $v0, 4
	la $a0, km_p
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $t1, 15
	sub $t2, $t1, $t0
	
	li $v0, 1
	la $a0, ($t2)
	syscall
	
	li $v0, 4
	la $a0, km_f
	syscall
	
	li $v0, 10
	syscall