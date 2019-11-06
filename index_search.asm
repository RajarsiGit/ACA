.data

  prompt1: .asciiz "Enter number of elements - "
  prompt2: .asciiz "Enter the elements - "
  ind: .asciiz "\n enter index you want to search - "
  val:.asciiz "\n enter the value of the corresponding index - "
  prompt4: .asciiz " "
  yes:.asciiz "yes match found!!!"
  no:.asciiz "no match found!!!"
  array: .space 100 	#saving space for 20 integer elements - 20x4=80 bytes
 
 .text

	la $a0,prompt1
	li $v0,4	#system call code to print string whose address is in $a0
	syscall
	
	li $v0,5	#system call code to read integer into $v0
	syscall
	move $t0,$v0	#$t0 contains upper bound 
	
	la $a0,ind
	li $v0,4
	syscall
	
	li $v0,5
	syscall
	move $s0,$v0	#index to be searched
	
	la $a0,val
	li $v0,4
	syscall
	
	li $v0,5
	syscall
	move $s1,$v0	#value to be searched
	
	la $a0,prompt2
	li $v0,4
	syscall
	
	li $t3,0	#base address
	li $t4,0	#loop counter
	input: bge $t4,$t0,search	#branch on $t4 greater or equal to $t0 to proceed
		
		li $v0,5
		syscall
		sw $v0,array( $t3 )
		
		addi $t3,$t3,4	#next address calculation
		addi $t4,$t4,1	#increment loop counter
		j input
	search:
	#sklkhrnlkh
	end: li $v0,10	#program code for exit system call
		syscall
