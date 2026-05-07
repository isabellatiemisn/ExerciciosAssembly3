.data
	msg1:.asciiz"\nDigite o valor do salário atual: "
	msg2:.asciiz"\nEsse é o valor do salário novo: "
.text
	#Entrada
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#SalárioNovo
	li $t2, 0
	add $t2, $t0, 0
	mul $t1, $t2, 25
	div $t1, $t1, 100
	add $t1, $t1,$t0
	
	#print
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t1, 0
	syscall