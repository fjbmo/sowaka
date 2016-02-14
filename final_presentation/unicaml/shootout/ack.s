	.text
ack.15:
	li	$v0, 0
	sub	$at, $a0, $v0
	bgtz	$at, ble_else.34
	li	$v0, 1
	add	$v0, $a1, $v0
	jr	$ra
ble_else.34:
	li	$v0, 0
	sub	$at, $a1, $v0
	bgtz	$at, ble_else.35
	li	$v0, 1
	sub	$v0, $a0, $v0
	li	$v1, 1
	move	$a1, $v1
	move	$a0, $v0
	j	ack.15
ble_else.35:
	li	$v0, 1
	sub	$v0, $a0, $v0
	li	$v1, 1
	sub	$v1, $a1, $v1
	sw	$v0, 0($sp)
	move	$t8, $ra
	move	$a1, $v1
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	ack.15
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	move	$ra, $t8
	lw	$v1, 0($sp)
	move	$a1, $v0
	move	$a0, $v1
	j	ack.15
_min_caml_start: # main entry point
   # main program start
	li	$v0, 3
	li	$v1, 3
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, 0($sp)
	addi	$sp, $sp, -1
	jal	ack.15
	addi	$sp, $sp, 1
	lw	$t8, 0($sp)
	move	$ra, $t8
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
