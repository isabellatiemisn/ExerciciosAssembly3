.data
	msg1:.asciiz"\nDigite o mês de nascimento: "
	msg2:.asciiz"\nDigite o ano de nascimento: "
	msg3:.asciiz"\nDigite o mês atual: "
	msg4:.asciiz"\nDigite o ano atual: "
	msg5:.asciiz"\nEssa é a idade em meses: "
.text
	#mêsN
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#anoN
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#mêsA
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	#mêsN
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	#AnoEmMês
	mul $t1,$t1,12
	add $t0,$t0,$t1
	mul $t3,$t3,12
	add $t2,$t2,$t3
	
	#Idade
	li $t4, 0
	sub $t4,$t2,$t0
	
	#Print
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t4, 0
	syscall

	