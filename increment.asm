.data
result1: .asciiz "\nThe increment count is: "
space: .asciiz ","
result2: .asciiz "\nThe decrement count is: "
#space1: .asciiz ","

.text
addi $t0,$zero,0
li $v0,4
la $a0,result1
syscall
while:
bgt $t0,9,exit
jal print
addi $t0,$t0,1

j while

exit:
li $v0,10
syscall

print: 
li $v0,1
add $a0,$t0,$zero
syscall

li $v0,4
la $a0,space
syscall
jr $ra



addi $t1,$zero,9
li $v0,4
la $a0,result2
syscall

while2:
blt $t1,0,exit2
jal print2
subi $t1,$t1,1

j while2

exit2:
li $v0,10
syscall

print2: 
li $v0,1
add $a0,$t1,$zero
syscall

li $v0,4
la $a0,space
syscall
jr $ra


