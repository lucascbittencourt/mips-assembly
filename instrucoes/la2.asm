.data
	age: .word 43

.text
	la $t0, age
	li $v0, 10
	syscall