.data
	msg1:.asciiz"\nDigite um número para ser o valor 1: "
	msg2:.asciiz"\nDigite outro número para ser o valor 2: "
	msg3:.asciiz"\nEsse é o novo valor 1: "
	msg4:.asciiz"\nEsse é o novo valor 2: "
.text
	#valor1
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#valor2
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#troca
	li $t2, 0
	add $t2, $t0, 0
	add $t0, $t1, 0
	add $t1, $t2, 0
	
	#print 1
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	#print 2
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 1
	add $a0, $t1, 0
	syscall