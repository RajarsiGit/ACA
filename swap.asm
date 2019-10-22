.data

n1:
.asciiz "\n"

.text


main:
li $t0, 10
li $t1, 20

move $a0, $t0
li $v0, 1
syscall

li $v0, 4
la $a0, n1
syscall

move $a0, $t1
li $v0, 1
syscall

li $v0, 4
la $a0, n1
syscall

move $t2, $t0
move $t0, $t1
move $t1, $t2

move $a0, $t0
li $v0, 1
syscall

li $v0, 4
la $a0, n1
syscall

move $a0, $t1
li $v0, 1
syscall

li $v0, 4
la $a0, n1
syscall

li $v0, 10
syscall