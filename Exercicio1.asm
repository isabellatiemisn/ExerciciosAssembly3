.data
	msg1:.asciiz"\nDigite um valor em US$ para converter em R$: "
	msg2:.asciiz"\nEsse é o valor em real(R$): "
.text
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $t1, 5
	li $t2, 0
	div $t2, $t0, $t1
	
	#print
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t2, 0
	syscall