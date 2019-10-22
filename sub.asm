.data

n1:
.asciiz "\n"

.text


main:
li $t0, 20
li $t1, 10

sub $a0, $t0, $t1
li $v0, 1
syscall

li $v0, 4
la $a0, n1
syscall

li $v0, 10
syscall