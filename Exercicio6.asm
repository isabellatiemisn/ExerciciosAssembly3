.data 
	msg1:.asciiz"\nDigite um número: "
	msg2:.asciiz"\nDigite outro número: "
	msg3:.asciiz"\nOs números são iguais"
	msg4:.asciiz"\nOs números são diferentes"
	msg5:.asciiz"\nEsse é o maior número: "
	msg6:.asciiz"\nEsse é o menor número: "
.text
main:
	#Entrada 1
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0	
	
	#Entrada 2
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#Operação
	beq $t0,$t1,iguais
	bgt $t0,$t1,diferentes
	j menor
	
iguais:
	li $v0, 4
	la $a0, msg3
	syscall
	j fim

menor:
	li $t2, 0
	add $t2,$t0,0
	add $t0,$t1,0
	add $t1,$t2,0
	
diferentes: 
	#Diferentes
	li $v0, 4
	la $a0, msg4
	syscall
	
	#MaiorValor
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	#MenorValor
	li $v0, 4
	la $a0, msg6
	syscall
	li $v0, 1
	add $a0,$t1,0
	syscall
fim: