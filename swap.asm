.data
	number1: .asciiz "\n enter the first number:" 
	number2: .asciiz "\n enter the second number:"
	swap: .asciiz "\n swapping result:"
	num1: .asciiz "\n the first number:" 
	num2: .asciiz "\n the second number:"
.text
#take first input from user 
	la $a0,number1
	li $v0,4
	syscall 
	li $v0,5 #read int type
	syscall
	move $t1,$v0
#take second input from user 
	la $a0,number2
	li $v0,4
	syscall 
	li $v0,5  #read int type
	syscall
	move $t2,$v0	
#swapping operation
	add $t1,$t1,$t2
	sub $t2,$t1,$t2
	sub $t1,$t1,$t2
#print swapped values
	la $a0,swap
	li $v0,4
	syscall
	la $a0,num1
	li $v0,4
	syscall
	li $v0,1 #write int type
	move $a0,$t1
	syscall
	la $a0,num2
	li $v0,4
	syscall
	li $v0,1 #write int type
	move $a0,$t2 #remainder
	syscall