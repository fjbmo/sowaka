	.data
l.52:	 # 10.000000
	.word	1092616192
l.51:	 # 20.000000
	.word	1101004800
l.50:	 # 30.000000
	.word	1106247680
l.49:	 # 1000000.000000
	.word	1232348160
l.48:	 # 1.000000
	.word	1065353216
	.text
tak.22:
	c.olt.s	0, $f13, $f12
	bc1t	0, c.olt.s_else.63
	mov.s	$f0, $f14
	jr	$ra
c.olt.s_else.63:
	lwc1	$f2, 0(l.48)
	sub.s	$f2, $f12, $f2
	swc1	$f12, 0($sp)
	swc1	$f14, -1($sp)
	swc1	$f13, -2($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	tak.22
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.48)
	lwc1	$f4, -2($sp)
	sub.s	$f3, $f4, $f3
	lwc1	$f5, -1($sp)
	lwc1	$f6, 0($sp)
	swc1	$f2, -3($sp)
	move	$t8, $ra
	mov.s	$f14, $f6
	mov.s	$f13, $f5
	mov.s	$f12, $f3
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	tak.22
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.48)
	lwc1	$f4, -1($sp)
	sub.s	$f3, $f4, $f3
	lwc1	$f4, 0($sp)
	lwc1	$f5, -2($sp)
	swc1	$f2, -4($sp)
	move	$t8, $ra
	mov.s	$f14, $f5
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	tak.22
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -3($sp)
	lwc1	$f4, -4($sp)
	mov.s	$f14, $f2
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	j	tak.22
_min_caml_start: # main entry point
   # main program start
	lwc1	$f2, 0(l.49)
	lwc1	$f3, 0(l.50)
	lwc1	$f4, 0(l.51)
	lwc1	$f5, 0(l.52)
	swc1	$f2, 0($sp)
	move	$t8, $ra
	mov.s	$f14, $f5
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	tak.22
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
