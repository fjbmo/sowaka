	.data
l.42:	 # 2.000000
	.word	1073741824
l.41:	 # 1000000.000000
	.word	1232348160
l.40:	 # 1.000000
	.word	1065353216
	.text
f.18:
	sub	$at, $a1, $a0
	bgtz	$at, ble_else.45
	li	$v0, 1
	add	$v0, $a1, $v0
	lwc1	$f2, 0(l.40)
	add.s	$f2, $f12, $f2
	lwc1	$f3, 0(l.40)
	inv.s	$at, $f12
	mul.s	$f3, $f3, $at
	add.s	$f3, $f13, $f3
	move	$a1, $v0
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	j	f.18
ble_else.45:
	mov.s	$f0, $f13
	jr	$ra
_min_caml_start: # main entry point
   # main program start
	lwc1	$f2, 0(l.41)
	li	$v0, 100000000
	li	$v1, 2
	lwc1	$f3, 0(l.42)
	lwc1	$f4, 0(l.40)
	swc1	$f2, 0($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	f.18
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0($sp)
	mul.s	$f2, $f3, $f2
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	min_caml_int_of_float
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	move	$ra, $t8
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	min_caml_print_int
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	move	$ra, $t8
	move	$t8, $ra
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	min_caml_print_newline
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	move	$ra, $t8
   # main program end
	jr	$ra
