.data
	msg1:.asciiz"\nDigite um número:"
	msg2:.asciiz"\nEssa é a centena do número:"
	msg3:.asciiz"\nEssa é a dezena do número:"
	msg4:.asciiz"\nEssa é a unidade do número:"	
.text
entrada:
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0	
	blt $t0, 100, entrada
	bgt $t0, 999, entrada

centena:
	li $t1, 0
	div $t1, $t0, 100
dezena:
	li $t2, 0
	div $t2,$t0,10
	rem $t2,$t2,10
unidade: 
	li $t3, 0
	rem $t3, $t0, 10
fim:
	#Centena
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	#Dezena
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	#Unidade
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 1
	add $a0, $t3, 0
	syscall