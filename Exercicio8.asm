.data
	msg1:.asciiz"\nDigite o valor do produto:"
	msg2:.asciiz"\nDigite o valor da parcela:"
	msg3:.asciiz"\nEssa é a quantidade de parcelas que deverão ser pagas:"
.text
produto:
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	blt $t0, 1000, produto
	bgt $t0, 9999, produto
parcela: 
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0,5
	syscall
	add $t1, $v0, 0
	blt $t1, 100, parcela
	bgt,$t1, 500, parcela
	
#Cáculo
	div $t2, $t0, $t1
	rem $t3, $t0, $t1
	bgt $t3, 0, resto
	j fim
	
resto:
	add $t2, $t2, 1
	
fim:
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t2, 0
	syscall
	