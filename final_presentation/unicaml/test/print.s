	.text
_min_caml_start: # main entry point
   # main program start
	li	$v0, 123
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, 0($sp)
	addi	$sp, $sp, -1
	jal	min_caml_print_int
	addi	$sp, $sp, 1
	lw	$t8, 0($sp)
	move	$ra, $t8
	li	$v0, -456
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, 0($sp)
	addi	$sp, $sp, -1
	jal	min_caml_print_int
	addi	$sp, $sp, 1
	lw	$t8, 0($sp)
	move	$ra, $t8
	li	$v0, 789
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, 0($sp)
	addi	$sp, $sp, -1
	jal	min_caml_print_int
	addi	$sp, $sp, 1
	lw	$t8, 0($sp)
	move	$ra, $t8
   # main program end
	jr	$ra
