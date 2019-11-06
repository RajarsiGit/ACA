.data
	number1: .asciiz "\n enter the first number:" 
	number2: .asciiz "\n enter the second number:"
	addition: .asciiz "\n addition result:"
	subtraction: .asciiz "\n subtraction result:"
	multiplication: .asciiz "\n multiplication result:"
	division: .asciiz "\n division result:"
	quotient: .asciiz "\n quotient:"
	remainder: .asciiz "\n remainder:"
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
	
	
	#addition operation
	add $t3,$t1,$t2
	
	#print addition
	la $a0,addition
	li $v0,4
	syscall
	li $v0,1 #write int type
	move $a0,$t3
	syscall
	
	#subtraction operation
	sub  $t3,$t1,$t2
	
	#print subtraction
	la $a0,subtraction
	li $v0,4
	syscall
	li $v0,1 #write int type
	move $a0,$t3
	syscall
	
	#multiplication operation
	mult $t1,$t2
	mflo $t3
	mfhi $t4
	
	#print multiplication
	la $a0,multiplication
	li $v0,4
	syscall
	li $v0,1 #write int type
	move $a0,$t3
	syscall
	
	# division operation
	div  $t1,$t2
	mflo $t3	#quo
	mfhi $t4	#rem
	
	#print division
	la $a0,division
	li $v0,4
	syscall
	la $a0,quotient
	li $v0,4
	syscall
	li $v0,1 #write int type
	move $a0,$t3
	syscall
	la $a0,remainder
	li $v0,4
	syscall
	li $v0,1 #write int type
	move $a0,$t4 #remainder
	syscall
	
	
	
	