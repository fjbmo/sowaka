	.data
l.102:	 # 0.000000
	.word	0
l.101:	 # 1.000000
	.word	1065353216
l.100:	 # 1.500000
	.word	1069547520
l.99:	 # 400.000000
	.word	1137180672
l.98:	 # 4.000000
	.word	1082130432
	.text
dbl.38:
	add.s	$f0, $f12, $f12
	jr	$ra
iloop.54:
	li	$v0, 0
	bne	$a0, $v0, beq_else.117
	li	$v0, 1
	move	$a0, $v0
	j	min_caml_print_int
beq_else.117:
	sub.s	$f2, $f14, $f15
	add.s	$f2, $f2, $f16
	swc1	$f16, 0($sp)
	sw	$a0, -1($sp)
	swc1	$f2, -2($sp)
	swc1	$f17, -3($sp)
	swc1	$f13, -4($sp)
	move	$t8, $ra
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	dbl.38
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -4($sp)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -3($sp)
	add.s	$f2, $f2, $f3
	lwc1	$f4, -2($sp)
	mul.s	$f5, $f4, $f4
	mul.s	$f6, $f2, $f2
	add.s	$f7, $f5, $f6
	lwc1	$f8, 0(l.98)
	c.olt.s	0, $f8, $f7
	bc1t	0, c.olt.s_else.118
	li	$v0, 1
	lw	$v1, -1($sp)
	sub	$v0, $v1, $v0
	lwc1	$f7, 0($sp)
	move	$a0, $v0
	mov.s	$f17, $f3
	mov.s	$f16, $f7
	mov.s	$f15, $f6
	mov.s	$f14, $f5
	mov.s	$f13, $f2
	mov.s	$f12, $f4
	j	iloop.54
c.olt.s_else.118:
	li	$v0, 0
	move	$a0, $v0
	j	min_caml_print_int
xloop.44:
	li	$v0, 400
	sub	$at, $v0, $a0
	bgtz	$at, ble_else.119
	jr	$ra
ble_else.119:
	sw	$a0, 0($sp)
	sw	$a1, -1($sp)
	move	$t8, $ra
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_float_of_int
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	dbl.38
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.99)
	inv.s	$at, $f3
	mul.s	$f2, $f2, $at
	lwc1	$f3, 0(l.100)
	sub.s	$f2, $f2, $f3
	lw	$v0, -1($sp)
	swc1	$f2, -2($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_float_of_int
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	dbl.38
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.99)
	inv.s	$at, $f3
	mul.s	$f2, $f2, $at
	lwc1	$f3, 0(l.101)
	sub.s	$f2, $f2, $f3
	li	$v0, 1000
	lwc1	$f3, 0(l.102)
	lwc1	$f4, 0(l.102)
	lwc1	$f5, 0(l.102)
	lwc1	$f6, 0(l.102)
	lwc1	$f7, -2($sp)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f17, $f2
	mov.s	$f16, $f7
	mov.s	$f15, $f6
	mov.s	$f14, $f5
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	iloop.54
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, 0($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	move	$a1, $v1
	move	$a0, $v0
	j	xloop.44
yloop.40:
	li	$v0, 400
	sub	$at, $v0, $a0
	bgtz	$at, ble_else.121
	jr	$ra
ble_else.121:
	li	$v0, 0
	sw	$a0, 0($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $v0
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	xloop.44
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, 0($sp)
	add	$v0, $v1, $v0
	move	$a0, $v0
	j	yloop.40
_min_caml_start: # main entry point
   # main program start
	li	$v0, 0
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, 0($sp)
	addi	$sp, $sp, -1
	jal	yloop.40
	addi	$sp, $sp, 1
	lw	$t8, 0($sp)
	move	$ra, $t8
   # main program end
	jr	$ra
