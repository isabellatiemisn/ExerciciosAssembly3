.data
	msg1:.asciiz"\nDigite o valor de A: "
	msg2:.asciiz"\nDigite o valor de B: "
	msg3:.asciiz"\nDigite o valor de C: "
	msg4:.asciiz"\nExistem duas raízes reais"
	msg5:.asciiz"\nExiste uma raíz real"
	msg6:.asciiz"\nNão existem raízes reais"
.text
main:
	#Entrada A
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#Entrada B
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#Entrada C
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	#Delta
	mul $t1,$t1,$t1
	mul $t0,$t0,4
	mul $t0,$t0,$t2
	sub $t3,$t1,$t0
	
	bgt $t3, 0, DuasRaizes
	beq $t3, 0, UmaRaiz
	blt $t3, 0, ZeroRaiz
	
DuasRaizes:
	li $v0, 4
	la $a0, msg4
	syscall
	j fim

UmaRaiz:
	li $v0, 4
	la $a0, msg5
	syscall
	j fim
ZeroRaiz:
	li $v0, 4
	la $a0, msg6
	syscall

fim: