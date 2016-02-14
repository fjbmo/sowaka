	.data
l.25457:	 # 128.000000
	.word	1124073472
l.25149:	 # 0.900000
	.word	1063675494
l.25148:	 # 0.200000
	.word	1045220557
l.24210:	 # 150.000000
	.word	1125515264
l.24154:	 # -150.000000
	.word	-1021968384
l.24067:	 # 0.100000
	.word	1036831949
l.23948:	 # -2.000000
	.word	-1073741824
l.23934:	 # 0.003906
	.word	998244352
l.23793:	 # 100000000.000000
	.word	1287568416
l.23789:	 # 1000000000.000000
	.word	1315859240
l.23769:	 # 20.000000
	.word	1101004800
l.23768:	 # 0.050000
	.word	1028443341
l.23763:	 # 0.250000
	.word	1048576000
l.23759:	 # 10.000000
	.word	1092616192
l.23753:	 # 0.300000
	.word	1050253722
l.23752:	 # 255.000000
	.word	1132396544
l.23751:	 # 0.500000
	.word	1056964608
l.23750:	 # 0.150000
	.word	1041865114
l.23746:	 # 3.141593
	.word	1078530011
l.23745:	 # 30.000000
	.word	1106247680
l.23744:	 # 15.000000
	.word	1097859072
l.23743:	 # 0.000100
	.word	953267991
l.23322:	 # -0.100000
	.word	-1110651699
l.23261:	 # 0.010000
	.word	1008981770
l.23260:	 # -0.200000
	.word	-1102263091
l.22726:	 # -1.000000
	.word	-1082130432
l.22725:	 # 1.000000
	.word	1065353216
l.22691:	 # 2.000000
	.word	1073741824
l.22664:	 # 0.000000
	.word	0
l.22660:	 # -200.000000
	.word	-1018691584
l.22658:	 # 200.000000
	.word	1128792064
l.22657:	 # 0.017453
	.word	1016003125
	.text
read_screen_settings.2732:
	li	$v0, min_caml_screen
	li	$v1, 0
	sw	$v1, 0($sp)
	sw	$v0, -1($sp)
	move	$t8, $ra
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_read_float
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, 0($sp)
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_screen
	li	$v1, 1
	sw	$v1, -2($sp)
	sw	$v0, -3($sp)
	move	$t8, $ra
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_read_float
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -2($sp)
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_screen
	li	$v1, 2
	sw	$v1, -4($sp)
	sw	$v0, -5($sp)
	move	$t8, $ra
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_read_float
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -4($sp)
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	move	$t8, $ra
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_read_float
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.22657)
	mul.s	$f2, $f2, $f3
	swc1	$f2, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_cos
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -6($sp)
	swc1	$f2, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_sin
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	swc1	$f2, -8($sp)
	move	$t8, $ra
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_read_float
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.22657)
	mul.s	$f2, $f2, $f3
	swc1	$f2, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_cos
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -9($sp)
	swc1	$f2, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_sin
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, min_caml_screenz_dir
	li	$v1, 0
	lwc1	$f3, -7($sp)
	mul.s	$f4, $f3, $f2
	lwc1	$f5, 0(l.22658)
	mul.s	$f4, $f4, $f5
	add	$at, $v0, $v1
	swc1	$f4, 0($at)
	li	$v0, min_caml_screenz_dir
	li	$v1, 1
	lwc1	$f4, 0(l.22660)
	lwc1	$f5, -8($sp)
	mul.s	$f4, $f5, $f4
	add	$at, $v0, $v1
	swc1	$f4, 0($at)
	li	$v0, min_caml_screenz_dir
	li	$v1, 2
	lwc1	$f4, -10($sp)
	mul.s	$f6, $f3, $f4
	lwc1	$f7, 0(l.22658)
	mul.s	$f6, $f6, $f7
	add	$at, $v0, $v1
	swc1	$f6, 0($at)
	li	$v0, min_caml_screenx_dir
	li	$v1, 0
	add	$at, $v0, $v1
	swc1	$f4, 0($at)
	li	$v0, min_caml_screenx_dir
	li	$v1, 1
	lwc1	$f6, 0(l.22664)
	add	$at, $v0, $v1
	swc1	$f6, 0($at)
	li	$v0, min_caml_screenx_dir
	li	$v1, 2
	swc1	$f2, -11($sp)
	sw	$v1, -12($sp)
	sw	$v0, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fneg
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -12($sp)
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_screeny_dir
	li	$v1, 0
	lwc1	$f2, -8($sp)
	sw	$v1, -14($sp)
	sw	$v0, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fneg
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -11($sp)
	mul.s	$f2, $f2, $f3
	lw	$v0, -14($sp)
	lw	$v1, -15($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_screeny_dir
	li	$v1, 1
	lwc1	$f2, -7($sp)
	sw	$v1, -16($sp)
	sw	$v0, -17($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fneg
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -16($sp)
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_screeny_dir
	li	$v1, 2
	lwc1	$f2, -8($sp)
	sw	$v1, -18($sp)
	sw	$v0, -19($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fneg
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -10($sp)
	mul.s	$f2, $f2, $f3
	lw	$v0, -18($sp)
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_viewpoint
	li	$v1, 0
	li	$a0, min_caml_screen
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a0, min_caml_screenz_dir
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, min_caml_viewpoint
	li	$v1, 1
	li	$a0, min_caml_screen
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a0, min_caml_screenz_dir
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, min_caml_viewpoint
	li	$v1, 2
	li	$a0, min_caml_screen
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a0, min_caml_screenz_dir
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	jr	$ra
rotate_quadratic_matrix.2736:
	li	$v0, 0
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	sw	$a0, 0($sp)
	sw	$a1, -1($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_cos
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -2($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_sin
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -3($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_cos
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -4($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_sin
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -5($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_cos
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_sin
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -6($sp)
	lwc1	$f4, -4($sp)
	mul.s	$f5, $f4, $f3
	lwc1	$f6, -5($sp)
	lwc1	$f7, -3($sp)
	mul.s	$f8, $f7, $f6
	mul.s	$f8, $f8, $f3
	lwc1	$f9, -2($sp)
	mul.s	$f10, $f9, $f2
	sub.s	$f8, $f8, $f10
	mul.s	$f10, $f9, $f6
	mul.s	$f10, $f10, $f3
	mul.s	$f11, $f7, $f2
	add.s	$f10, $f10, $f11
	mul.s	$f11, $f4, $f2
	mul.s	$f12, $f7, $f6
	mul.s	$f12, $f12, $f2
	mul.s	$f13, $f9, $f3
	add.s	$f12, $f12, $f13
	mul.s	$f13, $f9, $f6
	mul.s	$f2, $f13, $f2
	mul.s	$f3, $f7, $f3
	sub.s	$f2, $f2, $f3
	swc1	$f2, -7($sp)
	swc1	$f10, -8($sp)
	swc1	$f12, -9($sp)
	swc1	$f8, -10($sp)
	swc1	$f11, -11($sp)
	swc1	$f5, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f6
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fneg
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -4($sp)
	lwc1	$f4, -3($sp)
	mul.s	$f4, $f4, $f3
	lwc1	$f5, -2($sp)
	mul.s	$f3, $f5, $f3
	li	$v0, 0
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lwc1	$f5, 0($at)
	li	$v0, 1
	add	$at, $v1, $v0
	lwc1	$f6, 0($at)
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f7, 0($at)
	li	$v0, 0
	lwc1	$f8, -12($sp)
	swc1	$f3, -13($sp)
	swc1	$f4, -14($sp)
	sw	$v0, -15($sp)
	swc1	$f7, -16($sp)
	swc1	$f2, -17($sp)
	swc1	$f6, -18($sp)
	swc1	$f5, -19($sp)
	move	$t8, $ra
	mov.s	$f12, $f8
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fsqr
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -19($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -11($sp)
	swc1	$f2, -20($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_fsqr
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -18($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -20($sp)
	add.s	$f2, $f4, $f2
	lwc1	$f4, -17($sp)
	swc1	$f2, -21($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_fsqr
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -16($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -21($sp)
	add.s	$f2, $f4, $f2
	lw	$v0, -15($sp)
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	lwc1	$f2, -10($sp)
	sw	$v0, -22($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fsqr
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -19($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -9($sp)
	swc1	$f2, -23($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -24($sp)
	addi	$sp, $sp, -25
	jal	min_caml_fsqr
	addi	$sp, $sp, 25
	lw	$t8, -24($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -18($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -23($sp)
	add.s	$f2, $f4, $f2
	lwc1	$f4, -14($sp)
	swc1	$f2, -24($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_fsqr
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -16($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -24($sp)
	add.s	$f2, $f4, $f2
	lw	$v0, -22($sp)
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	lwc1	$f2, -8($sp)
	sw	$v0, -25($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -26($sp)
	addi	$sp, $sp, -27
	jal	min_caml_fsqr
	addi	$sp, $sp, 27
	lw	$t8, -26($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -19($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -7($sp)
	swc1	$f2, -26($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -27($sp)
	addi	$sp, $sp, -28
	jal	min_caml_fsqr
	addi	$sp, $sp, 28
	lw	$t8, -27($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -18($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -26($sp)
	add.s	$f2, $f4, $f2
	lwc1	$f4, -13($sp)
	swc1	$f2, -27($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fsqr
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -16($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -27($sp)
	add.s	$f2, $f4, $f2
	lw	$v0, -25($sp)
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 0
	lwc1	$f2, 0(l.22691)
	lwc1	$f4, -10($sp)
	lwc1	$f5, -19($sp)
	mul.s	$f6, $f5, $f4
	lwc1	$f7, -8($sp)
	mul.s	$f6, $f6, $f7
	lwc1	$f8, -9($sp)
	lwc1	$f9, -18($sp)
	mul.s	$f10, $f9, $f8
	lwc1	$f11, -7($sp)
	mul.s	$f10, $f10, $f11
	add.s	$f6, $f6, $f10
	lwc1	$f10, -14($sp)
	mul.s	$f12, $f3, $f10
	lwc1	$f13, -13($sp)
	mul.s	$f12, $f12, $f13
	add.s	$f6, $f6, $f12
	mul.s	$f2, $f2, $f6
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	lwc1	$f2, 0(l.22691)
	lwc1	$f6, -12($sp)
	mul.s	$f12, $f5, $f6
	mul.s	$f7, $f12, $f7
	lwc1	$f12, -11($sp)
	mul.s	$f14, $f9, $f12
	mul.s	$f11, $f14, $f11
	add.s	$f7, $f7, $f11
	lwc1	$f11, -17($sp)
	mul.s	$f14, $f3, $f11
	mul.s	$f13, $f14, $f13
	add.s	$f7, $f7, $f13
	mul.s	$f2, $f2, $f7
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	lwc1	$f2, 0(l.22691)
	mul.s	$f5, $f5, $f6
	mul.s	$f4, $f5, $f4
	mul.s	$f5, $f9, $f12
	mul.s	$f5, $f5, $f8
	add.s	$f4, $f4, $f5
	mul.s	$f3, $f3, $f11
	mul.s	$f3, $f3, $f10
	add.s	$f3, $f4, $f3
	mul.s	$f2, $f2, $f3
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	jr	$ra
read_nth_object.2739:
	sw	$a0, 0($sp)
	move	$t8, $ra
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	min_caml_read_int
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29151
	li	$v0, 0
	jr	$ra
beq_else.29151:
	sw	$v0, -1($sp)
	move	$t8, $ra
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_read_int
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	sw	$v0, -2($sp)
	move	$t8, $ra
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_read_int
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	sw	$v0, -3($sp)
	move	$t8, $ra
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_read_int
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -4($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_create_float_array
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v1, 0
	sw	$v1, -5($sp)
	sw	$v0, -6($sp)
	move	$t8, $ra
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_read_float
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -5($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	sw	$v0, -7($sp)
	move	$t8, $ra
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_read_float
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	sw	$v0, -8($sp)
	move	$t8, $ra
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_read_float
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -8($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_create_float_array
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, 0
	sw	$v1, -9($sp)
	sw	$v0, -10($sp)
	move	$t8, $ra
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_read_float
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -9($sp)
	lw	$v1, -10($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	sw	$v0, -11($sp)
	move	$t8, $ra
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_read_float
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -11($sp)
	lw	$v1, -10($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	sw	$v0, -12($sp)
	move	$t8, $ra
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_read_float
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -12($sp)
	lw	$v1, -10($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	move	$t8, $ra
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_read_float
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fisneg
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 2
	lwc1	$f2, 0(l.22664)
	sw	$v0, -13($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_create_float_array
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	sw	$v1, -14($sp)
	sw	$v0, -15($sp)
	move	$t8, $ra
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_read_float
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -14($sp)
	lw	$v1, -15($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	sw	$v0, -16($sp)
	move	$t8, $ra
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_read_float
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -16($sp)
	lw	$v1, -15($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_create_float_array
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, 0
	sw	$v1, -17($sp)
	sw	$v0, -18($sp)
	move	$t8, $ra
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_read_float
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -17($sp)
	lw	$v1, -18($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	sw	$v0, -19($sp)
	move	$t8, $ra
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_read_float
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -19($sp)
	lw	$v1, -18($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	sw	$v0, -20($sp)
	move	$t8, $ra
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_read_float
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -20($sp)
	lw	$v1, -18($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_create_float_array
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -4($sp)
	sw	$v0, -21($sp)
	bne	$a0, $v1, beq_else.29152
	j	beq_cont.29153
beq_else.29152:
	li	$v1, 0
	sw	$v1, -22($sp)
	move	$t8, $ra
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_read_float
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.22657)
	mul.s	$f2, $f2, $f3
	lw	$v0, -22($sp)
	lw	$v1, -21($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	sw	$v0, -23($sp)
	move	$t8, $ra
	sw	$t8, -24($sp)
	addi	$sp, $sp, -25
	jal	min_caml_read_float
	addi	$sp, $sp, 25
	lw	$t8, -24($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.22657)
	mul.s	$f2, $f2, $f3
	lw	$v0, -23($sp)
	lw	$v1, -21($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	sw	$v0, -24($sp)
	move	$t8, $ra
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_read_float
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.22657)
	mul.s	$f2, $f2, $f3
	lw	$v0, -24($sp)
	lw	$v1, -21($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.29153:
	li	$v0, 2
	lw	$v1, -2($sp)
	bne	$v1, $v0, beq_else.29154
	li	$v0, 1
	j	beq_cont.29155
beq_else.29154:
	lw	$v0, -13($sp)
beq_cont.29155:
	li	$a0, 4
	lwc1	$f2, 0(l.22664)
	sw	$v0, -25($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -26($sp)
	addi	$sp, $sp, -27
	jal	min_caml_create_float_array
	addi	$sp, $sp, 27
	lw	$t8, -26($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 11
	sw	$v0, 10($v1)
	lw	$v0, -21($sp)
	sw	$v0, 9($v1)
	lw	$a0, -18($sp)
	sw	$a0, 8($v1)
	lw	$a0, -15($sp)
	sw	$a0, 7($v1)
	lw	$a0, -25($sp)
	sw	$a0, 6($v1)
	lw	$a0, -10($sp)
	sw	$a0, 5($v1)
	lw	$a0, -6($sp)
	sw	$a0, 4($v1)
	lw	$a1, -4($sp)
	sw	$a1, 3($v1)
	lw	$a2, -3($sp)
	sw	$a2, 2($v1)
	lw	$a2, -2($sp)
	sw	$a2, 1($v1)
	lw	$a3, -1($sp)
	sw	$a3, 0($v1)
	li	$a3, min_caml_objects
	lw	$t0, 0($sp)
	add	$at, $a3, $t0
	sw	$v1, 0($at)
	li	$v1, 3
	bne	$a2, $v1, beq_else.29156
	li	$v1, 0
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	li	$v1, 0
	sw	$v1, -26($sp)
	swc1	$f2, -27($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fiszero
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29158
	lwc1	$f2, -27($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fiszero
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29160
	lwc1	$f2, -27($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fispos
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29162
	lwc1	$f2, 0(l.22726)
	j	beq_cont.29163
beq_else.29162:
	lwc1	$f2, 0(l.22725)
beq_cont.29163:
	j	beq_cont.29161
beq_else.29160:
	lwc1	$f2, 0(l.22664)
beq_cont.29161:
	lwc1	$f3, -27($sp)
	swc1	$f2, -28($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_fsqr
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -28($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	j	beq_cont.29159
beq_else.29158:
	lwc1	$f2, 0(l.22664)
beq_cont.29159:
	lw	$v0, -26($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	li	$v0, 1
	sw	$v0, -29($sp)
	swc1	$f2, -30($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	jal	min_caml_fiszero
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29164
	lwc1	$f2, -30($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	jal	min_caml_fiszero
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29166
	lwc1	$f2, -30($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	jal	min_caml_fispos
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29168
	lwc1	$f2, 0(l.22726)
	j	beq_cont.29169
beq_else.29168:
	lwc1	$f2, 0(l.22725)
beq_cont.29169:
	j	beq_cont.29167
beq_else.29166:
	lwc1	$f2, 0(l.22664)
beq_cont.29167:
	lwc1	$f3, -30($sp)
	swc1	$f2, -31($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_fsqr
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -31($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	j	beq_cont.29165
beq_else.29164:
	lwc1	$f2, 0(l.22664)
beq_cont.29165:
	lw	$v0, -29($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	li	$v0, 2
	sw	$v0, -32($sp)
	swc1	$f2, -33($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_fiszero
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29170
	lwc1	$f2, -33($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_fiszero
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29172
	lwc1	$f2, -33($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_fispos
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29174
	lwc1	$f2, 0(l.22726)
	j	beq_cont.29175
beq_else.29174:
	lwc1	$f2, 0(l.22725)
beq_cont.29175:
	j	beq_cont.29173
beq_else.29172:
	lwc1	$f2, 0(l.22664)
beq_cont.29173:
	lwc1	$f3, -33($sp)
	swc1	$f2, -34($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -35($sp)
	addi	$sp, $sp, -36
	jal	min_caml_fsqr
	addi	$sp, $sp, 36
	lw	$t8, -35($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -34($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	j	beq_cont.29171
beq_else.29170:
	lwc1	$f2, 0(l.22664)
beq_cont.29171:
	lw	$v0, -32($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29157
beq_else.29156:
	li	$v1, 2
	bne	$a2, $v1, beq_else.29176
	li	$v1, 0
	lw	$a2, -13($sp)
	bne	$a2, $v1, beq_else.29178
	li	$v1, 1
	j	beq_cont.29179
beq_else.29178:
	li	$v1, 0
beq_cont.29179:
	li	$a2, 0
	add	$at, $a0, $a2
	lwc1	$f2, 0($at)
	sw	$v1, -35($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	min_caml_fsqr
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -36($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -37($sp)
	addi	$sp, $sp, -38
	jal	min_caml_fsqr
	addi	$sp, $sp, 38
	lw	$t8, -37($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -36($sp)
	add.s	$f2, $f3, $f2
	li	$v0, 2
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -37($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	min_caml_fsqr
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -37($sp)
	add.s	$f2, $f3, $f2
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	min_caml_sqrt
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	swc1	$f2, -38($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_fiszero
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29180
	li	$v0, 0
	lw	$v1, -35($sp)
	bne	$v1, $v0, beq_else.29182
	lwc1	$f2, 0(l.22725)
	lwc1	$f3, -38($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	j	beq_cont.29183
beq_else.29182:
	lwc1	$f2, 0(l.22726)
	lwc1	$f3, -38($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
beq_cont.29183:
	j	beq_cont.29181
beq_else.29180:
	lwc1	$f2, 0(l.22725)
beq_cont.29181:
	li	$v0, 0
	li	$v1, 0
	lw	$a0, -6($sp)
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f2
	add	$at, $a0, $v0
	swc1	$f3, 0($at)
	li	$v0, 1
	li	$v1, 1
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f2
	add	$at, $a0, $v0
	swc1	$f3, 0($at)
	li	$v0, 2
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f3, $f2
	add	$at, $a0, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29177
beq_else.29176:
beq_cont.29177:
beq_cont.29157:
	li	$v0, 0
	lw	$v1, -4($sp)
	bne	$v1, $v0, beq_else.29184
	j	beq_cont.29185
beq_else.29184:
	lw	$v0, -6($sp)
	lw	$v1, -21($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	rotate_quadratic_matrix.2736
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
beq_cont.29185:
	li	$v0, 1
	jr	$ra
read_object.2741:
	li	$v0, 60
	sub	$at, $v0, $a0
	bgtz	$at, ble_else.29186
	jr	$ra
ble_else.29186:
	sw	$a0, 0($sp)
	move	$t8, $ra
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	read_nth_object.2739
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29188
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, 0($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
beq_else.29188:
	li	$v0, 1
	lw	$v1, 0($sp)
	add	$v0, $v1, $v0
	li	$v1, 60
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.29190
	jr	$ra
ble_else.29190:
	sw	$v0, -1($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	read_nth_object.2739
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29192
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -1($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
beq_else.29192:
	li	$v0, 1
	lw	$v1, -1($sp)
	add	$v0, $v1, $v0
	li	$v1, 60
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.29194
	jr	$ra
ble_else.29194:
	sw	$v0, -2($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	read_nth_object.2739
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29196
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -2($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
beq_else.29196:
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$v0, $v1, $v0
	li	$v1, 60
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.29198
	jr	$ra
ble_else.29198:
	sw	$v0, -3($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	read_nth_object.2739
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29200
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -3($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
beq_else.29200:
	li	$v0, 1
	lw	$v1, -3($sp)
	add	$v0, $v1, $v0
	li	$v1, 60
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.29202
	jr	$ra
ble_else.29202:
	sw	$v0, -4($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	read_nth_object.2739
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29204
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -4($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
beq_else.29204:
	li	$v0, 1
	lw	$v1, -4($sp)
	add	$v0, $v1, $v0
	li	$v1, 60
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.29206
	jr	$ra
ble_else.29206:
	sw	$v0, -5($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	read_nth_object.2739
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29208
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -5($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
beq_else.29208:
	li	$v0, 1
	lw	$v1, -5($sp)
	add	$v0, $v1, $v0
	li	$v1, 60
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.29210
	jr	$ra
ble_else.29210:
	sw	$v0, -6($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	read_nth_object.2739
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29212
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -6($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
beq_else.29212:
	li	$v0, 1
	lw	$v1, -6($sp)
	add	$v0, $v1, $v0
	li	$v1, 60
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.29214
	jr	$ra
ble_else.29214:
	sw	$v0, -7($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	read_nth_object.2739
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29216
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -7($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
beq_else.29216:
	li	$v0, 1
	lw	$v1, -7($sp)
	add	$v0, $v1, $v0
	move	$a0, $v0
	j	read_object.2741
read_net_item.2745:
	sw	$a0, 0($sp)
	move	$t8, $ra
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	min_caml_read_int
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29218
	li	$v0, 1
	lw	$v1, 0($sp)
	add	$v0, $v1, $v0
	li	$v1, -1
	move	$a1, $v1
	move	$a0, $v0
	j	min_caml_create_array
beq_else.29218:
	li	$v1, 1
	lw	$a0, 0($sp)
	add	$v1, $a0, $v1
	sw	$v0, -1($sp)
	sw	$v1, -2($sp)
	move	$t8, $ra
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_read_int
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29219
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$v0, $v1, $v0
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_create_array
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	j	beq_cont.29220
beq_else.29219:
	li	$v1, 1
	lw	$a0, -2($sp)
	add	$v1, $a0, $v1
	sw	$v0, -3($sp)
	sw	$v1, -4($sp)
	move	$t8, $ra
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_read_int
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29221
	li	$v0, 1
	lw	$v1, -4($sp)
	add	$v0, $v1, $v0
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_create_array
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	j	beq_cont.29222
beq_else.29221:
	li	$v1, 1
	lw	$a0, -4($sp)
	add	$v1, $a0, $v1
	sw	$v0, -5($sp)
	sw	$v1, -6($sp)
	move	$t8, $ra
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_read_int
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29223
	li	$v0, 1
	lw	$v1, -6($sp)
	add	$v0, $v1, $v0
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_create_array
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	j	beq_cont.29224
beq_else.29223:
	li	$v1, 1
	lw	$a0, -6($sp)
	add	$v1, $a0, $v1
	sw	$v0, -7($sp)
	sw	$v1, -8($sp)
	move	$t8, $ra
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_read_int
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29225
	li	$v0, 1
	lw	$v1, -8($sp)
	add	$v0, $v1, $v0
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_create_array
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	j	beq_cont.29226
beq_else.29225:
	li	$v1, 1
	lw	$a0, -8($sp)
	add	$v1, $a0, $v1
	sw	$v0, -9($sp)
	sw	$v1, -10($sp)
	move	$t8, $ra
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_read_int
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29227
	li	$v0, 1
	lw	$v1, -10($sp)
	add	$v0, $v1, $v0
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_create_array
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	j	beq_cont.29228
beq_else.29227:
	li	$v1, 1
	lw	$a0, -10($sp)
	add	$v1, $a0, $v1
	sw	$v0, -11($sp)
	sw	$v1, -12($sp)
	move	$t8, $ra
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_read_int
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29229
	li	$v0, 1
	lw	$v1, -12($sp)
	add	$v0, $v1, $v0
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_create_array
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	j	beq_cont.29230
beq_else.29229:
	li	$v1, 1
	lw	$a0, -12($sp)
	add	$v1, $a0, $v1
	sw	$v0, -13($sp)
	sw	$v1, -14($sp)
	move	$t8, $ra
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_read_int
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29231
	li	$v0, 1
	lw	$v1, -14($sp)
	add	$v0, $v1, $v0
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_create_array
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	j	beq_cont.29232
beq_else.29231:
	li	$v1, 1
	lw	$a0, -14($sp)
	add	$v1, $a0, $v1
	sw	$v0, -15($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	read_net_item.2745
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	lw	$v1, -14($sp)
	lw	$a0, -15($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29232:
	lw	$v1, -12($sp)
	lw	$a0, -13($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29230:
	lw	$v1, -10($sp)
	lw	$a0, -11($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29228:
	lw	$v1, -8($sp)
	lw	$a0, -9($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29226:
	lw	$v1, -6($sp)
	lw	$a0, -7($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29224:
	lw	$v1, -4($sp)
	lw	$a0, -5($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29222:
	lw	$v1, -2($sp)
	lw	$a0, -3($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29220:
	lw	$v1, 0($sp)
	lw	$a0, -1($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
read_or_network.2747:
	li	$v0, 0
	sw	$a0, 0($sp)
	sw	$v0, -1($sp)
	move	$t8, $ra
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_read_int
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29233
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_create_array
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	j	beq_cont.29234
beq_else.29233:
	li	$v1, 1
	sw	$v0, -2($sp)
	sw	$v1, -3($sp)
	move	$t8, $ra
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_read_int
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29235
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_create_array
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	j	beq_cont.29236
beq_else.29235:
	li	$v1, 2
	sw	$v0, -4($sp)
	sw	$v1, -5($sp)
	move	$t8, $ra
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_read_int
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29237
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_create_array
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	j	beq_cont.29238
beq_else.29237:
	li	$v1, 3
	sw	$v0, -6($sp)
	sw	$v1, -7($sp)
	move	$t8, $ra
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_read_int
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29239
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_create_array
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	j	beq_cont.29240
beq_else.29239:
	li	$v1, 4
	sw	$v0, -8($sp)
	sw	$v1, -9($sp)
	move	$t8, $ra
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_read_int
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29241
	li	$v0, 5
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_create_array
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	j	beq_cont.29242
beq_else.29241:
	li	$v1, 5
	sw	$v0, -10($sp)
	sw	$v1, -11($sp)
	move	$t8, $ra
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_read_int
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29243
	li	$v0, 6
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_create_array
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	j	beq_cont.29244
beq_else.29243:
	li	$v1, 6
	sw	$v0, -12($sp)
	sw	$v1, -13($sp)
	move	$t8, $ra
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_read_int
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29245
	li	$v0, 7
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_create_array
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	j	beq_cont.29246
beq_else.29245:
	li	$v1, 7
	sw	$v0, -14($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	read_net_item.2745
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	lw	$v1, -13($sp)
	lw	$a0, -14($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29246:
	lw	$v1, -11($sp)
	lw	$a0, -12($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29244:
	lw	$v1, -9($sp)
	lw	$a0, -10($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29242:
	lw	$v1, -7($sp)
	lw	$a0, -8($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29240:
	lw	$v1, -5($sp)
	lw	$a0, -6($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29238:
	lw	$v1, -3($sp)
	lw	$a0, -4($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29236:
	lw	$v1, -1($sp)
	lw	$a0, -2($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29234:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29247
	li	$v1, 1
	lw	$a0, 0($sp)
	add	$v1, $a0, $v1
	move	$a1, $v0
	move	$a0, $v1
	j	min_caml_create_array
beq_else.29247:
	li	$v1, 1
	lw	$a0, 0($sp)
	add	$v1, $a0, $v1
	li	$a1, 0
	sw	$v0, -15($sp)
	sw	$v1, -16($sp)
	sw	$a1, -17($sp)
	move	$t8, $ra
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_read_int
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29248
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_create_array
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	j	beq_cont.29249
beq_else.29248:
	li	$v1, 1
	sw	$v0, -18($sp)
	sw	$v1, -19($sp)
	move	$t8, $ra
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_read_int
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29250
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_create_array
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	j	beq_cont.29251
beq_else.29250:
	li	$v1, 2
	sw	$v0, -20($sp)
	sw	$v1, -21($sp)
	move	$t8, $ra
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_read_int
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29252
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_create_array
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	j	beq_cont.29253
beq_else.29252:
	li	$v1, 3
	sw	$v0, -22($sp)
	sw	$v1, -23($sp)
	move	$t8, $ra
	sw	$t8, -24($sp)
	addi	$sp, $sp, -25
	jal	min_caml_read_int
	addi	$sp, $sp, 25
	lw	$t8, -24($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29254
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -24($sp)
	addi	$sp, $sp, -25
	jal	min_caml_create_array
	addi	$sp, $sp, 25
	lw	$t8, -24($sp)
	move	$ra, $t8
	j	beq_cont.29255
beq_else.29254:
	li	$v1, 4
	sw	$v0, -24($sp)
	sw	$v1, -25($sp)
	move	$t8, $ra
	sw	$t8, -26($sp)
	addi	$sp, $sp, -27
	jal	min_caml_read_int
	addi	$sp, $sp, 27
	lw	$t8, -26($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29256
	li	$v0, 5
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -26($sp)
	addi	$sp, $sp, -27
	jal	min_caml_create_array
	addi	$sp, $sp, 27
	lw	$t8, -26($sp)
	move	$ra, $t8
	j	beq_cont.29257
beq_else.29256:
	li	$v1, 5
	sw	$v0, -26($sp)
	sw	$v1, -27($sp)
	move	$t8, $ra
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_read_int
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29258
	li	$v0, 6
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_create_array
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	j	beq_cont.29259
beq_else.29258:
	li	$v1, 6
	sw	$v0, -28($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	read_net_item.2745
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	move	$ra, $t8
	lw	$v1, -27($sp)
	lw	$a0, -28($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29259:
	lw	$v1, -25($sp)
	lw	$a0, -26($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29257:
	lw	$v1, -23($sp)
	lw	$a0, -24($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29255:
	lw	$v1, -21($sp)
	lw	$a0, -22($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29253:
	lw	$v1, -19($sp)
	lw	$a0, -20($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29251:
	lw	$v1, -17($sp)
	lw	$a0, -18($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29249:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29260
	li	$v1, 1
	lw	$a0, -16($sp)
	add	$v1, $a0, $v1
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_create_array
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	move	$ra, $t8
	j	beq_cont.29261
beq_else.29260:
	li	$v1, 1
	lw	$a0, -16($sp)
	add	$v1, $a0, $v1
	li	$a1, 0
	sw	$v0, -29($sp)
	sw	$v1, -30($sp)
	sw	$a1, -31($sp)
	move	$t8, $ra
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_read_int
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29262
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_create_array
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	move	$ra, $t8
	j	beq_cont.29263
beq_else.29262:
	li	$v1, 1
	sw	$v0, -32($sp)
	sw	$v1, -33($sp)
	move	$t8, $ra
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_read_int
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29264
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_create_array
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	j	beq_cont.29265
beq_else.29264:
	li	$v1, 2
	sw	$v0, -34($sp)
	sw	$v1, -35($sp)
	move	$t8, $ra
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	min_caml_read_int
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29266
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	min_caml_create_array
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	j	beq_cont.29267
beq_else.29266:
	li	$v1, 3
	sw	$v0, -36($sp)
	sw	$v1, -37($sp)
	move	$t8, $ra
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	min_caml_read_int
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29268
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	min_caml_create_array
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	j	beq_cont.29269
beq_else.29268:
	li	$v1, 4
	sw	$v0, -38($sp)
	sw	$v1, -39($sp)
	move	$t8, $ra
	sw	$t8, -40($sp)
	addi	$sp, $sp, -41
	jal	min_caml_read_int
	addi	$sp, $sp, 41
	lw	$t8, -40($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29270
	li	$v0, 5
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -40($sp)
	addi	$sp, $sp, -41
	jal	min_caml_create_array
	addi	$sp, $sp, 41
	lw	$t8, -40($sp)
	move	$ra, $t8
	j	beq_cont.29271
beq_else.29270:
	li	$v1, 5
	sw	$v0, -40($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -41($sp)
	addi	$sp, $sp, -42
	jal	read_net_item.2745
	addi	$sp, $sp, 42
	lw	$t8, -41($sp)
	move	$ra, $t8
	lw	$v1, -39($sp)
	lw	$a0, -40($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29271:
	lw	$v1, -37($sp)
	lw	$a0, -38($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29269:
	lw	$v1, -35($sp)
	lw	$a0, -36($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29267:
	lw	$v1, -33($sp)
	lw	$a0, -34($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29265:
	lw	$v1, -31($sp)
	lw	$a0, -32($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29263:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29272
	li	$v1, 1
	lw	$a0, -30($sp)
	add	$v1, $a0, $v1
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -41($sp)
	addi	$sp, $sp, -42
	jal	min_caml_create_array
	addi	$sp, $sp, 42
	lw	$t8, -41($sp)
	move	$ra, $t8
	j	beq_cont.29273
beq_else.29272:
	li	$v1, 1
	lw	$a0, -30($sp)
	add	$v1, $a0, $v1
	li	$a1, 0
	sw	$v0, -41($sp)
	sw	$v1, -42($sp)
	sw	$a1, -43($sp)
	move	$t8, $ra
	sw	$t8, -44($sp)
	addi	$sp, $sp, -45
	jal	min_caml_read_int
	addi	$sp, $sp, 45
	lw	$t8, -44($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29274
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -44($sp)
	addi	$sp, $sp, -45
	jal	min_caml_create_array
	addi	$sp, $sp, 45
	lw	$t8, -44($sp)
	move	$ra, $t8
	j	beq_cont.29275
beq_else.29274:
	li	$v1, 1
	sw	$v0, -44($sp)
	sw	$v1, -45($sp)
	move	$t8, $ra
	sw	$t8, -46($sp)
	addi	$sp, $sp, -47
	jal	min_caml_read_int
	addi	$sp, $sp, 47
	lw	$t8, -46($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29276
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -46($sp)
	addi	$sp, $sp, -47
	jal	min_caml_create_array
	addi	$sp, $sp, 47
	lw	$t8, -46($sp)
	move	$ra, $t8
	j	beq_cont.29277
beq_else.29276:
	li	$v1, 2
	sw	$v0, -46($sp)
	sw	$v1, -47($sp)
	move	$t8, $ra
	sw	$t8, -48($sp)
	addi	$sp, $sp, -49
	jal	min_caml_read_int
	addi	$sp, $sp, 49
	lw	$t8, -48($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29278
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -48($sp)
	addi	$sp, $sp, -49
	jal	min_caml_create_array
	addi	$sp, $sp, 49
	lw	$t8, -48($sp)
	move	$ra, $t8
	j	beq_cont.29279
beq_else.29278:
	li	$v1, 3
	sw	$v0, -48($sp)
	sw	$v1, -49($sp)
	move	$t8, $ra
	sw	$t8, -50($sp)
	addi	$sp, $sp, -51
	jal	min_caml_read_int
	addi	$sp, $sp, 51
	lw	$t8, -50($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29280
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -50($sp)
	addi	$sp, $sp, -51
	jal	min_caml_create_array
	addi	$sp, $sp, 51
	lw	$t8, -50($sp)
	move	$ra, $t8
	j	beq_cont.29281
beq_else.29280:
	li	$v1, 4
	sw	$v0, -50($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -51($sp)
	addi	$sp, $sp, -52
	jal	read_net_item.2745
	addi	$sp, $sp, 52
	lw	$t8, -51($sp)
	move	$ra, $t8
	lw	$v1, -49($sp)
	lw	$a0, -50($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29281:
	lw	$v1, -47($sp)
	lw	$a0, -48($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29279:
	lw	$v1, -45($sp)
	lw	$a0, -46($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29277:
	lw	$v1, -43($sp)
	lw	$a0, -44($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29275:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29282
	li	$v1, 1
	lw	$a0, -42($sp)
	add	$v1, $a0, $v1
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -51($sp)
	addi	$sp, $sp, -52
	jal	min_caml_create_array
	addi	$sp, $sp, 52
	lw	$t8, -51($sp)
	move	$ra, $t8
	j	beq_cont.29283
beq_else.29282:
	li	$v1, 1
	lw	$a0, -42($sp)
	add	$v1, $a0, $v1
	sw	$v0, -51($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -52($sp)
	addi	$sp, $sp, -53
	jal	read_or_network.2747
	addi	$sp, $sp, 53
	lw	$t8, -52($sp)
	move	$ra, $t8
	lw	$v1, -42($sp)
	lw	$a0, -51($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29283:
	lw	$v1, -30($sp)
	lw	$a0, -41($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29273:
	lw	$v1, -16($sp)
	lw	$a0, -29($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29261:
	lw	$v1, 0($sp)
	lw	$a0, -15($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
read_and_network.2749:
	li	$v0, 0
	sw	$a0, 0($sp)
	sw	$v0, -1($sp)
	move	$t8, $ra
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_read_int
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29284
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_create_array
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	j	beq_cont.29285
beq_else.29284:
	li	$v1, 1
	sw	$v0, -2($sp)
	sw	$v1, -3($sp)
	move	$t8, $ra
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_read_int
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29286
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_create_array
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	j	beq_cont.29287
beq_else.29286:
	li	$v1, 2
	sw	$v0, -4($sp)
	sw	$v1, -5($sp)
	move	$t8, $ra
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_read_int
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29288
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_create_array
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	j	beq_cont.29289
beq_else.29288:
	li	$v1, 3
	sw	$v0, -6($sp)
	sw	$v1, -7($sp)
	move	$t8, $ra
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_read_int
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29290
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_create_array
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	j	beq_cont.29291
beq_else.29290:
	li	$v1, 4
	sw	$v0, -8($sp)
	sw	$v1, -9($sp)
	move	$t8, $ra
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_read_int
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29292
	li	$v0, 5
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_create_array
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	j	beq_cont.29293
beq_else.29292:
	li	$v1, 5
	sw	$v0, -10($sp)
	sw	$v1, -11($sp)
	move	$t8, $ra
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_read_int
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29294
	li	$v0, 6
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_create_array
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	j	beq_cont.29295
beq_else.29294:
	li	$v1, 6
	sw	$v0, -12($sp)
	sw	$v1, -13($sp)
	move	$t8, $ra
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_read_int
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29296
	li	$v0, 7
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_create_array
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	j	beq_cont.29297
beq_else.29296:
	li	$v1, 7
	sw	$v0, -14($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	read_net_item.2745
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	lw	$v1, -13($sp)
	lw	$a0, -14($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29297:
	lw	$v1, -11($sp)
	lw	$a0, -12($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29295:
	lw	$v1, -9($sp)
	lw	$a0, -10($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29293:
	lw	$v1, -7($sp)
	lw	$a0, -8($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29291:
	lw	$v1, -5($sp)
	lw	$a0, -6($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29289:
	lw	$v1, -3($sp)
	lw	$a0, -4($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29287:
	lw	$v1, -1($sp)
	lw	$a0, -2($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29285:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29298
	jr	$ra
beq_else.29298:
	li	$v1, min_caml_and_net
	lw	$a0, 0($sp)
	add	$at, $v1, $a0
	sw	$v0, 0($at)
	li	$v0, 1
	add	$v0, $a0, $v0
	li	$v1, 0
	sw	$v0, -15($sp)
	sw	$v1, -16($sp)
	move	$t8, $ra
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_read_int
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29300
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_create_array
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	j	beq_cont.29301
beq_else.29300:
	li	$v1, 1
	sw	$v0, -17($sp)
	sw	$v1, -18($sp)
	move	$t8, $ra
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_read_int
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29302
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_create_array
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	j	beq_cont.29303
beq_else.29302:
	li	$v1, 2
	sw	$v0, -19($sp)
	sw	$v1, -20($sp)
	move	$t8, $ra
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_read_int
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29304
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_create_array
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	j	beq_cont.29305
beq_else.29304:
	li	$v1, 3
	sw	$v0, -21($sp)
	sw	$v1, -22($sp)
	move	$t8, $ra
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_read_int
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29306
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_create_array
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	j	beq_cont.29307
beq_else.29306:
	li	$v1, 4
	sw	$v0, -23($sp)
	sw	$v1, -24($sp)
	move	$t8, $ra
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_read_int
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29308
	li	$v0, 5
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_create_array
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	j	beq_cont.29309
beq_else.29308:
	li	$v1, 5
	sw	$v0, -25($sp)
	sw	$v1, -26($sp)
	move	$t8, $ra
	sw	$t8, -27($sp)
	addi	$sp, $sp, -28
	jal	min_caml_read_int
	addi	$sp, $sp, 28
	lw	$t8, -27($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29310
	li	$v0, 6
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -27($sp)
	addi	$sp, $sp, -28
	jal	min_caml_create_array
	addi	$sp, $sp, 28
	lw	$t8, -27($sp)
	move	$ra, $t8
	j	beq_cont.29311
beq_else.29310:
	li	$v1, 6
	sw	$v0, -27($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	read_net_item.2745
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	lw	$v1, -26($sp)
	lw	$a0, -27($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29311:
	lw	$v1, -24($sp)
	lw	$a0, -25($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29309:
	lw	$v1, -22($sp)
	lw	$a0, -23($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29307:
	lw	$v1, -20($sp)
	lw	$a0, -21($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29305:
	lw	$v1, -18($sp)
	lw	$a0, -19($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29303:
	lw	$v1, -16($sp)
	lw	$a0, -17($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29301:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29312
	jr	$ra
beq_else.29312:
	li	$v1, min_caml_and_net
	lw	$a0, -15($sp)
	add	$at, $v1, $a0
	sw	$v0, 0($at)
	li	$v0, 1
	add	$v0, $a0, $v0
	li	$v1, 0
	sw	$v0, -28($sp)
	sw	$v1, -29($sp)
	move	$t8, $ra
	sw	$t8, -30($sp)
	addi	$sp, $sp, -31
	jal	min_caml_read_int
	addi	$sp, $sp, 31
	lw	$t8, -30($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29314
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -30($sp)
	addi	$sp, $sp, -31
	jal	min_caml_create_array
	addi	$sp, $sp, 31
	lw	$t8, -30($sp)
	move	$ra, $t8
	j	beq_cont.29315
beq_else.29314:
	li	$v1, 1
	sw	$v0, -30($sp)
	sw	$v1, -31($sp)
	move	$t8, $ra
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_read_int
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29316
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_create_array
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	move	$ra, $t8
	j	beq_cont.29317
beq_else.29316:
	li	$v1, 2
	sw	$v0, -32($sp)
	sw	$v1, -33($sp)
	move	$t8, $ra
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_read_int
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29318
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_create_array
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	j	beq_cont.29319
beq_else.29318:
	li	$v1, 3
	sw	$v0, -34($sp)
	sw	$v1, -35($sp)
	move	$t8, $ra
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	min_caml_read_int
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29320
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	min_caml_create_array
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	j	beq_cont.29321
beq_else.29320:
	li	$v1, 4
	sw	$v0, -36($sp)
	sw	$v1, -37($sp)
	move	$t8, $ra
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	min_caml_read_int
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29322
	li	$v0, 5
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	min_caml_create_array
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	j	beq_cont.29323
beq_else.29322:
	li	$v1, 5
	sw	$v0, -38($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	read_net_item.2745
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	lw	$v1, -37($sp)
	lw	$a0, -38($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29323:
	lw	$v1, -35($sp)
	lw	$a0, -36($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29321:
	lw	$v1, -33($sp)
	lw	$a0, -34($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29319:
	lw	$v1, -31($sp)
	lw	$a0, -32($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29317:
	lw	$v1, -29($sp)
	lw	$a0, -30($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29315:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29324
	jr	$ra
beq_else.29324:
	li	$v1, min_caml_and_net
	lw	$a0, -28($sp)
	add	$at, $v1, $a0
	sw	$v0, 0($at)
	li	$v0, 1
	add	$v0, $a0, $v0
	li	$v1, 0
	sw	$v0, -39($sp)
	sw	$v1, -40($sp)
	move	$t8, $ra
	sw	$t8, -41($sp)
	addi	$sp, $sp, -42
	jal	min_caml_read_int
	addi	$sp, $sp, 42
	lw	$t8, -41($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29326
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -41($sp)
	addi	$sp, $sp, -42
	jal	min_caml_create_array
	addi	$sp, $sp, 42
	lw	$t8, -41($sp)
	move	$ra, $t8
	j	beq_cont.29327
beq_else.29326:
	li	$v1, 1
	sw	$v0, -41($sp)
	sw	$v1, -42($sp)
	move	$t8, $ra
	sw	$t8, -43($sp)
	addi	$sp, $sp, -44
	jal	min_caml_read_int
	addi	$sp, $sp, 44
	lw	$t8, -43($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29328
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -43($sp)
	addi	$sp, $sp, -44
	jal	min_caml_create_array
	addi	$sp, $sp, 44
	lw	$t8, -43($sp)
	move	$ra, $t8
	j	beq_cont.29329
beq_else.29328:
	li	$v1, 2
	sw	$v0, -43($sp)
	sw	$v1, -44($sp)
	move	$t8, $ra
	sw	$t8, -45($sp)
	addi	$sp, $sp, -46
	jal	min_caml_read_int
	addi	$sp, $sp, 46
	lw	$t8, -45($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29330
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -45($sp)
	addi	$sp, $sp, -46
	jal	min_caml_create_array
	addi	$sp, $sp, 46
	lw	$t8, -45($sp)
	move	$ra, $t8
	j	beq_cont.29331
beq_else.29330:
	li	$v1, 3
	sw	$v0, -45($sp)
	sw	$v1, -46($sp)
	move	$t8, $ra
	sw	$t8, -47($sp)
	addi	$sp, $sp, -48
	jal	min_caml_read_int
	addi	$sp, $sp, 48
	lw	$t8, -47($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29332
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -47($sp)
	addi	$sp, $sp, -48
	jal	min_caml_create_array
	addi	$sp, $sp, 48
	lw	$t8, -47($sp)
	move	$ra, $t8
	j	beq_cont.29333
beq_else.29332:
	li	$v1, 4
	sw	$v0, -47($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -48($sp)
	addi	$sp, $sp, -49
	jal	read_net_item.2745
	addi	$sp, $sp, 49
	lw	$t8, -48($sp)
	move	$ra, $t8
	lw	$v1, -46($sp)
	lw	$a0, -47($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29333:
	lw	$v1, -44($sp)
	lw	$a0, -45($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29331:
	lw	$v1, -42($sp)
	lw	$a0, -43($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29329:
	lw	$v1, -40($sp)
	lw	$a0, -41($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29327:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29334
	jr	$ra
beq_else.29334:
	li	$v1, min_caml_and_net
	lw	$a0, -39($sp)
	add	$at, $v1, $a0
	sw	$v0, 0($at)
	li	$v0, 1
	add	$v0, $a0, $v0
	move	$a0, $v0
	j	read_and_network.2749
read_parameter.2751:
	move	$t8, $ra
	sw	$t8, 0($sp)
	addi	$sp, $sp, -1
	jal	read_screen_settings.2732
	addi	$sp, $sp, 1
	lw	$t8, 0($sp)
	move	$ra, $t8
	move	$t8, $ra
	sw	$t8, 0($sp)
	addi	$sp, $sp, -1
	jal	min_caml_read_int
	addi	$sp, $sp, 1
	lw	$t8, 0($sp)
	move	$ra, $t8
	move	$t8, $ra
	sw	$t8, 0($sp)
	addi	$sp, $sp, -1
	jal	min_caml_read_float
	addi	$sp, $sp, 1
	lw	$t8, 0($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.22657)
	mul.s	$f2, $f2, $f3
	swc1	$f2, 0($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	min_caml_sin
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, min_caml_light
	li	$v1, 1
	sw	$v1, -1($sp)
	sw	$v0, -2($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fneg
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -1($sp)
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	move	$t8, $ra
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_read_float
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.22657)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0($sp)
	swc1	$f2, -3($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_cos
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -3($sp)
	swc1	$f2, -4($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_sin
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, min_caml_light
	li	$v1, 0
	lwc1	$f3, -4($sp)
	mul.s	$f2, $f3, $f2
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	lwc1	$f2, -3($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_cos
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, min_caml_light
	li	$v1, 2
	lwc1	$f3, -4($sp)
	mul.s	$f2, $f3, $f2
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, min_caml_beam
	li	$v1, 0
	sw	$v1, -5($sp)
	sw	$v0, -6($sp)
	move	$t8, $ra
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_read_float
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -5($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 0
	sw	$v0, -7($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	read_nth_object.2739
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29336
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -7($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	j	beq_cont.29337
beq_else.29336:
	li	$v0, 1
	sw	$v0, -8($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	read_nth_object.2739
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29338
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -8($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	j	beq_cont.29339
beq_else.29338:
	li	$v0, 2
	sw	$v0, -9($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	read_nth_object.2739
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29340
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -9($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	j	beq_cont.29341
beq_else.29340:
	li	$v0, 3
	sw	$v0, -10($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	read_nth_object.2739
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29342
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -10($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	j	beq_cont.29343
beq_else.29342:
	li	$v0, 4
	sw	$v0, -11($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	read_nth_object.2739
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29344
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -11($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	j	beq_cont.29345
beq_else.29344:
	li	$v0, 5
	sw	$v0, -12($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	read_nth_object.2739
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29346
	li	$v0, min_caml_n_objects
	li	$v1, 0
	lw	$a0, -12($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	j	beq_cont.29347
beq_else.29346:
	li	$v0, 6
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	read_object.2741
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
beq_cont.29347:
beq_cont.29345:
beq_cont.29343:
beq_cont.29341:
beq_cont.29339:
beq_cont.29337:
	li	$v0, 0
	li	$v1, 0
	sw	$v0, -13($sp)
	sw	$v1, -14($sp)
	move	$t8, $ra
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_read_int
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29348
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_create_array
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	j	beq_cont.29349
beq_else.29348:
	li	$v1, 1
	sw	$v0, -15($sp)
	sw	$v1, -16($sp)
	move	$t8, $ra
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_read_int
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29350
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_create_array
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	j	beq_cont.29351
beq_else.29350:
	li	$v1, 2
	sw	$v0, -17($sp)
	sw	$v1, -18($sp)
	move	$t8, $ra
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_read_int
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29352
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_create_array
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	j	beq_cont.29353
beq_else.29352:
	li	$v1, 3
	sw	$v0, -19($sp)
	sw	$v1, -20($sp)
	move	$t8, $ra
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_read_int
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29354
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_create_array
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	j	beq_cont.29355
beq_else.29354:
	li	$v1, 4
	sw	$v0, -21($sp)
	sw	$v1, -22($sp)
	move	$t8, $ra
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_read_int
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29356
	li	$v0, 5
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_create_array
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	j	beq_cont.29357
beq_else.29356:
	li	$v1, 5
	sw	$v0, -23($sp)
	sw	$v1, -24($sp)
	move	$t8, $ra
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_read_int
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29358
	li	$v0, 6
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_create_array
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	j	beq_cont.29359
beq_else.29358:
	li	$v1, 6
	sw	$v0, -25($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -26($sp)
	addi	$sp, $sp, -27
	jal	read_net_item.2745
	addi	$sp, $sp, 27
	lw	$t8, -26($sp)
	move	$ra, $t8
	lw	$v1, -24($sp)
	lw	$a0, -25($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29359:
	lw	$v1, -22($sp)
	lw	$a0, -23($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29357:
	lw	$v1, -20($sp)
	lw	$a0, -21($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29355:
	lw	$v1, -18($sp)
	lw	$a0, -19($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29353:
	lw	$v1, -16($sp)
	lw	$a0, -17($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29351:
	lw	$v1, -14($sp)
	lw	$a0, -15($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29349:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29360
	j	beq_cont.29361
beq_else.29360:
	li	$v1, min_caml_and_net
	lw	$a0, -13($sp)
	add	$at, $v1, $a0
	sw	$v0, 0($at)
	li	$v0, 1
	li	$v1, 0
	sw	$v0, -26($sp)
	sw	$v1, -27($sp)
	move	$t8, $ra
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_read_int
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29362
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_create_array
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	j	beq_cont.29363
beq_else.29362:
	li	$v1, 1
	sw	$v0, -28($sp)
	sw	$v1, -29($sp)
	move	$t8, $ra
	sw	$t8, -30($sp)
	addi	$sp, $sp, -31
	jal	min_caml_read_int
	addi	$sp, $sp, 31
	lw	$t8, -30($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29364
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -30($sp)
	addi	$sp, $sp, -31
	jal	min_caml_create_array
	addi	$sp, $sp, 31
	lw	$t8, -30($sp)
	move	$ra, $t8
	j	beq_cont.29365
beq_else.29364:
	li	$v1, 2
	sw	$v0, -30($sp)
	sw	$v1, -31($sp)
	move	$t8, $ra
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_read_int
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29366
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_create_array
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	move	$ra, $t8
	j	beq_cont.29367
beq_else.29366:
	li	$v1, 3
	sw	$v0, -32($sp)
	sw	$v1, -33($sp)
	move	$t8, $ra
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_read_int
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29368
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_create_array
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	j	beq_cont.29369
beq_else.29368:
	li	$v1, 4
	sw	$v0, -34($sp)
	sw	$v1, -35($sp)
	move	$t8, $ra
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	min_caml_read_int
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29370
	li	$v0, 5
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	min_caml_create_array
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	j	beq_cont.29371
beq_else.29370:
	li	$v1, 5
	sw	$v0, -36($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -37($sp)
	addi	$sp, $sp, -38
	jal	read_net_item.2745
	addi	$sp, $sp, 38
	lw	$t8, -37($sp)
	move	$ra, $t8
	lw	$v1, -35($sp)
	lw	$a0, -36($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29371:
	lw	$v1, -33($sp)
	lw	$a0, -34($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29369:
	lw	$v1, -31($sp)
	lw	$a0, -32($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29367:
	lw	$v1, -29($sp)
	lw	$a0, -30($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29365:
	lw	$v1, -27($sp)
	lw	$a0, -28($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29363:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29372
	j	beq_cont.29373
beq_else.29372:
	li	$v1, min_caml_and_net
	lw	$a0, -26($sp)
	add	$at, $v1, $a0
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 0
	sw	$v0, -37($sp)
	sw	$v1, -38($sp)
	move	$t8, $ra
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_read_int
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29374
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_create_array
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	j	beq_cont.29375
beq_else.29374:
	li	$v1, 1
	sw	$v0, -39($sp)
	sw	$v1, -40($sp)
	move	$t8, $ra
	sw	$t8, -41($sp)
	addi	$sp, $sp, -42
	jal	min_caml_read_int
	addi	$sp, $sp, 42
	lw	$t8, -41($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29376
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -41($sp)
	addi	$sp, $sp, -42
	jal	min_caml_create_array
	addi	$sp, $sp, 42
	lw	$t8, -41($sp)
	move	$ra, $t8
	j	beq_cont.29377
beq_else.29376:
	li	$v1, 2
	sw	$v0, -41($sp)
	sw	$v1, -42($sp)
	move	$t8, $ra
	sw	$t8, -43($sp)
	addi	$sp, $sp, -44
	jal	min_caml_read_int
	addi	$sp, $sp, 44
	lw	$t8, -43($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29378
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -43($sp)
	addi	$sp, $sp, -44
	jal	min_caml_create_array
	addi	$sp, $sp, 44
	lw	$t8, -43($sp)
	move	$ra, $t8
	j	beq_cont.29379
beq_else.29378:
	li	$v1, 3
	sw	$v0, -43($sp)
	sw	$v1, -44($sp)
	move	$t8, $ra
	sw	$t8, -45($sp)
	addi	$sp, $sp, -46
	jal	min_caml_read_int
	addi	$sp, $sp, 46
	lw	$t8, -45($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29380
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -45($sp)
	addi	$sp, $sp, -46
	jal	min_caml_create_array
	addi	$sp, $sp, 46
	lw	$t8, -45($sp)
	move	$ra, $t8
	j	beq_cont.29381
beq_else.29380:
	li	$v1, 4
	sw	$v0, -45($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -46($sp)
	addi	$sp, $sp, -47
	jal	read_net_item.2745
	addi	$sp, $sp, 47
	lw	$t8, -46($sp)
	move	$ra, $t8
	lw	$v1, -44($sp)
	lw	$a0, -45($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29381:
	lw	$v1, -42($sp)
	lw	$a0, -43($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29379:
	lw	$v1, -40($sp)
	lw	$a0, -41($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29377:
	lw	$v1, -38($sp)
	lw	$a0, -39($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29375:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29382
	j	beq_cont.29383
beq_else.29382:
	li	$v1, min_caml_and_net
	lw	$a0, -37($sp)
	add	$at, $v1, $a0
	sw	$v0, 0($at)
	li	$v0, 3
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -46($sp)
	addi	$sp, $sp, -47
	jal	read_and_network.2749
	addi	$sp, $sp, 47
	lw	$t8, -46($sp)
	move	$ra, $t8
beq_cont.29383:
beq_cont.29373:
beq_cont.29361:
	li	$v0, min_caml_or_net
	li	$v1, 0
	li	$a0, 0
	li	$a1, 0
	sw	$v1, -46($sp)
	sw	$v0, -47($sp)
	sw	$a0, -48($sp)
	sw	$a1, -49($sp)
	move	$t8, $ra
	sw	$t8, -50($sp)
	addi	$sp, $sp, -51
	jal	min_caml_read_int
	addi	$sp, $sp, 51
	lw	$t8, -50($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29384
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -50($sp)
	addi	$sp, $sp, -51
	jal	min_caml_create_array
	addi	$sp, $sp, 51
	lw	$t8, -50($sp)
	move	$ra, $t8
	j	beq_cont.29385
beq_else.29384:
	li	$v1, 1
	sw	$v0, -50($sp)
	sw	$v1, -51($sp)
	move	$t8, $ra
	sw	$t8, -52($sp)
	addi	$sp, $sp, -53
	jal	min_caml_read_int
	addi	$sp, $sp, 53
	lw	$t8, -52($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29386
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -52($sp)
	addi	$sp, $sp, -53
	jal	min_caml_create_array
	addi	$sp, $sp, 53
	lw	$t8, -52($sp)
	move	$ra, $t8
	j	beq_cont.29387
beq_else.29386:
	li	$v1, 2
	sw	$v0, -52($sp)
	sw	$v1, -53($sp)
	move	$t8, $ra
	sw	$t8, -54($sp)
	addi	$sp, $sp, -55
	jal	min_caml_read_int
	addi	$sp, $sp, 55
	lw	$t8, -54($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29388
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -54($sp)
	addi	$sp, $sp, -55
	jal	min_caml_create_array
	addi	$sp, $sp, 55
	lw	$t8, -54($sp)
	move	$ra, $t8
	j	beq_cont.29389
beq_else.29388:
	li	$v1, 3
	sw	$v0, -54($sp)
	sw	$v1, -55($sp)
	move	$t8, $ra
	sw	$t8, -56($sp)
	addi	$sp, $sp, -57
	jal	min_caml_read_int
	addi	$sp, $sp, 57
	lw	$t8, -56($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29390
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -56($sp)
	addi	$sp, $sp, -57
	jal	min_caml_create_array
	addi	$sp, $sp, 57
	lw	$t8, -56($sp)
	move	$ra, $t8
	j	beq_cont.29391
beq_else.29390:
	li	$v1, 4
	sw	$v0, -56($sp)
	sw	$v1, -57($sp)
	move	$t8, $ra
	sw	$t8, -58($sp)
	addi	$sp, $sp, -59
	jal	min_caml_read_int
	addi	$sp, $sp, 59
	lw	$t8, -58($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29392
	li	$v0, 5
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -58($sp)
	addi	$sp, $sp, -59
	jal	min_caml_create_array
	addi	$sp, $sp, 59
	lw	$t8, -58($sp)
	move	$ra, $t8
	j	beq_cont.29393
beq_else.29392:
	li	$v1, 5
	sw	$v0, -58($sp)
	sw	$v1, -59($sp)
	move	$t8, $ra
	sw	$t8, -60($sp)
	addi	$sp, $sp, -61
	jal	min_caml_read_int
	addi	$sp, $sp, 61
	lw	$t8, -60($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29394
	li	$v0, 6
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -60($sp)
	addi	$sp, $sp, -61
	jal	min_caml_create_array
	addi	$sp, $sp, 61
	lw	$t8, -60($sp)
	move	$ra, $t8
	j	beq_cont.29395
beq_else.29394:
	li	$v1, 6
	sw	$v0, -60($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -61($sp)
	addi	$sp, $sp, -62
	jal	read_net_item.2745
	addi	$sp, $sp, 62
	lw	$t8, -61($sp)
	move	$ra, $t8
	lw	$v1, -59($sp)
	lw	$a0, -60($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29395:
	lw	$v1, -57($sp)
	lw	$a0, -58($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29393:
	lw	$v1, -55($sp)
	lw	$a0, -56($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29391:
	lw	$v1, -53($sp)
	lw	$a0, -54($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29389:
	lw	$v1, -51($sp)
	lw	$a0, -52($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29387:
	lw	$v1, -49($sp)
	lw	$a0, -50($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29385:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29396
	li	$v1, 1
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -61($sp)
	addi	$sp, $sp, -62
	jal	min_caml_create_array
	addi	$sp, $sp, 62
	lw	$t8, -61($sp)
	move	$ra, $t8
	j	beq_cont.29397
beq_else.29396:
	li	$v1, 1
	li	$a0, 0
	sw	$v0, -61($sp)
	sw	$v1, -62($sp)
	sw	$a0, -63($sp)
	move	$t8, $ra
	sw	$t8, -64($sp)
	addi	$sp, $sp, -65
	jal	min_caml_read_int
	addi	$sp, $sp, 65
	lw	$t8, -64($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29398
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -64($sp)
	addi	$sp, $sp, -65
	jal	min_caml_create_array
	addi	$sp, $sp, 65
	lw	$t8, -64($sp)
	move	$ra, $t8
	j	beq_cont.29399
beq_else.29398:
	li	$v1, 1
	sw	$v0, -64($sp)
	sw	$v1, -65($sp)
	move	$t8, $ra
	sw	$t8, -66($sp)
	addi	$sp, $sp, -67
	jal	min_caml_read_int
	addi	$sp, $sp, 67
	lw	$t8, -66($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29400
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -66($sp)
	addi	$sp, $sp, -67
	jal	min_caml_create_array
	addi	$sp, $sp, 67
	lw	$t8, -66($sp)
	move	$ra, $t8
	j	beq_cont.29401
beq_else.29400:
	li	$v1, 2
	sw	$v0, -66($sp)
	sw	$v1, -67($sp)
	move	$t8, $ra
	sw	$t8, -68($sp)
	addi	$sp, $sp, -69
	jal	min_caml_read_int
	addi	$sp, $sp, 69
	lw	$t8, -68($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29402
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -68($sp)
	addi	$sp, $sp, -69
	jal	min_caml_create_array
	addi	$sp, $sp, 69
	lw	$t8, -68($sp)
	move	$ra, $t8
	j	beq_cont.29403
beq_else.29402:
	li	$v1, 3
	sw	$v0, -68($sp)
	sw	$v1, -69($sp)
	move	$t8, $ra
	sw	$t8, -70($sp)
	addi	$sp, $sp, -71
	jal	min_caml_read_int
	addi	$sp, $sp, 71
	lw	$t8, -70($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29404
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -70($sp)
	addi	$sp, $sp, -71
	jal	min_caml_create_array
	addi	$sp, $sp, 71
	lw	$t8, -70($sp)
	move	$ra, $t8
	j	beq_cont.29405
beq_else.29404:
	li	$v1, 4
	sw	$v0, -70($sp)
	sw	$v1, -71($sp)
	move	$t8, $ra
	sw	$t8, -72($sp)
	addi	$sp, $sp, -73
	jal	min_caml_read_int
	addi	$sp, $sp, 73
	lw	$t8, -72($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29406
	li	$v0, 5
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -72($sp)
	addi	$sp, $sp, -73
	jal	min_caml_create_array
	addi	$sp, $sp, 73
	lw	$t8, -72($sp)
	move	$ra, $t8
	j	beq_cont.29407
beq_else.29406:
	li	$v1, 5
	sw	$v0, -72($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -73($sp)
	addi	$sp, $sp, -74
	jal	read_net_item.2745
	addi	$sp, $sp, 74
	lw	$t8, -73($sp)
	move	$ra, $t8
	lw	$v1, -71($sp)
	lw	$a0, -72($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29407:
	lw	$v1, -69($sp)
	lw	$a0, -70($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29405:
	lw	$v1, -67($sp)
	lw	$a0, -68($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29403:
	lw	$v1, -65($sp)
	lw	$a0, -66($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29401:
	lw	$v1, -63($sp)
	lw	$a0, -64($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29399:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29408
	li	$v1, 2
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -73($sp)
	addi	$sp, $sp, -74
	jal	min_caml_create_array
	addi	$sp, $sp, 74
	lw	$t8, -73($sp)
	move	$ra, $t8
	j	beq_cont.29409
beq_else.29408:
	li	$v1, 2
	li	$a0, 0
	sw	$v0, -73($sp)
	sw	$v1, -74($sp)
	sw	$a0, -75($sp)
	move	$t8, $ra
	sw	$t8, -76($sp)
	addi	$sp, $sp, -77
	jal	min_caml_read_int
	addi	$sp, $sp, 77
	lw	$t8, -76($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29410
	li	$v0, 1
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -76($sp)
	addi	$sp, $sp, -77
	jal	min_caml_create_array
	addi	$sp, $sp, 77
	lw	$t8, -76($sp)
	move	$ra, $t8
	j	beq_cont.29411
beq_else.29410:
	li	$v1, 1
	sw	$v0, -76($sp)
	sw	$v1, -77($sp)
	move	$t8, $ra
	sw	$t8, -78($sp)
	addi	$sp, $sp, -79
	jal	min_caml_read_int
	addi	$sp, $sp, 79
	lw	$t8, -78($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29412
	li	$v0, 2
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -78($sp)
	addi	$sp, $sp, -79
	jal	min_caml_create_array
	addi	$sp, $sp, 79
	lw	$t8, -78($sp)
	move	$ra, $t8
	j	beq_cont.29413
beq_else.29412:
	li	$v1, 2
	sw	$v0, -78($sp)
	sw	$v1, -79($sp)
	move	$t8, $ra
	sw	$t8, -80($sp)
	addi	$sp, $sp, -81
	jal	min_caml_read_int
	addi	$sp, $sp, 81
	lw	$t8, -80($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29414
	li	$v0, 3
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -80($sp)
	addi	$sp, $sp, -81
	jal	min_caml_create_array
	addi	$sp, $sp, 81
	lw	$t8, -80($sp)
	move	$ra, $t8
	j	beq_cont.29415
beq_else.29414:
	li	$v1, 3
	sw	$v0, -80($sp)
	sw	$v1, -81($sp)
	move	$t8, $ra
	sw	$t8, -82($sp)
	addi	$sp, $sp, -83
	jal	min_caml_read_int
	addi	$sp, $sp, 83
	lw	$t8, -82($sp)
	move	$ra, $t8
	li	$v1, -1
	bne	$v0, $v1, beq_else.29416
	li	$v0, 4
	li	$v1, -1
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -82($sp)
	addi	$sp, $sp, -83
	jal	min_caml_create_array
	addi	$sp, $sp, 83
	lw	$t8, -82($sp)
	move	$ra, $t8
	j	beq_cont.29417
beq_else.29416:
	li	$v1, 4
	sw	$v0, -82($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -83($sp)
	addi	$sp, $sp, -84
	jal	read_net_item.2745
	addi	$sp, $sp, 84
	lw	$t8, -83($sp)
	move	$ra, $t8
	lw	$v1, -81($sp)
	lw	$a0, -82($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29417:
	lw	$v1, -79($sp)
	lw	$a0, -80($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29415:
	lw	$v1, -77($sp)
	lw	$a0, -78($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29413:
	lw	$v1, -75($sp)
	lw	$a0, -76($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29411:
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a0, -1
	bne	$v1, $a0, beq_else.29418
	li	$v1, 3
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -83($sp)
	addi	$sp, $sp, -84
	jal	min_caml_create_array
	addi	$sp, $sp, 84
	lw	$t8, -83($sp)
	move	$ra, $t8
	j	beq_cont.29419
beq_else.29418:
	li	$v1, 3
	sw	$v0, -83($sp)
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -84($sp)
	addi	$sp, $sp, -85
	jal	read_or_network.2747
	addi	$sp, $sp, 85
	lw	$t8, -84($sp)
	move	$ra, $t8
	lw	$v1, -74($sp)
	lw	$a0, -83($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29419:
	lw	$v1, -62($sp)
	lw	$a0, -73($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29409:
	lw	$v1, -48($sp)
	lw	$a0, -61($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.29397:
	lw	$v1, -46($sp)
	lw	$a0, -47($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	jr	$ra
solver_rect.2762:
	li	$v0, 0
	li	$v1, 1
	li	$a2, 2
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	swc1	$f14, 0($sp)
	sw	$a2, -1($sp)
	swc1	$f13, -2($sp)
	sw	$v1, -3($sp)
	swc1	$f12, -4($sp)
	sw	$v0, -5($sp)
	sw	$a1, -6($sp)
	sw	$a0, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fiszero
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29421
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	lw	$a0, 6($v0)
	lw	$a1, -5($sp)
	lw	$a2, -6($sp)
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	sw	$v1, -8($sp)
	sw	$a0, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fisneg
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -9($sp)
	bne	$a0, $v1, beq_else.29423
	j	beq_cont.29424
beq_else.29423:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29425
	li	$v0, 1
	j	beq_cont.29426
beq_else.29425:
	li	$v0, 0
beq_cont.29426:
beq_cont.29424:
	lw	$v1, -5($sp)
	lw	$a0, -8($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	li	$a1, 0
	bne	$v0, $a1, beq_else.29427
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fneg
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	j	beq_cont.29428
beq_else.29427:
beq_cont.29428:
	lwc1	$f3, -4($sp)
	sub.s	$f2, $f2, $f3
	lw	$v0, -5($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	inv.s	$f1, $f4
	mul.s	$f2, $f2, $f1
	lw	$v0, -3($sp)
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	lwc1	$f5, -2($sp)
	add.s	$f4, $f4, $f5
	swc1	$f2, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fabs
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -3($sp)
	lw	$v1, -8($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fless
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29429
	li	$v0, 0
	j	beq_cont.29430
beq_else.29429:
	lw	$v0, -1($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -10($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, 0($sp)
	add.s	$f2, $f2, $f4
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fabs
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -1($sp)
	lw	$v1, -8($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fless
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29431
	li	$v0, 0
	j	beq_cont.29432
beq_else.29431:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -10($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.29432:
beq_cont.29430:
	j	beq_cont.29422
beq_else.29421:
	li	$v0, 0
beq_cont.29422:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29433
	li	$v0, 1
	li	$v1, 2
	li	$a0, 0
	lw	$a1, -6($sp)
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	sw	$a0, -11($sp)
	sw	$v1, -12($sp)
	sw	$v0, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fiszero
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29434
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	lw	$a0, 6($v0)
	lw	$a1, -13($sp)
	lw	$a2, -6($sp)
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	sw	$v1, -14($sp)
	sw	$a0, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fisneg
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -15($sp)
	bne	$a0, $v1, beq_else.29436
	j	beq_cont.29437
beq_else.29436:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29438
	li	$v0, 1
	j	beq_cont.29439
beq_else.29438:
	li	$v0, 0
beq_cont.29439:
beq_cont.29437:
	lw	$v1, -13($sp)
	lw	$a0, -14($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	li	$a1, 0
	bne	$v0, $a1, beq_else.29440
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fneg
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	j	beq_cont.29441
beq_else.29440:
beq_cont.29441:
	lwc1	$f3, -2($sp)
	sub.s	$f2, $f2, $f3
	lw	$v0, -13($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	inv.s	$f1, $f4
	mul.s	$f2, $f2, $f1
	lw	$v0, -12($sp)
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	lwc1	$f5, 0($sp)
	add.s	$f4, $f4, $f5
	swc1	$f2, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fabs
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -12($sp)
	lw	$v1, -14($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fless
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29442
	li	$v0, 0
	j	beq_cont.29443
beq_else.29442:
	lw	$v0, -11($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -16($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -4($sp)
	add.s	$f2, $f2, $f4
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fabs
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -11($sp)
	lw	$v1, -14($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fless
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29444
	li	$v0, 0
	j	beq_cont.29445
beq_else.29444:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -16($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.29445:
beq_cont.29443:
	j	beq_cont.29435
beq_else.29434:
	li	$v0, 0
beq_cont.29435:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29446
	li	$v0, 2
	li	$v1, 0
	li	$a0, 1
	lw	$a1, -6($sp)
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	sw	$a0, -17($sp)
	sw	$v1, -18($sp)
	sw	$v0, -19($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fiszero
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29447
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	lw	$v0, 6($v0)
	lw	$a0, -19($sp)
	lw	$a1, -6($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	sw	$v1, -20($sp)
	sw	$v0, -21($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_fisneg
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -21($sp)
	bne	$a0, $v1, beq_else.29449
	j	beq_cont.29450
beq_else.29449:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29451
	li	$v0, 1
	j	beq_cont.29452
beq_else.29451:
	li	$v0, 0
beq_cont.29452:
beq_cont.29450:
	lw	$v1, -19($sp)
	lw	$a0, -20($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	li	$a1, 0
	bne	$v0, $a1, beq_else.29453
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_fneg
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	j	beq_cont.29454
beq_else.29453:
beq_cont.29454:
	lwc1	$f3, 0($sp)
	sub.s	$f2, $f2, $f3
	lw	$v0, -19($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$v0, -18($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f3, $f2, $f3
	lwc1	$f4, -4($sp)
	add.s	$f3, $f3, $f4
	swc1	$f2, -22($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fabs
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -18($sp)
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fless
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29455
	li	$v0, 0
	j	beq_cont.29456
beq_else.29455:
	lw	$v0, -17($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -22($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -2($sp)
	add.s	$f2, $f2, $f4
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fabs
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -17($sp)
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fless
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29457
	li	$v0, 0
	j	beq_cont.29458
beq_else.29457:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -22($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.29458:
beq_cont.29456:
	j	beq_cont.29448
beq_else.29447:
	li	$v0, 0
beq_cont.29448:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29459
	li	$v0, 0
	jr	$ra
beq_else.29459:
	li	$v0, 3
	jr	$ra
beq_else.29446:
	li	$v0, 2
	jr	$ra
beq_else.29433:
	li	$v0, 1
	jr	$ra
solver_second.2787:
	li	$v0, 0
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	li	$v0, 1
	add	$at, $a1, $v0
	lwc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $a1, $v0
	lwc1	$f4, 0($at)
	swc1	$f14, 0($sp)
	swc1	$f13, -1($sp)
	swc1	$f12, -2($sp)
	sw	$a1, -3($sp)
	swc1	$f2, -4($sp)
	swc1	$f4, -5($sp)
	swc1	$f3, -6($sp)
	sw	$a0, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fsqr
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -6($sp)
	swc1	$f2, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fsqr
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -8($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, -5($sp)
	swc1	$f2, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fsqr
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -9($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29460
	j	beq_cont.29461
beq_else.29460:
	lwc1	$f3, -5($sp)
	lwc1	$f4, -6($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -4($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29461:
	swc1	$f2, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fiszero
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29462
	li	$v0, 0
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	li	$v0, 1
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	lwc1	$f5, -2($sp)
	mul.s	$f6, $f2, $f5
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	lwc1	$f7, -1($sp)
	mul.s	$f8, $f3, $f7
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f9, 0($at)
	mul.s	$f8, $f8, $f9
	add.s	$f6, $f6, $f8
	lwc1	$f8, 0($sp)
	mul.s	$f9, $f4, $f8
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f10, 0($at)
	mul.s	$f9, $f9, $f10
	add.s	$f6, $f6, $f9
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29463
	mov.s	$f2, $f6
	j	beq_cont.29464
beq_else.29463:
	mul.s	$f9, $f4, $f7
	mul.s	$f10, $f3, $f8
	add.s	$f9, $f9, $f10
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f10, 0($at)
	mul.s	$f9, $f9, $f10
	mul.s	$f10, $f2, $f8
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f10, $f4
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f10, 0($at)
	mul.s	$f4, $f4, $f10
	add.s	$f4, $f9, $f4
	mul.s	$f2, $f2, $f7
	mul.s	$f3, $f3, $f5
	add.s	$f2, $f2, $f3
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f4, $f2
	swc1	$f6, -11($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_fhalf
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -11($sp)
	add.s	$f2, $f3, $f2
beq_cont.29464:
	lwc1	$f3, -2($sp)
	swc1	$f2, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fsqr
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -1($sp)
	swc1	$f2, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fsqr
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -13($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, 0($sp)
	swc1	$f2, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fsqr
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -14($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29465
	j	beq_cont.29466
beq_else.29465:
	lwc1	$f3, 0($sp)
	lwc1	$f4, -1($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -2($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29466:
	lw	$v1, 1($v0)
	li	$a0, 3
	bne	$v1, $a0, beq_else.29467
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f2, $f3
	j	beq_cont.29468
beq_else.29467:
beq_cont.29468:
	lwc1	$f3, -12($sp)
	swc1	$f2, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fsqr
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -15($sp)
	lwc1	$f4, -10($sp)
	mul.s	$f3, $f4, $f3
	sub.s	$f2, $f2, $f3
	swc1	$f2, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fispos
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29469
	li	$v0, 0
	jr	$ra
beq_else.29469:
	lwc1	$f2, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_sqrt
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29470
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fneg
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	j	beq_cont.29471
beq_else.29470:
beq_cont.29471:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f3, -12($sp)
	sub.s	$f2, $f2, $f3
	lwc1	$f3, -10($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
	jr	$ra
beq_else.29462:
	li	$v0, 0
	jr	$ra
solver.2793:
	li	$v0, min_caml_objects
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$v1, 0
	add	$at, $a2, $v1
	lwc1	$f2, 0($at)
	lw	$v1, 5($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	li	$v1, 1
	add	$at, $a2, $v1
	lwc1	$f3, 0($at)
	lw	$v1, 5($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	sub.s	$f3, $f3, $f4
	li	$v1, 2
	add	$at, $a2, $v1
	lwc1	$f4, 0($at)
	lw	$v1, 5($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f5, 0($at)
	sub.s	$f4, $f4, $f5
	lw	$v1, 1($v0)
	li	$a0, 1
	bne	$v1, $a0, beq_else.29472
	li	$v1, 0
	li	$a0, 1
	li	$a2, 2
	add	$at, $a1, $v1
	lwc1	$f5, 0($at)
	swc1	$f4, 0($sp)
	sw	$a2, -1($sp)
	swc1	$f3, -2($sp)
	sw	$a0, -3($sp)
	swc1	$f2, -4($sp)
	sw	$v1, -5($sp)
	sw	$a1, -6($sp)
	sw	$v0, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fiszero
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29473
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	lw	$a0, 6($v0)
	lw	$a1, -5($sp)
	lw	$a2, -6($sp)
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	sw	$v1, -8($sp)
	sw	$a0, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fisneg
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -9($sp)
	bne	$a0, $v1, beq_else.29475
	j	beq_cont.29476
beq_else.29475:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29477
	li	$v0, 1
	j	beq_cont.29478
beq_else.29477:
	li	$v0, 0
beq_cont.29478:
beq_cont.29476:
	lw	$v1, -5($sp)
	lw	$a0, -8($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	li	$a1, 0
	bne	$v0, $a1, beq_else.29479
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fneg
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	j	beq_cont.29480
beq_else.29479:
beq_cont.29480:
	lwc1	$f3, -4($sp)
	sub.s	$f2, $f2, $f3
	lw	$v0, -5($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	inv.s	$f1, $f4
	mul.s	$f2, $f2, $f1
	lw	$v0, -3($sp)
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	lwc1	$f5, -2($sp)
	add.s	$f4, $f4, $f5
	swc1	$f2, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fabs
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -3($sp)
	lw	$v1, -8($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fless
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29481
	li	$v0, 0
	j	beq_cont.29482
beq_else.29481:
	lw	$v0, -1($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -10($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, 0($sp)
	add.s	$f2, $f2, $f4
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fabs
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -1($sp)
	lw	$v1, -8($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fless
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29483
	li	$v0, 0
	j	beq_cont.29484
beq_else.29483:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -10($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.29484:
beq_cont.29482:
	j	beq_cont.29474
beq_else.29473:
	li	$v0, 0
beq_cont.29474:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29485
	li	$v0, 1
	li	$v1, 2
	li	$a0, 0
	lw	$a1, -6($sp)
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	sw	$a0, -11($sp)
	sw	$v1, -12($sp)
	sw	$v0, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fiszero
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29486
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	lw	$a0, 6($v0)
	lw	$a1, -13($sp)
	lw	$a2, -6($sp)
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	sw	$v1, -14($sp)
	sw	$a0, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fisneg
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -15($sp)
	bne	$a0, $v1, beq_else.29488
	j	beq_cont.29489
beq_else.29488:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29490
	li	$v0, 1
	j	beq_cont.29491
beq_else.29490:
	li	$v0, 0
beq_cont.29491:
beq_cont.29489:
	lw	$v1, -13($sp)
	lw	$a0, -14($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	li	$a1, 0
	bne	$v0, $a1, beq_else.29492
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fneg
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	j	beq_cont.29493
beq_else.29492:
beq_cont.29493:
	lwc1	$f3, -2($sp)
	sub.s	$f2, $f2, $f3
	lw	$v0, -13($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	inv.s	$f1, $f4
	mul.s	$f2, $f2, $f1
	lw	$v0, -12($sp)
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	lwc1	$f5, 0($sp)
	add.s	$f4, $f4, $f5
	swc1	$f2, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fabs
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -12($sp)
	lw	$v1, -14($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fless
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29494
	li	$v0, 0
	j	beq_cont.29495
beq_else.29494:
	lw	$v0, -11($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -16($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -4($sp)
	add.s	$f2, $f2, $f4
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fabs
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -11($sp)
	lw	$v1, -14($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fless
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29496
	li	$v0, 0
	j	beq_cont.29497
beq_else.29496:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -16($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.29497:
beq_cont.29495:
	j	beq_cont.29487
beq_else.29486:
	li	$v0, 0
beq_cont.29487:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29498
	li	$v0, 2
	li	$v1, 0
	li	$a0, 1
	lw	$a1, -6($sp)
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	sw	$a0, -17($sp)
	sw	$v1, -18($sp)
	sw	$v0, -19($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fiszero
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29499
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	lw	$v0, 6($v0)
	lw	$a0, -19($sp)
	lw	$a1, -6($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	sw	$v1, -20($sp)
	sw	$v0, -21($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_fisneg
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -21($sp)
	bne	$a0, $v1, beq_else.29501
	j	beq_cont.29502
beq_else.29501:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29503
	li	$v0, 1
	j	beq_cont.29504
beq_else.29503:
	li	$v0, 0
beq_cont.29504:
beq_cont.29502:
	lw	$v1, -19($sp)
	lw	$a0, -20($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	li	$a1, 0
	bne	$v0, $a1, beq_else.29505
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_fneg
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	j	beq_cont.29506
beq_else.29505:
beq_cont.29506:
	lwc1	$f3, 0($sp)
	sub.s	$f2, $f2, $f3
	lw	$v0, -19($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$v0, -18($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f3, $f2, $f3
	lwc1	$f4, -4($sp)
	add.s	$f3, $f3, $f4
	swc1	$f2, -22($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fabs
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -18($sp)
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fless
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29507
	li	$v0, 0
	j	beq_cont.29508
beq_else.29507:
	lw	$v0, -17($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -22($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -2($sp)
	add.s	$f2, $f2, $f4
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fabs
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -17($sp)
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fless
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29509
	li	$v0, 0
	j	beq_cont.29510
beq_else.29509:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -22($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.29510:
beq_cont.29508:
	j	beq_cont.29500
beq_else.29499:
	li	$v0, 0
beq_cont.29500:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29511
	li	$v0, 0
	jr	$ra
beq_else.29511:
	li	$v0, 3
	jr	$ra
beq_else.29498:
	li	$v0, 2
	jr	$ra
beq_else.29485:
	li	$v0, 1
	jr	$ra
beq_else.29472:
	li	$a0, 2
	bne	$v1, $a0, beq_else.29512
	lw	$v0, 4($v0)
	li	$v1, 0
	add	$at, $a1, $v1
	lwc1	$f5, 0($at)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	li	$v1, 1
	add	$at, $a1, $v1
	lwc1	$f6, 0($at)
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	li	$v1, 2
	add	$at, $a1, $v1
	lwc1	$f6, 0($at)
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	swc1	$f5, -23($sp)
	swc1	$f4, 0($sp)
	swc1	$f3, -2($sp)
	swc1	$f2, -4($sp)
	sw	$v0, -24($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_fispos
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29513
	li	$v0, 0
	jr	$ra
beq_else.29513:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	li	$a0, 0
	lw	$a1, -24($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	lwc1	$f3, -4($sp)
	mul.s	$f2, $f2, $f3
	li	$a0, 1
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, -2($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a0, 2
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, 0($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	sw	$v1, -25($sp)
	sw	$v0, -26($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -27($sp)
	addi	$sp, $sp, -28
	jal	min_caml_fneg
	addi	$sp, $sp, 28
	lw	$t8, -27($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -23($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$v0, -25($sp)
	lw	$v1, -26($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	jr	$ra
beq_else.29512:
	li	$v1, 0
	add	$at, $a1, $v1
	lwc1	$f5, 0($at)
	li	$v1, 1
	add	$at, $a1, $v1
	lwc1	$f6, 0($at)
	li	$v1, 2
	add	$at, $a1, $v1
	lwc1	$f7, 0($at)
	swc1	$f4, 0($sp)
	swc1	$f3, -2($sp)
	swc1	$f2, -4($sp)
	sw	$a1, -6($sp)
	swc1	$f5, -27($sp)
	swc1	$f7, -28($sp)
	swc1	$f6, -29($sp)
	sw	$v0, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -30($sp)
	addi	$sp, $sp, -31
	jal	min_caml_fsqr
	addi	$sp, $sp, 31
	lw	$t8, -30($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -29($sp)
	swc1	$f2, -30($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	jal	min_caml_fsqr
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -30($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, -28($sp)
	swc1	$f2, -31($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_fsqr
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -31($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29514
	j	beq_cont.29515
beq_else.29514:
	lwc1	$f3, -28($sp)
	lwc1	$f4, -29($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -27($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29515:
	swc1	$f2, -32($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_fiszero
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29516
	li	$v0, 0
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	li	$v0, 1
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	lwc1	$f5, -4($sp)
	mul.s	$f6, $f2, $f5
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	lwc1	$f7, -2($sp)
	mul.s	$f8, $f3, $f7
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f9, 0($at)
	mul.s	$f8, $f8, $f9
	add.s	$f6, $f6, $f8
	lwc1	$f8, 0($sp)
	mul.s	$f9, $f4, $f8
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f10, 0($at)
	mul.s	$f9, $f9, $f10
	add.s	$f6, $f6, $f9
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29517
	mov.s	$f2, $f6
	j	beq_cont.29518
beq_else.29517:
	mul.s	$f9, $f4, $f7
	mul.s	$f10, $f3, $f8
	add.s	$f9, $f9, $f10
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f10, 0($at)
	mul.s	$f9, $f9, $f10
	mul.s	$f10, $f2, $f8
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f10, $f4
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f10, 0($at)
	mul.s	$f4, $f4, $f10
	add.s	$f4, $f9, $f4
	mul.s	$f2, $f2, $f7
	mul.s	$f3, $f3, $f5
	add.s	$f2, $f2, $f3
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f4, $f2
	swc1	$f6, -33($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_fhalf
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -33($sp)
	add.s	$f2, $f3, $f2
beq_cont.29518:
	lwc1	$f3, -4($sp)
	swc1	$f2, -34($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -35($sp)
	addi	$sp, $sp, -36
	jal	min_caml_fsqr
	addi	$sp, $sp, 36
	lw	$t8, -35($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -2($sp)
	swc1	$f2, -35($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	min_caml_fsqr
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -35($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, 0($sp)
	swc1	$f2, -36($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -37($sp)
	addi	$sp, $sp, -38
	jal	min_caml_fsqr
	addi	$sp, $sp, 38
	lw	$t8, -37($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -36($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29519
	j	beq_cont.29520
beq_else.29519:
	lwc1	$f3, 0($sp)
	lwc1	$f4, -2($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -4($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29520:
	lw	$v1, 1($v0)
	li	$a0, 3
	bne	$v1, $a0, beq_else.29521
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f2, $f3
	j	beq_cont.29522
beq_else.29521:
beq_cont.29522:
	lwc1	$f3, -34($sp)
	swc1	$f2, -37($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	min_caml_fsqr
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -37($sp)
	lwc1	$f4, -32($sp)
	mul.s	$f3, $f4, $f3
	sub.s	$f2, $f2, $f3
	swc1	$f2, -38($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_fispos
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29523
	li	$v0, 0
	jr	$ra
beq_else.29523:
	lwc1	$f2, -38($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_sqrt
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29524
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_fneg
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	j	beq_cont.29525
beq_else.29524:
beq_cont.29525:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f3, -34($sp)
	sub.s	$f2, $f2, $f3
	lwc1	$f3, -32($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
	jr	$ra
beq_else.29516:
	li	$v0, 0
	jr	$ra
solver_rect_fast.2797:
	li	$v0, 0
	add	$at, $a2, $v0
	lwc1	$f2, 0($at)
	sub.s	$f2, $f2, $f12
	li	$v0, 1
	add	$at, $a2, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$v0, 1
	add	$at, $a1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f3, $f2, $f3
	add.s	$f3, $f3, $f13
	swc1	$f12, 0($sp)
	swc1	$f13, -1($sp)
	sw	$a2, -2($sp)
	swc1	$f14, -3($sp)
	swc1	$f2, -4($sp)
	sw	$a1, -5($sp)
	sw	$a0, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fabs
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -6($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fless
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29526
	li	$v0, 0
	j	beq_cont.29527
beq_else.29526:
	li	$v0, 2
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -4($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -3($sp)
	add.s	$f2, $f2, $f4
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fabs
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -6($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fless
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29528
	li	$v0, 0
	j	beq_cont.29529
beq_else.29528:
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fiszero
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29530
	li	$v0, 1
	j	beq_cont.29531
beq_else.29530:
	li	$v0, 0
beq_cont.29531:
beq_cont.29529:
beq_cont.29527:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29532
	li	$v0, 2
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -1($sp)
	sub.s	$f2, $f2, $f3
	li	$v0, 3
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	mul.s	$f2, $f2, $f4
	li	$v0, 0
	lw	$a0, -5($sp)
	add	$at, $a0, $v0
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	lwc1	$f5, 0($sp)
	add.s	$f4, $f4, $f5
	swc1	$f2, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fabs
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -6($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fless
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29533
	li	$v0, 0
	j	beq_cont.29534
beq_else.29533:
	li	$v0, 2
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -7($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -3($sp)
	add.s	$f2, $f2, $f4
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fabs
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -6($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fless
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29535
	li	$v0, 0
	j	beq_cont.29536
beq_else.29535:
	li	$v0, 3
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fiszero
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29537
	li	$v0, 1
	j	beq_cont.29538
beq_else.29537:
	li	$v0, 0
beq_cont.29538:
beq_cont.29536:
beq_cont.29534:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29539
	li	$v0, 4
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -3($sp)
	sub.s	$f2, $f2, $f3
	li	$v0, 5
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$v0, 0
	lw	$a0, -5($sp)
	add	$at, $a0, $v0
	lwc1	$f3, 0($at)
	mul.s	$f3, $f2, $f3
	lwc1	$f4, 0($sp)
	add.s	$f3, $f3, $f4
	swc1	$f2, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fabs
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -6($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fless
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29540
	li	$v0, 0
	j	beq_cont.29541
beq_else.29540:
	li	$v0, 1
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -8($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f4, -1($sp)
	add.s	$f2, $f2, $f4
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fabs
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -6($sp)
	lw	$v0, 4($v0)
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fless
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29542
	li	$v0, 0
	j	beq_cont.29543
beq_else.29542:
	li	$v0, 5
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fiszero
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29544
	li	$v0, 1
	j	beq_cont.29545
beq_else.29544:
	li	$v0, 0
beq_cont.29545:
beq_cont.29543:
beq_cont.29541:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29546
	li	$v0, 0
	jr	$ra
beq_else.29546:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -8($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 3
	jr	$ra
beq_else.29539:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -7($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 2
	jr	$ra
beq_else.29532:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -4($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
	jr	$ra
solver_second_fast.2810:
	li	$v0, 0
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	swc1	$f2, 0($sp)
	sw	$a0, -1($sp)
	swc1	$f14, -2($sp)
	swc1	$f13, -3($sp)
	swc1	$f12, -4($sp)
	sw	$a1, -5($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_fiszero
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29547
	li	$v0, 1
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -4($sp)
	mul.s	$f2, $f2, $f3
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	lwc1	$f5, -3($sp)
	mul.s	$f4, $f4, $f5
	add.s	$f2, $f2, $f4
	li	$v0, 3
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	lwc1	$f6, -2($sp)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	swc1	$f2, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fsqr
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -1($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -3($sp)
	swc1	$f2, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fsqr
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -1($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -7($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, -2($sp)
	swc1	$f2, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fsqr
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -1($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -8($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29548
	j	beq_cont.29549
beq_else.29548:
	lwc1	$f3, -2($sp)
	lwc1	$f4, -3($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -4($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29549:
	lw	$v1, 1($v0)
	li	$a0, 3
	bne	$v1, $a0, beq_else.29550
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f2, $f3
	j	beq_cont.29551
beq_else.29550:
beq_cont.29551:
	lwc1	$f3, -6($sp)
	swc1	$f2, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fsqr
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -9($sp)
	lwc1	$f4, 0($sp)
	mul.s	$f3, $f4, $f3
	sub.s	$f2, $f2, $f3
	swc1	$f2, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fispos
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29552
	li	$v0, 0
	jr	$ra
beq_else.29552:
	lw	$v0, -1($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29553
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -10($sp)
	sw	$v1, -11($sp)
	sw	$v0, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_sqrt
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -6($sp)
	sub.s	$f2, $f3, $f2
	li	$v0, 4
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lw	$v0, -11($sp)
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29554
beq_else.29553:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -10($sp)
	sw	$v1, -13($sp)
	sw	$v0, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_sqrt
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -6($sp)
	add.s	$f2, $f3, $f2
	li	$v0, 4
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lw	$v0, -13($sp)
	lw	$v1, -14($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.29554:
	li	$v0, 1
	jr	$ra
beq_else.29547:
	li	$v0, 0
	jr	$ra
solver_fast.2816:
	li	$v0, min_caml_objects
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$v1, 0
	add	$at, $a2, $v1
	lwc1	$f2, 0($at)
	lw	$v1, 5($v0)
	li	$a3, 0
	add	$at, $v1, $a3
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	li	$v1, 1
	add	$at, $a2, $v1
	lwc1	$f3, 0($at)
	lw	$v1, 5($v0)
	li	$a3, 1
	add	$at, $v1, $a3
	lwc1	$f4, 0($at)
	sub.s	$f3, $f3, $f4
	li	$v1, 2
	add	$at, $a2, $v1
	lwc1	$f4, 0($at)
	lw	$v1, 5($v0)
	li	$a2, 2
	add	$at, $v1, $a2
	lwc1	$f5, 0($at)
	sub.s	$f4, $f4, $f5
	lw	$v1, 1($a1)
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	lw	$a0, 1($v0)
	li	$a2, 1
	bne	$a0, $a2, beq_else.29555
	lw	$a0, 0($a1)
	move	$a2, $v1
	move	$a1, $a0
	move	$a0, $v0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	j	solver_rect_fast.2797
beq_else.29555:
	li	$a1, 2
	bne	$a0, $a1, beq_else.29556
	li	$v0, 0
	add	$at, $v1, $v0
	lwc1	$f5, 0($at)
	swc1	$f4, 0($sp)
	swc1	$f3, -1($sp)
	swc1	$f2, -2($sp)
	sw	$v1, -3($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_fisneg
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29557
	li	$v0, 0
	jr	$ra
beq_else.29557:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	li	$a0, 1
	lw	$a1, -3($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	lwc1	$f3, -2($sp)
	mul.s	$f2, $f2, $f3
	li	$a0, 2
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, -1($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a0, 3
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, 0($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
	jr	$ra
beq_else.29556:
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f5, 0($at)
	swc1	$f5, -4($sp)
	sw	$v0, -5($sp)
	swc1	$f4, 0($sp)
	swc1	$f3, -1($sp)
	swc1	$f2, -2($sp)
	sw	$v1, -3($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_fiszero
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29558
	li	$v0, 1
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -2($sp)
	mul.s	$f2, $f2, $f3
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	lwc1	$f5, -1($sp)
	mul.s	$f4, $f4, $f5
	add.s	$f2, $f2, $f4
	li	$v0, 3
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	lwc1	$f6, 0($sp)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	swc1	$f2, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fsqr
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -5($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -1($sp)
	swc1	$f2, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fsqr
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -5($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -7($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, 0($sp)
	swc1	$f2, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fsqr
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -5($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -8($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29559
	j	beq_cont.29560
beq_else.29559:
	lwc1	$f3, 0($sp)
	lwc1	$f4, -1($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -2($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29560:
	lw	$v1, 1($v0)
	li	$a0, 3
	bne	$v1, $a0, beq_else.29561
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f2, $f3
	j	beq_cont.29562
beq_else.29561:
beq_cont.29562:
	lwc1	$f3, -6($sp)
	swc1	$f2, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fsqr
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -9($sp)
	lwc1	$f4, -4($sp)
	mul.s	$f3, $f4, $f3
	sub.s	$f2, $f2, $f3
	swc1	$f2, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fispos
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29563
	li	$v0, 0
	jr	$ra
beq_else.29563:
	lw	$v0, -5($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29564
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -10($sp)
	sw	$v1, -11($sp)
	sw	$v0, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_sqrt
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -6($sp)
	sub.s	$f2, $f3, $f2
	li	$v0, 4
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lw	$v0, -11($sp)
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29565
beq_else.29564:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -10($sp)
	sw	$v1, -13($sp)
	sw	$v0, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_sqrt
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -6($sp)
	add.s	$f2, $f3, $f2
	li	$v0, 4
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lw	$v0, -13($sp)
	lw	$v1, -14($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.29565:
	li	$v0, 1
	jr	$ra
beq_else.29558:
	li	$v0, 0
	jr	$ra
solver_fast2.2834:
	li	$v0, min_caml_objects
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	lw	$v1, 10($v0)
	li	$a2, 0
	add	$at, $v1, $a2
	lwc1	$f2, 0($at)
	li	$a2, 1
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 2
	add	$at, $v1, $a2
	lwc1	$f4, 0($at)
	lw	$a2, 1($a1)
	add	$at, $a2, $a0
	lw	$a0, 0($at)
	lw	$a2, 1($v0)
	li	$a3, 1
	bne	$a2, $a3, beq_else.29566
	lw	$v1, 0($a1)
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	j	solver_rect_fast.2797
beq_else.29566:
	li	$a1, 2
	bne	$a2, $a1, beq_else.29567
	li	$v0, 0
	add	$at, $a0, $v0
	lwc1	$f2, 0($at)
	sw	$v1, 0($sp)
	sw	$a0, -1($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_fisneg
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29568
	li	$v0, 0
	jr	$ra
beq_else.29568:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	li	$a0, 0
	lw	$a1, -1($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	li	$a0, 3
	lw	$a1, 0($sp)
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
	jr	$ra
beq_else.29567:
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f5, 0($at)
	sw	$v0, -2($sp)
	swc1	$f5, -3($sp)
	sw	$v1, 0($sp)
	swc1	$f4, -4($sp)
	swc1	$f3, -5($sp)
	swc1	$f2, -6($sp)
	sw	$a0, -1($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fiszero
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29569
	li	$v0, 1
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -6($sp)
	mul.s	$f2, $f2, $f3
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	lwc1	$f4, -5($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$v0, 3
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	lwc1	$f4, -4($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$v0, 3
	lw	$a0, 0($sp)
	add	$at, $a0, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -7($sp)
	swc1	$f3, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fsqr
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -8($sp)
	lwc1	$f4, -3($sp)
	mul.s	$f3, $f4, $f3
	sub.s	$f2, $f2, $f3
	swc1	$f2, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fispos
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29570
	li	$v0, 0
	jr	$ra
beq_else.29570:
	lw	$v0, -2($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29571
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -9($sp)
	sw	$v1, -10($sp)
	sw	$v0, -11($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_sqrt
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -7($sp)
	sub.s	$f2, $f3, $f2
	li	$v0, 4
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lw	$v0, -10($sp)
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29572
beq_else.29571:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -9($sp)
	sw	$v1, -12($sp)
	sw	$v0, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_sqrt
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -7($sp)
	add.s	$f2, $f3, $f2
	li	$v0, 4
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lw	$v0, -12($sp)
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.29572:
	li	$v0, 1
	jr	$ra
beq_else.29569:
	li	$v0, 0
	jr	$ra
setup_rect_table.2837:
	li	$v0, 6
	lwc1	$f2, 0(l.22664)
	sw	$a1, 0($sp)
	sw	$a0, -1($sp)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_create_float_array
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	sw	$v0, -2($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fiszero
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29573
	li	$v0, 0
	lw	$v1, 0($sp)
	lw	$a0, 6($v1)
	li	$a1, 0
	lw	$a2, -1($sp)
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	sw	$v0, -3($sp)
	sw	$a0, -4($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_fisneg
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -4($sp)
	bne	$a0, $v1, beq_else.29575
	j	beq_cont.29576
beq_else.29575:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29577
	li	$v0, 1
	j	beq_cont.29578
beq_else.29577:
	li	$v0, 0
beq_cont.29578:
beq_cont.29576:
	lw	$v1, 0($sp)
	lw	$a0, 4($v1)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a0, 0
	bne	$v0, $a0, beq_else.29579
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_fneg
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	j	beq_cont.29580
beq_else.29579:
beq_cont.29580:
	lw	$v0, -3($sp)
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	lwc1	$f2, 0(l.22725)
	li	$a0, 0
	lw	$a1, -1($sp)
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29574
beq_else.29573:
	li	$v0, 1
	lwc1	$f2, 0(l.22664)
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.29574:
	li	$v0, 1
	lw	$a0, -1($sp)
	add	$at, $a0, $v0
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_fiszero
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29581
	li	$v0, 2
	lw	$v1, 0($sp)
	lw	$a0, 6($v1)
	li	$a1, 1
	lw	$a2, -1($sp)
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	sw	$v0, -5($sp)
	sw	$a0, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fisneg
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -6($sp)
	bne	$a0, $v1, beq_else.29583
	j	beq_cont.29584
beq_else.29583:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29585
	li	$v0, 1
	j	beq_cont.29586
beq_else.29585:
	li	$v0, 0
beq_cont.29586:
beq_cont.29584:
	lw	$v1, 0($sp)
	lw	$a0, 4($v1)
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a0, 0
	bne	$v0, $a0, beq_else.29587
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fneg
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	j	beq_cont.29588
beq_else.29587:
beq_cont.29588:
	lw	$v0, -5($sp)
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 3
	lwc1	$f2, 0(l.22725)
	li	$a0, 1
	lw	$a1, -1($sp)
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29582
beq_else.29581:
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.29582:
	li	$v0, 2
	lw	$a0, -1($sp)
	add	$at, $a0, $v0
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fiszero
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29589
	li	$v0, 4
	lw	$v1, 0($sp)
	lw	$a0, 6($v1)
	li	$a1, 2
	lw	$a2, -1($sp)
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	sw	$v0, -7($sp)
	sw	$a0, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fisneg
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -8($sp)
	bne	$a0, $v1, beq_else.29591
	j	beq_cont.29592
beq_else.29591:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29593
	li	$v0, 1
	j	beq_cont.29594
beq_else.29593:
	li	$v0, 0
beq_cont.29594:
beq_cont.29592:
	lw	$v1, 0($sp)
	lw	$v1, 4($v1)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f2, 0($at)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29595
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fneg
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	j	beq_cont.29596
beq_else.29595:
beq_cont.29596:
	lw	$v0, -7($sp)
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 5
	lwc1	$f2, 0(l.22725)
	li	$a0, 2
	lw	$a1, -1($sp)
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29590
beq_else.29589:
	li	$v0, 5
	lwc1	$f2, 0(l.22664)
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.29590:
	move	$v0, $v1
	jr	$ra
setup_surface_table.2840:
	li	$v0, 4
	lwc1	$f2, 0(l.22664)
	sw	$a1, 0($sp)
	sw	$a0, -1($sp)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_create_float_array
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	lw	$v1, 0($sp)
	lw	$a1, 4($v1)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	lw	$a1, 4($v1)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	lw	$a0, 4($v1)
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	swc1	$f2, -2($sp)
	sw	$v0, -3($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_fispos
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29597
	li	$v0, 0
	lwc1	$f2, 0(l.22664)
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29598
beq_else.29597:
	li	$v0, 0
	lwc1	$f2, 0(l.22726)
	lwc1	$f3, -2($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	lw	$a0, 0($sp)
	lw	$a1, 4($a0)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw	$v0, -4($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_fneg
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -4($sp)
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	lw	$a0, 0($sp)
	lw	$a1, 4($a0)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	lwc1	$f3, -2($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw	$v0, -5($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_fneg
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -5($sp)
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 3
	lw	$a0, 0($sp)
	lw	$a0, 4($a0)
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	lwc1	$f3, -2($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw	$v0, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fneg
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -6($sp)
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.29598:
	move	$v0, $v1
	jr	$ra
setup_second_table.2843:
	li	$v0, 5
	lwc1	$f2, 0(l.22664)
	sw	$a1, 0($sp)
	sw	$a0, -1($sp)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_create_float_array
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	li	$v1, 1
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f4, 0($at)
	sw	$v0, -2($sp)
	swc1	$f2, -3($sp)
	swc1	$f4, -4($sp)
	swc1	$f3, -5($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_fsqr
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, 0($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -5($sp)
	swc1	$f2, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fsqr
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, 0($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -6($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, -4($sp)
	swc1	$f2, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fsqr
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, 0($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -7($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29599
	j	beq_cont.29600
beq_else.29599:
	lwc1	$f3, -4($sp)
	lwc1	$f4, -5($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -3($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29600:
	li	$v1, 0
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	lw	$v1, 4($v0)
	li	$a1, 0
	add	$at, $v1, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	swc1	$f2, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fneg
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	lw	$v0, 0($sp)
	lw	$a0, 4($v0)
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	swc1	$f2, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fneg
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	lw	$v0, 0($sp)
	lw	$a0, 4($v0)
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	swc1	$f2, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fneg
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 0
	lw	$v1, -2($sp)
	lwc1	$f3, -8($sp)
	add	$at, $v1, $v0
	swc1	$f3, 0($at)
	lw	$v0, 0($sp)
	lw	$a0, 3($v0)
	li	$a1, 0
	bne	$a0, $a1, beq_else.29601
	li	$v0, 1
	lwc1	$f4, -9($sp)
	add	$at, $v1, $v0
	swc1	$f4, 0($at)
	li	$v0, 2
	lwc1	$f4, -10($sp)
	add	$at, $v1, $v0
	swc1	$f4, 0($at)
	li	$v0, 3
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29602
beq_else.29601:
	li	$a0, 1
	li	$a1, 2
	lw	$a2, -1($sp)
	add	$at, $a2, $a1
	lwc1	$f4, 0($at)
	lw	$a1, 9($v0)
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f5, 0($at)
	mul.s	$f4, $f4, $f5
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f5, 0($at)
	lw	$a1, 9($v0)
	li	$a3, 2
	add	$at, $a1, $a3
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	swc1	$f2, -11($sp)
	sw	$a0, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fhalf
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -9($sp)
	sub.s	$f2, $f3, $f2
	lw	$v0, -12($sp)
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	li	$a0, 2
	lw	$a1, -1($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	lw	$a0, 0($sp)
	lw	$a2, 9($a0)
	li	$a3, 0
	add	$at, $a2, $a3
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f3, 0($at)
	lw	$a2, 9($a0)
	li	$a3, 2
	add	$at, $a2, $a3
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	sw	$v0, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fhalf
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -10($sp)
	sub.s	$f2, $f3, $f2
	lw	$v0, -13($sp)
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 3
	li	$a0, 1
	lw	$a1, -1($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	lw	$a0, 0($sp)
	lw	$a2, 9($a0)
	li	$a3, 0
	add	$at, $a2, $a3
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f3, 0($at)
	lw	$a0, 9($a0)
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	sw	$v0, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fhalf
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -11($sp)
	sub.s	$f2, $f3, $f2
	lw	$v0, -14($sp)
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.29602:
	lwc1	$f2, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fiszero
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29603
	li	$v0, 4
	lwc1	$f2, 0(l.22725)
	lwc1	$f3, -8($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29604
beq_else.29603:
beq_cont.29604:
	lw	$v0, -2($sp)
	jr	$ra
iter_setup_dirvec_constants.2846:
	li	$v0, 0
	sub	$at, $v0, $a1
	bgtz	$at, ble_else.29605
	li	$v0, min_caml_objects
	add	$at, $v0, $a1
	lw	$v0, 0($at)
	lw	$v1, 1($a0)
	lw	$a2, 0($a0)
	lw	$a3, 1($v0)
	li	$t0, 1
	sw	$a0, 0($sp)
	sw	$a1, -1($sp)
	bne	$a3, $t0, beq_else.29606
	sw	$v1, -2($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $a2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	setup_rect_table.2837
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	lw	$v1, -1($sp)
	lw	$a0, -2($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.29607
beq_else.29606:
	li	$t0, 2
	bne	$a3, $t0, beq_else.29608
	li	$a3, 4
	lwc1	$f2, 0(l.22664)
	sw	$v1, -2($sp)
	sw	$v0, -3($sp)
	sw	$a2, -4($sp)
	move	$t8, $ra
	move	$a0, $a3
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_create_float_array
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -4($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	lw	$v1, -3($sp)
	lw	$a1, 4($v1)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	lw	$a1, 4($v1)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	lw	$a0, 4($v1)
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	swc1	$f2, -5($sp)
	sw	$v0, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fispos
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29610
	li	$v0, 0
	lwc1	$f2, 0(l.22664)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.29611
beq_else.29610:
	li	$v0, 0
	lwc1	$f2, 0(l.22726)
	lwc1	$f3, -5($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	lw	$a0, -3($sp)
	lw	$a1, 4($a0)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw	$v0, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fneg
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	lw	$a0, -3($sp)
	lw	$a1, 4($a0)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	lwc1	$f3, -5($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw	$v0, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fneg
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -8($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 3
	lw	$a0, -3($sp)
	lw	$a0, 4($a0)
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	lwc1	$f3, -5($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw	$v0, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fneg
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -9($sp)
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.29611:
	lw	$v0, -1($sp)
	lw	$a0, -2($sp)
	add	$at, $a0, $v0
	sw	$v1, 0($at)
	j	beq_cont.29609
beq_else.29608:
	sw	$v1, -2($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $a2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	setup_second_table.2843
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	lw	$v1, -1($sp)
	lw	$a0, -2($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
beq_cont.29609:
beq_cont.29607:
	li	$v0, 1
	lw	$v1, -1($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.29612
	li	$v1, min_caml_objects
	add	$at, $v1, $v0
	lw	$v1, 0($at)
	lw	$a0, 0($sp)
	lw	$a1, 1($a0)
	lw	$a2, 0($a0)
	lw	$a3, 1($v1)
	li	$t0, 1
	bne	$a3, $t0, beq_else.29613
	sw	$v0, -10($sp)
	sw	$a1, -11($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $a2
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	setup_rect_table.2837
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	lw	$v1, -10($sp)
	lw	$a0, -11($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.29614
beq_else.29613:
	li	$t0, 2
	bne	$a3, $t0, beq_else.29615
	sw	$v0, -10($sp)
	sw	$a1, -11($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $a2
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	setup_surface_table.2840
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	lw	$v1, -10($sp)
	lw	$a0, -11($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.29616
beq_else.29615:
	sw	$v0, -10($sp)
	sw	$a1, -11($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $a2
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	setup_second_table.2843
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	lw	$v1, -10($sp)
	lw	$a0, -11($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
beq_cont.29616:
beq_cont.29614:
	li	$v0, 1
	sub	$v0, $v1, $v0
	lw	$v1, 0($sp)
	move	$a1, $v0
	move	$a0, $v1
	j	iter_setup_dirvec_constants.2846
ble_else.29612:
	jr	$ra
ble_else.29605:
	jr	$ra
setup_startp_constants.2851:
	li	$v0, 0
	sub	$at, $v0, $a1
	bgtz	$at, ble_else.29619
	li	$v0, min_caml_objects
	add	$at, $v0, $a1
	lw	$v0, 0($at)
	lw	$v1, 10($v0)
	lw	$a2, 1($v0)
	li	$a3, 0
	li	$t0, 0
	add	$at, $a0, $t0
	lwc1	$f2, 0($at)
	lw	$t0, 5($v0)
	li	$t1, 0
	add	$at, $t0, $t1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	add	$at, $v1, $a3
	swc1	$f2, 0($at)
	li	$a3, 1
	li	$t0, 1
	add	$at, $a0, $t0
	lwc1	$f2, 0($at)
	lw	$t0, 5($v0)
	li	$t1, 1
	add	$at, $t0, $t1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	add	$at, $v1, $a3
	swc1	$f2, 0($at)
	li	$a3, 2
	li	$t0, 2
	add	$at, $a0, $t0
	lwc1	$f2, 0($at)
	lw	$t0, 5($v0)
	li	$t1, 2
	add	$at, $t0, $t1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	add	$at, $v1, $a3
	swc1	$f2, 0($at)
	li	$a3, 2
	sw	$a0, 0($sp)
	sw	$a1, -1($sp)
	bne	$a2, $a3, beq_else.29620
	li	$a2, 3
	lw	$v0, 4($v0)
	li	$a3, 0
	add	$at, $v1, $a3
	lwc1	$f2, 0($at)
	li	$a3, 1
	add	$at, $v1, $a3
	lwc1	$f3, 0($at)
	li	$a3, 2
	add	$at, $v1, $a3
	lwc1	$f4, 0($at)
	li	$a3, 0
	add	$at, $v0, $a3
	lwc1	$f5, 0($at)
	mul.s	$f2, $f5, $f2
	li	$a3, 1
	add	$at, $v0, $a3
	lwc1	$f5, 0($at)
	mul.s	$f3, $f5, $f3
	add.s	$f2, $f2, $f3
	li	$a3, 2
	add	$at, $v0, $a3
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	j	beq_cont.29621
beq_else.29620:
	li	$a3, 2
	sub	$at, $a2, $a3
	bgtz	$at, beq_else.29622
	j	beq_cont.29623
beq_else.29622:
	li	$a3, 0
	add	$at, $v1, $a3
	lwc1	$f2, 0($at)
	li	$a3, 1
	add	$at, $v1, $a3
	lwc1	$f3, 0($at)
	li	$a3, 2
	add	$at, $v1, $a3
	lwc1	$f4, 0($at)
	sw	$v1, -2($sp)
	sw	$a2, -3($sp)
	swc1	$f2, -4($sp)
	swc1	$f4, -5($sp)
	swc1	$f3, -6($sp)
	sw	$v0, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fsqr
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -6($sp)
	swc1	$f2, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fsqr
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -8($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, -5($sp)
	swc1	$f2, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fsqr
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -9($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29624
	j	beq_cont.29625
beq_else.29624:
	lwc1	$f3, -5($sp)
	lwc1	$f4, -6($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -4($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v0, 9($v0)
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29625:
	li	$v0, 3
	li	$v1, 3
	lw	$a0, -3($sp)
	bne	$a0, $v1, beq_else.29626
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f2, $f3
	j	beq_cont.29627
beq_else.29626:
beq_cont.29627:
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.29623:
beq_cont.29621:
	li	$v0, 1
	lw	$v1, -1($sp)
	sub	$v0, $v1, $v0
	lw	$v1, 0($sp)
	move	$a1, $v0
	move	$a0, $v1
	j	setup_startp_constants.2851
ble_else.29619:
	jr	$ra
is_outside.2871:
	lw	$v0, 5($a0)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	sub.s	$f2, $f12, $f2
	lw	$v0, 5($a0)
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	sub.s	$f3, $f13, $f3
	lw	$v0, 5($a0)
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	sub.s	$f4, $f14, $f4
	lw	$v0, 1($a0)
	li	$v1, 1
	bne	$v0, $v1, beq_else.29629
	swc1	$f4, 0($sp)
	swc1	$f3, -1($sp)
	sw	$a0, -2($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fabs
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -2($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fless
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29630
	li	$v0, 0
	j	beq_cont.29631
beq_else.29630:
	lwc1	$f2, -1($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fabs
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -2($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fless
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29632
	li	$v0, 0
	j	beq_cont.29633
beq_else.29632:
	lwc1	$f2, 0($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fabs
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -2($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fless
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
beq_cont.29633:
beq_cont.29631:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29634
	lw	$v0, -2($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29635
	li	$v0, 1
	jr	$ra
beq_else.29635:
	li	$v0, 0
	jr	$ra
beq_else.29634:
	lw	$v0, -2($sp)
	lw	$v0, 6($v0)
	jr	$ra
beq_else.29629:
	li	$v1, 2
	bne	$v0, $v1, beq_else.29636
	lw	$v0, 4($a0)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	mul.s	$f2, $f5, $f2
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	mul.s	$f3, $f5, $f3
	add.s	$f2, $f2, $f3
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lw	$v0, 6($a0)
	sw	$v0, -3($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_fisneg
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -3($sp)
	bne	$a0, $v1, beq_else.29637
	j	beq_cont.29638
beq_else.29637:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29639
	li	$v0, 1
	j	beq_cont.29640
beq_else.29639:
	li	$v0, 0
beq_cont.29640:
beq_cont.29638:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29641
	li	$v0, 1
	jr	$ra
beq_else.29641:
	li	$v0, 0
	jr	$ra
beq_else.29636:
	swc1	$f2, -4($sp)
	swc1	$f4, 0($sp)
	swc1	$f3, -1($sp)
	sw	$a0, -2($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_fsqr
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -2($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -1($sp)
	swc1	$f2, -5($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_fsqr
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -2($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -5($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, 0($sp)
	swc1	$f2, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fsqr
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -2($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -6($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29642
	j	beq_cont.29643
beq_else.29642:
	lwc1	$f3, 0($sp)
	lwc1	$f4, -1($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -4($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29643:
	lw	$v1, 1($v0)
	li	$a0, 3
	bne	$v1, $a0, beq_else.29644
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f2, $f3
	j	beq_cont.29645
beq_else.29644:
beq_cont.29645:
	lw	$v0, 6($v0)
	sw	$v0, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fisneg
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -7($sp)
	bne	$a0, $v1, beq_else.29646
	j	beq_cont.29647
beq_else.29646:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29648
	li	$v0, 1
	j	beq_cont.29649
beq_else.29648:
	li	$v0, 0
beq_cont.29649:
beq_cont.29647:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29650
	li	$v0, 1
	jr	$ra
beq_else.29650:
	li	$v0, 0
	jr	$ra
check_all_inside.2876:
	add	$at, $a1, $a0
	lw	$v0, 0($at)
	li	$v1, -1
	bne	$v0, $v1, beq_else.29651
	li	$v0, 1
	jr	$ra
beq_else.29651:
	li	$v1, min_caml_objects
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lw	$v1, 5($v0)
	li	$a2, 0
	add	$at, $v1, $a2
	lwc1	$f2, 0($at)
	sub.s	$f2, $f12, $f2
	lw	$v1, 5($v0)
	li	$a2, 1
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	sub.s	$f3, $f13, $f3
	lw	$v1, 5($v0)
	li	$a2, 2
	add	$at, $v1, $a2
	lwc1	$f4, 0($at)
	sub.s	$f4, $f14, $f4
	lw	$v1, 1($v0)
	li	$a2, 1
	swc1	$f14, 0($sp)
	swc1	$f13, -1($sp)
	swc1	$f12, -2($sp)
	sw	$a1, -3($sp)
	sw	$a0, -4($sp)
	bne	$v1, $a2, beq_else.29652
	swc1	$f4, -5($sp)
	swc1	$f3, -6($sp)
	sw	$v0, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fabs
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fless
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29654
	li	$v0, 0
	j	beq_cont.29655
beq_else.29654:
	lwc1	$f2, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fabs
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fless
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29656
	li	$v0, 0
	j	beq_cont.29657
beq_else.29656:
	lwc1	$f2, -5($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fabs
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fless
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
beq_cont.29657:
beq_cont.29655:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29658
	lw	$v0, -7($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29660
	li	$v0, 1
	j	beq_cont.29661
beq_else.29660:
	li	$v0, 0
beq_cont.29661:
	j	beq_cont.29659
beq_else.29658:
	lw	$v0, -7($sp)
	lw	$v0, 6($v0)
beq_cont.29659:
	j	beq_cont.29653
beq_else.29652:
	li	$a2, 2
	bne	$v1, $a2, beq_else.29662
	lw	$v1, 4($v0)
	li	$a2, 0
	add	$at, $v1, $a2
	lwc1	$f5, 0($at)
	mul.s	$f2, $f5, $f2
	li	$a2, 1
	add	$at, $v1, $a2
	lwc1	$f5, 0($at)
	mul.s	$f3, $f5, $f3
	add.s	$f2, $f2, $f3
	li	$a2, 2
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lw	$v0, 6($v0)
	sw	$v0, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fisneg
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -8($sp)
	bne	$a0, $v1, beq_else.29664
	j	beq_cont.29665
beq_else.29664:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29666
	li	$v0, 1
	j	beq_cont.29667
beq_else.29666:
	li	$v0, 0
beq_cont.29667:
beq_cont.29665:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29668
	li	$v0, 1
	j	beq_cont.29669
beq_else.29668:
	li	$v0, 0
beq_cont.29669:
	j	beq_cont.29663
beq_else.29662:
	swc1	$f2, -9($sp)
	swc1	$f4, -5($sp)
	swc1	$f3, -6($sp)
	sw	$v0, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fsqr
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -6($sp)
	swc1	$f2, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fsqr
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -10($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, -5($sp)
	swc1	$f2, -11($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_fsqr
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -7($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -11($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29670
	j	beq_cont.29671
beq_else.29670:
	lwc1	$f3, -5($sp)
	lwc1	$f4, -6($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -9($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29671:
	lw	$v1, 1($v0)
	li	$a0, 3
	bne	$v1, $a0, beq_else.29672
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f2, $f3
	j	beq_cont.29673
beq_else.29672:
beq_cont.29673:
	lw	$v0, 6($v0)
	sw	$v0, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fisneg
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -12($sp)
	bne	$a0, $v1, beq_else.29674
	j	beq_cont.29675
beq_else.29674:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29676
	li	$v0, 1
	j	beq_cont.29677
beq_else.29676:
	li	$v0, 0
beq_cont.29677:
beq_cont.29675:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29678
	li	$v0, 1
	j	beq_cont.29679
beq_else.29678:
	li	$v0, 0
beq_cont.29679:
beq_cont.29663:
beq_cont.29653:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29680
	li	$v0, 1
	lw	$v1, -4($sp)
	add	$v0, $v1, $v0
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.29681
	li	$v0, 1
	jr	$ra
beq_else.29681:
	li	$a1, min_caml_objects
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	lwc1	$f2, -2($sp)
	lwc1	$f3, -1($sp)
	lwc1	$f4, 0($sp)
	sw	$v0, -13($sp)
	move	$t8, $ra
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	is_outside.2871
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29682
	li	$v0, 1
	lw	$v1, -13($sp)
	add	$v0, $v1, $v0
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.29683
	li	$v0, 1
	jr	$ra
beq_else.29683:
	li	$a1, min_caml_objects
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	lw	$a1, 5($a0)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	lwc1	$f3, -2($sp)
	sub.s	$f2, $f3, $f2
	lw	$a1, 5($a0)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f4, 0($at)
	lwc1	$f5, -1($sp)
	sub.s	$f4, $f5, $f4
	lw	$a1, 5($a0)
	li	$a2, 2
	add	$at, $a1, $a2
	lwc1	$f6, 0($at)
	lwc1	$f7, 0($sp)
	sub.s	$f6, $f7, $f6
	lw	$a1, 1($a0)
	li	$a2, 1
	sw	$v0, -14($sp)
	bne	$a1, $a2, beq_else.29684
	swc1	$f6, -15($sp)
	swc1	$f4, -16($sp)
	sw	$a0, -17($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fabs
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -17($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fless
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29686
	li	$v0, 0
	j	beq_cont.29687
beq_else.29686:
	lwc1	$f2, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fabs
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -17($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fless
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29688
	li	$v0, 0
	j	beq_cont.29689
beq_else.29688:
	lwc1	$f2, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fabs
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -17($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fless
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
beq_cont.29689:
beq_cont.29687:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29690
	lw	$v0, -17($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29692
	li	$v0, 1
	j	beq_cont.29693
beq_else.29692:
	li	$v0, 0
beq_cont.29693:
	j	beq_cont.29691
beq_else.29690:
	lw	$v0, -17($sp)
	lw	$v0, 6($v0)
beq_cont.29691:
	j	beq_cont.29685
beq_else.29684:
	li	$a2, 2
	bne	$a1, $a2, beq_else.29694
	lw	$a1, 4($a0)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f8, 0($at)
	mul.s	$f2, $f8, $f2
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f8, 0($at)
	mul.s	$f4, $f8, $f4
	add.s	$f2, $f2, $f4
	li	$a2, 2
	add	$at, $a1, $a2
	lwc1	$f4, 0($at)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	lw	$a0, 6($a0)
	sw	$a0, -18($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_fisneg
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -18($sp)
	bne	$a0, $v1, beq_else.29696
	j	beq_cont.29697
beq_else.29696:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29698
	li	$v0, 1
	j	beq_cont.29699
beq_else.29698:
	li	$v0, 0
beq_cont.29699:
beq_cont.29697:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29700
	li	$v0, 1
	j	beq_cont.29701
beq_else.29700:
	li	$v0, 0
beq_cont.29701:
	j	beq_cont.29695
beq_else.29694:
	swc1	$f2, -19($sp)
	swc1	$f6, -15($sp)
	swc1	$f4, -16($sp)
	sw	$a0, -17($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fsqr
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -17($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -16($sp)
	swc1	$f2, -20($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_fsqr
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -17($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -20($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, -15($sp)
	swc1	$f2, -21($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_fsqr
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -17($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -21($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29702
	j	beq_cont.29703
beq_else.29702:
	lwc1	$f3, -15($sp)
	lwc1	$f4, -16($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -19($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29703:
	lw	$v1, 1($v0)
	li	$a0, 3
	bne	$v1, $a0, beq_else.29704
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f2, $f3
	j	beq_cont.29705
beq_else.29704:
beq_cont.29705:
	lw	$v0, 6($v0)
	sw	$v0, -22($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fisneg
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -22($sp)
	bne	$a0, $v1, beq_else.29706
	j	beq_cont.29707
beq_else.29706:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29708
	li	$v0, 1
	j	beq_cont.29709
beq_else.29708:
	li	$v0, 0
beq_cont.29709:
beq_cont.29707:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29710
	li	$v0, 1
	j	beq_cont.29711
beq_else.29710:
	li	$v0, 0
beq_cont.29711:
beq_cont.29695:
beq_cont.29685:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29712
	li	$v0, 1
	lw	$v1, -14($sp)
	add	$v0, $v1, $v0
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.29713
	li	$v0, 1
	jr	$ra
beq_else.29713:
	li	$a1, min_caml_objects
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	lwc1	$f2, -2($sp)
	lwc1	$f3, -1($sp)
	lwc1	$f4, 0($sp)
	sw	$v0, -23($sp)
	move	$t8, $ra
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -24($sp)
	addi	$sp, $sp, -25
	jal	is_outside.2871
	addi	$sp, $sp, 25
	lw	$t8, -24($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29714
	li	$v0, 1
	lw	$v1, -23($sp)
	add	$v0, $v1, $v0
	lwc1	$f2, -2($sp)
	lwc1	$f3, -1($sp)
	lwc1	$f4, 0($sp)
	lw	$v1, -3($sp)
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	j	check_all_inside.2876
beq_else.29714:
	li	$v0, 0
	jr	$ra
beq_else.29712:
	li	$v0, 0
	jr	$ra
beq_else.29682:
	li	$v0, 0
	jr	$ra
beq_else.29680:
	li	$v0, 0
	jr	$ra
shadow_check_and_group.2882:
	lw	$v0, 2($gp)
	lw	$v1, 1($gp)
	add	$at, $a1, $a0
	lw	$a2, 0($at)
	li	$a3, -1
	bne	$a2, $a3, beq_else.29715
	li	$v0, 0
	jr	$ra
beq_else.29715:
	add	$at, $a1, $a0
	lw	$a2, 0($at)
	li	$a3, min_caml_intersection_point
	li	$t0, min_caml_objects
	add	$at, $t0, $a2
	lw	$t0, 0($at)
	li	$t1, 0
	add	$at, $a3, $t1
	lwc1	$f2, 0($at)
	lw	$t1, 5($t0)
	li	$t2, 0
	add	$at, $t1, $t2
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	li	$t1, 1
	add	$at, $a3, $t1
	lwc1	$f3, 0($at)
	lw	$t1, 5($t0)
	li	$t2, 1
	add	$at, $t1, $t2
	lwc1	$f4, 0($at)
	sub.s	$f3, $f3, $f4
	li	$t1, 2
	add	$at, $a3, $t1
	lwc1	$f4, 0($at)
	lw	$a3, 5($t0)
	li	$t1, 2
	add	$at, $a3, $t1
	lwc1	$f5, 0($at)
	sub.s	$f4, $f4, $f5
	add	$at, $v1, $a2
	lw	$v1, 0($at)
	lw	$a3, 1($t0)
	li	$t1, 1
	sw	$a1, 0($sp)
	sw	$gp, -1($sp)
	sw	$a0, -2($sp)
	sw	$a2, -3($sp)
	bne	$a3, $t1, beq_else.29716
	move	$t8, $ra
	move	$a2, $v1
	move	$a1, $v0
	move	$a0, $t0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solver_rect_fast.2797
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	j	beq_cont.29717
beq_else.29716:
	li	$v0, 2
	bne	$a3, $v0, beq_else.29718
	li	$v0, 0
	add	$at, $v1, $v0
	lwc1	$f5, 0($at)
	swc1	$f4, -4($sp)
	swc1	$f3, -5($sp)
	swc1	$f2, -6($sp)
	sw	$v1, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fisneg
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29720
	li	$v0, 0
	j	beq_cont.29721
beq_else.29720:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	li	$a0, 1
	lw	$a1, -7($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	lwc1	$f3, -6($sp)
	mul.s	$f2, $f2, $f3
	li	$a0, 2
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, -5($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a0, 3
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, -4($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.29721:
	j	beq_cont.29719
beq_else.29718:
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $t0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	solver_second_fast.2810
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
beq_cont.29719:
beq_cont.29717:
	li	$v1, min_caml_solver_dist
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f2, 0($at)
	li	$v1, 0
	swc1	$f2, -8($sp)
	bne	$v0, $v1, beq_else.29722
	li	$v0, 0
	j	beq_cont.29723
beq_else.29722:
	lwc1	$f3, 0(l.23260)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fless
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
beq_cont.29723:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29724
	li	$v0, min_caml_objects
	lw	$v1, -3($sp)
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29725
	li	$v0, 0
	jr	$ra
beq_else.29725:
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$v0, $v1, $v0
	lw	$v1, 0($sp)
	lw	$a0, -1($sp)
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	lw	$t8, 0($gp)
	jr	$t8
beq_else.29724:
	lwc1	$f2, 0(l.23261)
	lwc1	$f3, -8($sp)
	add.s	$f2, $f3, $f2
	li	$v0, min_caml_light
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f2
	li	$v0, min_caml_intersection_point
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	add.s	$f3, $f3, $f4
	li	$v0, min_caml_light
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f4, $f2
	li	$v0, min_caml_intersection_point
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	add.s	$f4, $f4, $f5
	li	$v0, min_caml_light
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	mul.s	$f2, $f5, $f2
	li	$v0, min_caml_intersection_point
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	add.s	$f2, $f2, $f5
	li	$v0, 0
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29726
	li	$v0, 1
	j	beq_cont.29727
beq_else.29726:
	li	$a0, min_caml_objects
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	swc1	$f2, -9($sp)
	swc1	$f4, -10($sp)
	swc1	$f3, -11($sp)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f14, $f2
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	is_outside.2871
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29728
	li	$v0, 1
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29730
	li	$v0, 1
	j	beq_cont.29731
beq_else.29730:
	li	$a0, min_caml_objects
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	lw	$a0, 5($v0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	lwc1	$f3, -11($sp)
	sub.s	$f2, $f3, $f2
	lw	$a0, 5($v0)
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	lwc1	$f5, -10($sp)
	sub.s	$f4, $f5, $f4
	lw	$a0, 5($v0)
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f6, 0($at)
	lwc1	$f7, -9($sp)
	sub.s	$f6, $f7, $f6
	lw	$a0, 1($v0)
	li	$a1, 1
	bne	$a0, $a1, beq_else.29732
	swc1	$f6, -12($sp)
	swc1	$f4, -13($sp)
	sw	$v0, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fabs
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -14($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fless
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29734
	li	$v0, 0
	j	beq_cont.29735
beq_else.29734:
	lwc1	$f2, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fabs
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -14($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fless
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29736
	li	$v0, 0
	j	beq_cont.29737
beq_else.29736:
	lwc1	$f2, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fabs
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -14($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fless
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
beq_cont.29737:
beq_cont.29735:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29738
	lw	$v0, -14($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29740
	li	$v0, 1
	j	beq_cont.29741
beq_else.29740:
	li	$v0, 0
beq_cont.29741:
	j	beq_cont.29739
beq_else.29738:
	lw	$v0, -14($sp)
	lw	$v0, 6($v0)
beq_cont.29739:
	j	beq_cont.29733
beq_else.29732:
	li	$a1, 2
	bne	$a0, $a1, beq_else.29742
	lw	$a0, 4($v0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f8, 0($at)
	mul.s	$f2, $f8, $f2
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f8, 0($at)
	mul.s	$f4, $f8, $f4
	add.s	$f2, $f2, $f4
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	lw	$v0, 6($v0)
	sw	$v0, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fisneg
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -15($sp)
	bne	$a0, $v1, beq_else.29744
	j	beq_cont.29745
beq_else.29744:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29746
	li	$v0, 1
	j	beq_cont.29747
beq_else.29746:
	li	$v0, 0
beq_cont.29747:
beq_cont.29745:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29748
	li	$v0, 1
	j	beq_cont.29749
beq_else.29748:
	li	$v0, 0
beq_cont.29749:
	j	beq_cont.29743
beq_else.29742:
	swc1	$f2, -16($sp)
	swc1	$f6, -12($sp)
	swc1	$f4, -13($sp)
	sw	$v0, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fsqr
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -14($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -13($sp)
	swc1	$f2, -17($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fsqr
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -14($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -17($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, -12($sp)
	swc1	$f2, -18($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_fsqr
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -14($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -18($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.29750
	j	beq_cont.29751
beq_else.29750:
	lwc1	$f3, -12($sp)
	lwc1	$f4, -13($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -16($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.29751:
	lw	$v1, 1($v0)
	li	$a0, 3
	bne	$v1, $a0, beq_else.29752
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f2, $f3
	j	beq_cont.29753
beq_else.29752:
beq_cont.29753:
	lw	$v0, 6($v0)
	sw	$v0, -19($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fisneg
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -19($sp)
	bne	$a0, $v1, beq_else.29754
	j	beq_cont.29755
beq_else.29754:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29756
	li	$v0, 1
	j	beq_cont.29757
beq_else.29756:
	li	$v0, 0
beq_cont.29757:
beq_cont.29755:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29758
	li	$v0, 1
	j	beq_cont.29759
beq_else.29758:
	li	$v0, 0
beq_cont.29759:
beq_cont.29743:
beq_cont.29733:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29760
	li	$v0, 2
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29762
	li	$v0, 1
	j	beq_cont.29763
beq_else.29762:
	li	$a0, min_caml_objects
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	lwc1	$f2, -11($sp)
	lwc1	$f3, -10($sp)
	lwc1	$f4, -9($sp)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	is_outside.2871
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29764
	li	$v0, 3
	lwc1	$f2, -11($sp)
	lwc1	$f3, -10($sp)
	lwc1	$f4, -9($sp)
	lw	$v1, 0($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	check_all_inside.2876
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	j	beq_cont.29765
beq_else.29764:
	li	$v0, 0
beq_cont.29765:
beq_cont.29763:
	j	beq_cont.29761
beq_else.29760:
	li	$v0, 0
beq_cont.29761:
beq_cont.29731:
	j	beq_cont.29729
beq_else.29728:
	li	$v0, 0
beq_cont.29729:
beq_cont.29727:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29766
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$v0, $v1, $v0
	lw	$v1, 0($sp)
	lw	$a0, -1($sp)
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	lw	$t8, 0($gp)
	jr	$t8
beq_else.29766:
	li	$v0, 1
	jr	$ra
shadow_check_one_or_group.2885:
	lw	$v0, 1($gp)
	add	$at, $a1, $a0
	lw	$v1, 0($at)
	li	$a2, -1
	bne	$v1, $a2, beq_else.29767
	li	$v0, 0
	jr	$ra
beq_else.29767:
	li	$a2, min_caml_and_net
	add	$at, $a2, $v1
	lw	$v1, 0($at)
	li	$a2, 0
	sw	$gp, 0($sp)
	sw	$v0, -1($sp)
	sw	$a1, -2($sp)
	sw	$a0, -3($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $a2
	move	$gp, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29768
	li	$v0, 1
	lw	$v1, -3($sp)
	add	$v0, $v1, $v0
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.29769
	li	$v0, 0
	jr	$ra
beq_else.29769:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, -1($sp)
	sw	$v0, -4($sp)
	move	$t8, $ra
	move	$gp, $a2
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29770
	li	$v0, 1
	lw	$v1, -4($sp)
	add	$v0, $v1, $v0
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.29771
	li	$v0, 0
	jr	$ra
beq_else.29771:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, -1($sp)
	sw	$v0, -5($sp)
	move	$t8, $ra
	move	$gp, $a2
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29772
	li	$v0, 1
	lw	$v1, -5($sp)
	add	$v0, $v1, $v0
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.29773
	li	$v0, 0
	jr	$ra
beq_else.29773:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, -1($sp)
	sw	$v0, -6($sp)
	move	$t8, $ra
	move	$gp, $a2
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29774
	li	$v0, 1
	lw	$v1, -6($sp)
	add	$v0, $v1, $v0
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.29775
	li	$v0, 0
	jr	$ra
beq_else.29775:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, -1($sp)
	sw	$v0, -7($sp)
	move	$t8, $ra
	move	$gp, $a2
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29776
	li	$v0, 1
	lw	$v1, -7($sp)
	add	$v0, $v1, $v0
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.29777
	li	$v0, 0
	jr	$ra
beq_else.29777:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, -1($sp)
	sw	$v0, -8($sp)
	move	$t8, $ra
	move	$gp, $a2
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29778
	li	$v0, 1
	lw	$v1, -8($sp)
	add	$v0, $v1, $v0
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.29779
	li	$v0, 0
	jr	$ra
beq_else.29779:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, -1($sp)
	sw	$v0, -9($sp)
	move	$t8, $ra
	move	$gp, $a2
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29780
	li	$v0, 1
	lw	$v1, -9($sp)
	add	$v0, $v1, $v0
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.29781
	li	$v0, 0
	jr	$ra
beq_else.29781:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, -1($sp)
	sw	$v0, -10($sp)
	move	$t8, $ra
	move	$gp, $a2
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29782
	li	$v0, 1
	lw	$v1, -10($sp)
	add	$v0, $v1, $v0
	lw	$v1, -2($sp)
	lw	$a0, 0($sp)
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	lw	$t8, 0($gp)
	jr	$t8
beq_else.29782:
	li	$v0, 1
	jr	$ra
beq_else.29780:
	li	$v0, 1
	jr	$ra
beq_else.29778:
	li	$v0, 1
	jr	$ra
beq_else.29776:
	li	$v0, 1
	jr	$ra
beq_else.29774:
	li	$v0, 1
	jr	$ra
beq_else.29772:
	li	$v0, 1
	jr	$ra
beq_else.29770:
	li	$v0, 1
	jr	$ra
beq_else.29768:
	li	$v0, 1
	jr	$ra
shadow_check_one_or_matrix.2888:
	lw	$v0, 5($gp)
	lw	$v1, 4($gp)
	lw	$a2, 3($gp)
	lw	$a3, 2($gp)
	lw	$t0, 1($gp)
	add	$at, $a1, $a0
	lw	$t1, 0($at)
	li	$t2, 0
	add	$at, $t1, $t2
	lw	$t2, 0($at)
	li	$t3, -1
	bne	$t2, $t3, beq_else.29783
	li	$v0, 0
	jr	$ra
beq_else.29783:
	li	$t3, 99
	sw	$t1, 0($sp)
	sw	$gp, -1($sp)
	sw	$v1, -2($sp)
	sw	$a2, -3($sp)
	sw	$a3, -4($sp)
	sw	$a1, -5($sp)
	sw	$a0, -6($sp)
	bne	$t2, $t3, beq_else.29784
	li	$v0, 1
	j	beq_cont.29785
beq_else.29784:
	li	$t3, min_caml_intersection_point
	li	$t4, min_caml_objects
	add	$at, $t4, $t2
	lw	$t4, 0($at)
	li	$t5, 0
	add	$at, $t3, $t5
	lwc1	$f2, 0($at)
	lw	$t5, 5($t4)
	li	$t6, 0
	add	$at, $t5, $t6
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	li	$t5, 1
	add	$at, $t3, $t5
	lwc1	$f3, 0($at)
	lw	$t5, 5($t4)
	li	$t6, 1
	add	$at, $t5, $t6
	lwc1	$f4, 0($at)
	sub.s	$f3, $f3, $f4
	li	$t5, 2
	add	$at, $t3, $t5
	lwc1	$f4, 0($at)
	lw	$t3, 5($t4)
	li	$t5, 2
	add	$at, $t3, $t5
	lwc1	$f5, 0($at)
	sub.s	$f4, $f4, $f5
	add	$at, $t0, $t2
	lw	$t0, 0($at)
	lw	$t2, 1($t4)
	li	$t3, 1
	bne	$t2, $t3, beq_else.29786
	move	$t8, $ra
	move	$a2, $t0
	move	$a1, $v0
	move	$a0, $t4
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	solver_rect_fast.2797
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	j	beq_cont.29787
beq_else.29786:
	li	$v0, 2
	bne	$t2, $v0, beq_else.29788
	li	$v0, 0
	add	$at, $t0, $v0
	lwc1	$f5, 0($at)
	swc1	$f4, -7($sp)
	swc1	$f3, -8($sp)
	swc1	$f2, -9($sp)
	sw	$t0, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fisneg
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29790
	li	$v0, 0
	j	beq_cont.29791
beq_else.29790:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	li	$a0, 1
	lw	$a1, -10($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	lwc1	$f3, -9($sp)
	mul.s	$f2, $f2, $f3
	li	$a0, 2
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, -8($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a0, 3
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, -7($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.29791:
	j	beq_cont.29789
beq_else.29788:
	move	$t8, $ra
	move	$a1, $t0
	move	$a0, $t4
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	solver_second_fast.2810
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
beq_cont.29789:
beq_cont.29787:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29792
	li	$v0, 0
	j	beq_cont.29793
beq_else.29792:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fless
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29794
	li	$v0, 0
	j	beq_cont.29795
beq_else.29794:
	li	$v0, 1
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29796
	li	$v0, 0
	j	beq_cont.29797
beq_else.29796:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29798
	li	$v0, 2
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29800
	li	$v0, 0
	j	beq_cont.29801
beq_else.29800:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29802
	li	$v0, 3
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29804
	li	$v0, 0
	j	beq_cont.29805
beq_else.29804:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29806
	li	$v0, 4
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29808
	li	$v0, 0
	j	beq_cont.29809
beq_else.29808:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29810
	li	$v0, 5
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29812
	li	$v0, 0
	j	beq_cont.29813
beq_else.29812:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29814
	li	$v0, 6
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29816
	li	$v0, 0
	j	beq_cont.29817
beq_else.29816:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29818
	li	$v0, 7
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29820
	li	$v0, 0
	j	beq_cont.29821
beq_else.29820:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29822
	li	$v0, 8
	lw	$v1, 0($sp)
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	j	beq_cont.29823
beq_else.29822:
	li	$v0, 1
beq_cont.29823:
beq_cont.29821:
	j	beq_cont.29819
beq_else.29818:
	li	$v0, 1
beq_cont.29819:
beq_cont.29817:
	j	beq_cont.29815
beq_else.29814:
	li	$v0, 1
beq_cont.29815:
beq_cont.29813:
	j	beq_cont.29811
beq_else.29810:
	li	$v0, 1
beq_cont.29811:
beq_cont.29809:
	j	beq_cont.29807
beq_else.29806:
	li	$v0, 1
beq_cont.29807:
beq_cont.29805:
	j	beq_cont.29803
beq_else.29802:
	li	$v0, 1
beq_cont.29803:
beq_cont.29801:
	j	beq_cont.29799
beq_else.29798:
	li	$v0, 1
beq_cont.29799:
beq_cont.29797:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29824
	li	$v0, 0
	j	beq_cont.29825
beq_else.29824:
	li	$v0, 1
beq_cont.29825:
beq_cont.29795:
beq_cont.29793:
beq_cont.29785:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29826
	li	$v0, 1
	lw	$v1, -6($sp)
	add	$v0, $v1, $v0
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a1, 0($at)
	li	$a2, -1
	bne	$a1, $a2, beq_else.29827
	li	$v0, 0
	jr	$ra
beq_else.29827:
	li	$a2, 99
	sw	$a0, -11($sp)
	sw	$v0, -12($sp)
	bne	$a1, $a2, beq_else.29828
	li	$v0, 1
	j	beq_cont.29829
beq_else.29828:
	li	$a2, min_caml_intersection_point
	lw	$a3, -4($sp)
	move	$t8, $ra
	move	$a0, $a1
	move	$a1, $a3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solver_fast.2816
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29830
	li	$v0, 0
	j	beq_cont.29831
beq_else.29830:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fless
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29832
	li	$v0, 0
	j	beq_cont.29833
beq_else.29832:
	li	$v0, 1
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29834
	li	$v0, 0
	j	beq_cont.29835
beq_else.29834:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29836
	li	$v0, 2
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29838
	li	$v0, 0
	j	beq_cont.29839
beq_else.29838:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29840
	li	$v0, 3
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29842
	li	$v0, 0
	j	beq_cont.29843
beq_else.29842:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29844
	li	$v0, 4
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29846
	li	$v0, 0
	j	beq_cont.29847
beq_else.29846:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29848
	li	$v0, 5
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29850
	li	$v0, 0
	j	beq_cont.29851
beq_else.29850:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29852
	li	$v0, 6
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29854
	li	$v0, 0
	j	beq_cont.29855
beq_else.29854:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29856
	li	$v0, 7
	lw	$v1, -11($sp)
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	j	beq_cont.29857
beq_else.29856:
	li	$v0, 1
beq_cont.29857:
beq_cont.29855:
	j	beq_cont.29853
beq_else.29852:
	li	$v0, 1
beq_cont.29853:
beq_cont.29851:
	j	beq_cont.29849
beq_else.29848:
	li	$v0, 1
beq_cont.29849:
beq_cont.29847:
	j	beq_cont.29845
beq_else.29844:
	li	$v0, 1
beq_cont.29845:
beq_cont.29843:
	j	beq_cont.29841
beq_else.29840:
	li	$v0, 1
beq_cont.29841:
beq_cont.29839:
	j	beq_cont.29837
beq_else.29836:
	li	$v0, 1
beq_cont.29837:
beq_cont.29835:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29858
	li	$v0, 0
	j	beq_cont.29859
beq_else.29858:
	li	$v0, 1
beq_cont.29859:
beq_cont.29833:
beq_cont.29831:
beq_cont.29829:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29860
	li	$v0, 1
	lw	$v1, -12($sp)
	add	$v0, $v1, $v0
	lw	$v1, -5($sp)
	lw	$a0, -1($sp)
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	lw	$t8, 0($gp)
	jr	$t8
beq_else.29860:
	li	$v0, 1
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29861
	li	$v0, 0
	j	beq_cont.29862
beq_else.29861:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29863
	li	$v0, 2
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29865
	li	$v0, 0
	j	beq_cont.29866
beq_else.29865:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29867
	li	$v0, 3
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29869
	li	$v0, 0
	j	beq_cont.29870
beq_else.29869:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29871
	li	$v0, 4
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29873
	li	$v0, 0
	j	beq_cont.29874
beq_else.29873:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29875
	li	$v0, 5
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29877
	li	$v0, 0
	j	beq_cont.29878
beq_else.29877:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29879
	li	$v0, 6
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29881
	li	$v0, 0
	j	beq_cont.29882
beq_else.29881:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29883
	li	$v0, 7
	lw	$v1, -11($sp)
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	j	beq_cont.29884
beq_else.29883:
	li	$v0, 1
beq_cont.29884:
beq_cont.29882:
	j	beq_cont.29880
beq_else.29879:
	li	$v0, 1
beq_cont.29880:
beq_cont.29878:
	j	beq_cont.29876
beq_else.29875:
	li	$v0, 1
beq_cont.29876:
beq_cont.29874:
	j	beq_cont.29872
beq_else.29871:
	li	$v0, 1
beq_cont.29872:
beq_cont.29870:
	j	beq_cont.29868
beq_else.29867:
	li	$v0, 1
beq_cont.29868:
beq_cont.29866:
	j	beq_cont.29864
beq_else.29863:
	li	$v0, 1
beq_cont.29864:
beq_cont.29862:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29885
	li	$v0, 1
	lw	$v1, -12($sp)
	add	$v0, $v1, $v0
	lw	$v1, -5($sp)
	lw	$a0, -1($sp)
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	lw	$t8, 0($gp)
	jr	$t8
beq_else.29885:
	li	$v0, 1
	jr	$ra
beq_else.29826:
	li	$v0, 1
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29886
	li	$v0, 0
	j	beq_cont.29887
beq_else.29886:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29888
	li	$v0, 2
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29890
	li	$v0, 0
	j	beq_cont.29891
beq_else.29890:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29892
	li	$v0, 3
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29894
	li	$v0, 0
	j	beq_cont.29895
beq_else.29894:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29896
	li	$v0, 4
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29898
	li	$v0, 0
	j	beq_cont.29899
beq_else.29898:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29900
	li	$v0, 5
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29902
	li	$v0, 0
	j	beq_cont.29903
beq_else.29902:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29904
	li	$v0, 6
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29906
	li	$v0, 0
	j	beq_cont.29907
beq_else.29906:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29908
	li	$v0, 7
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29910
	li	$v0, 0
	j	beq_cont.29911
beq_else.29910:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29912
	li	$v0, 8
	lw	$v1, 0($sp)
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	j	beq_cont.29913
beq_else.29912:
	li	$v0, 1
beq_cont.29913:
beq_cont.29911:
	j	beq_cont.29909
beq_else.29908:
	li	$v0, 1
beq_cont.29909:
beq_cont.29907:
	j	beq_cont.29905
beq_else.29904:
	li	$v0, 1
beq_cont.29905:
beq_cont.29903:
	j	beq_cont.29901
beq_else.29900:
	li	$v0, 1
beq_cont.29901:
beq_cont.29899:
	j	beq_cont.29897
beq_else.29896:
	li	$v0, 1
beq_cont.29897:
beq_cont.29895:
	j	beq_cont.29893
beq_else.29892:
	li	$v0, 1
beq_cont.29893:
beq_cont.29891:
	j	beq_cont.29889
beq_else.29888:
	li	$v0, 1
beq_cont.29889:
beq_cont.29887:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29914
	li	$v0, 1
	lw	$v1, -6($sp)
	add	$v0, $v1, $v0
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a1, 0($at)
	li	$a2, -1
	bne	$a1, $a2, beq_else.29915
	li	$v0, 0
	jr	$ra
beq_else.29915:
	li	$a2, 99
	sw	$a0, -13($sp)
	sw	$v0, -14($sp)
	bne	$a1, $a2, beq_else.29916
	li	$v0, 1
	j	beq_cont.29917
beq_else.29916:
	li	$a2, min_caml_intersection_point
	lw	$a3, -4($sp)
	move	$t8, $ra
	move	$a0, $a1
	move	$a1, $a3
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	solver_fast.2816
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29918
	li	$v0, 0
	j	beq_cont.29919
beq_else.29918:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fless
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29920
	li	$v0, 0
	j	beq_cont.29921
beq_else.29920:
	li	$v0, 1
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29922
	li	$v0, 0
	j	beq_cont.29923
beq_else.29922:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29924
	li	$v0, 2
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29926
	li	$v0, 0
	j	beq_cont.29927
beq_else.29926:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29928
	li	$v0, 3
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29930
	li	$v0, 0
	j	beq_cont.29931
beq_else.29930:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29932
	li	$v0, 4
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29934
	li	$v0, 0
	j	beq_cont.29935
beq_else.29934:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29936
	li	$v0, 5
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29938
	li	$v0, 0
	j	beq_cont.29939
beq_else.29938:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29940
	li	$v0, 6
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29942
	li	$v0, 0
	j	beq_cont.29943
beq_else.29942:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29944
	li	$v0, 7
	lw	$v1, -13($sp)
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	j	beq_cont.29945
beq_else.29944:
	li	$v0, 1
beq_cont.29945:
beq_cont.29943:
	j	beq_cont.29941
beq_else.29940:
	li	$v0, 1
beq_cont.29941:
beq_cont.29939:
	j	beq_cont.29937
beq_else.29936:
	li	$v0, 1
beq_cont.29937:
beq_cont.29935:
	j	beq_cont.29933
beq_else.29932:
	li	$v0, 1
beq_cont.29933:
beq_cont.29931:
	j	beq_cont.29929
beq_else.29928:
	li	$v0, 1
beq_cont.29929:
beq_cont.29927:
	j	beq_cont.29925
beq_else.29924:
	li	$v0, 1
beq_cont.29925:
beq_cont.29923:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29946
	li	$v0, 0
	j	beq_cont.29947
beq_else.29946:
	li	$v0, 1
beq_cont.29947:
beq_cont.29921:
beq_cont.29919:
beq_cont.29917:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29948
	li	$v0, 1
	lw	$v1, -14($sp)
	add	$v0, $v1, $v0
	lw	$v1, -5($sp)
	lw	$a0, -1($sp)
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	lw	$t8, 0($gp)
	jr	$t8
beq_else.29948:
	li	$v0, 1
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29949
	li	$v0, 0
	j	beq_cont.29950
beq_else.29949:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29951
	li	$v0, 2
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29953
	li	$v0, 0
	j	beq_cont.29954
beq_else.29953:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29955
	li	$v0, 3
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29957
	li	$v0, 0
	j	beq_cont.29958
beq_else.29957:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29959
	li	$v0, 4
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29961
	li	$v0, 0
	j	beq_cont.29962
beq_else.29961:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29963
	li	$v0, 5
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29965
	li	$v0, 0
	j	beq_cont.29966
beq_else.29965:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29967
	li	$v0, 6
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29969
	li	$v0, 0
	j	beq_cont.29970
beq_else.29969:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29971
	li	$v0, 7
	lw	$v1, -13($sp)
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	j	beq_cont.29972
beq_else.29971:
	li	$v0, 1
beq_cont.29972:
beq_cont.29970:
	j	beq_cont.29968
beq_else.29967:
	li	$v0, 1
beq_cont.29968:
beq_cont.29966:
	j	beq_cont.29964
beq_else.29963:
	li	$v0, 1
beq_cont.29964:
beq_cont.29962:
	j	beq_cont.29960
beq_else.29959:
	li	$v0, 1
beq_cont.29960:
beq_cont.29958:
	j	beq_cont.29956
beq_else.29955:
	li	$v0, 1
beq_cont.29956:
beq_cont.29954:
	j	beq_cont.29952
beq_else.29951:
	li	$v0, 1
beq_cont.29952:
beq_cont.29950:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29973
	li	$v0, 1
	lw	$v1, -14($sp)
	add	$v0, $v1, $v0
	lw	$v1, -5($sp)
	lw	$a0, -1($sp)
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	lw	$t8, 0($gp)
	jr	$t8
beq_else.29973:
	li	$v0, 1
	jr	$ra
beq_else.29914:
	li	$v0, 1
	jr	$ra
solve_each_element.2891:
	add	$at, $a1, $a0
	lw	$v0, 0($at)
	li	$v1, -1
	bne	$v0, $v1, beq_else.29974
	jr	$ra
beq_else.29974:
	li	$v1, min_caml_startp
	li	$a3, min_caml_objects
	add	$at, $a3, $v0
	lw	$a3, 0($at)
	li	$t0, 0
	add	$at, $v1, $t0
	lwc1	$f2, 0($at)
	lw	$t0, 5($a3)
	li	$t1, 0
	add	$at, $t0, $t1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	li	$t0, 1
	add	$at, $v1, $t0
	lwc1	$f3, 0($at)
	lw	$t0, 5($a3)
	li	$t1, 1
	add	$at, $t0, $t1
	lwc1	$f4, 0($at)
	sub.s	$f3, $f3, $f4
	li	$t0, 2
	add	$at, $v1, $t0
	lwc1	$f4, 0($at)
	lw	$v1, 5($a3)
	li	$t0, 2
	add	$at, $v1, $t0
	lwc1	$f5, 0($at)
	sub.s	$f4, $f4, $f5
	lw	$v1, 1($a3)
	li	$t0, 1
	sw	$a2, 0($sp)
	sw	$a1, -1($sp)
	sw	$a0, -2($sp)
	sw	$v0, -3($sp)
	bne	$v1, $t0, beq_else.29976
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $a3
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solver_rect.2762
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	j	beq_cont.29977
beq_else.29976:
	li	$t0, 2
	bne	$v1, $t0, beq_else.29978
	lw	$v1, 4($a3)
	li	$a3, 0
	add	$at, $a2, $a3
	lwc1	$f5, 0($at)
	li	$a3, 0
	add	$at, $v1, $a3
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	li	$a3, 1
	add	$at, $a2, $a3
	lwc1	$f6, 0($at)
	li	$a3, 1
	add	$at, $v1, $a3
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	li	$a3, 2
	add	$at, $a2, $a3
	lwc1	$f6, 0($at)
	li	$a3, 2
	add	$at, $v1, $a3
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	swc1	$f5, -4($sp)
	swc1	$f4, -5($sp)
	swc1	$f3, -6($sp)
	swc1	$f2, -7($sp)
	sw	$v1, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fispos
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29980
	li	$v0, 0
	j	beq_cont.29981
beq_else.29980:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	li	$a0, 0
	lw	$a1, -8($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	lwc1	$f3, -7($sp)
	mul.s	$f2, $f2, $f3
	li	$a0, 1
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, -6($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a0, 2
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, -5($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	sw	$v1, -9($sp)
	sw	$v0, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fneg
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -4($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$v0, -9($sp)
	lw	$v1, -10($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.29981:
	j	beq_cont.29979
beq_else.29978:
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $a3
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	solver_second.2787
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
beq_cont.29979:
beq_cont.29977:
	li	$v1, 0
	bne	$v0, $v1, beq_else.29982
	li	$v0, min_caml_objects
	lw	$v1, -3($sp)
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.29983
	jr	$ra
beq_else.29983:
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	lw	$a0, 0($sp)
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	j	solve_each_element.2891
beq_else.29982:
	li	$v1, min_caml_solver_dist
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.22664)
	sw	$v0, -11($sp)
	swc1	$f2, -12($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fless
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29985
	j	beq_cont.29986
beq_else.29985:
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, -12($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fless
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29987
	j	beq_cont.29988
beq_else.29987:
	lwc1	$f2, 0(l.23261)
	lwc1	$f3, -12($sp)
	add.s	$f2, $f3, $f2
	li	$v0, 0
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f2
	li	$v0, min_caml_startp
	li	$a0, 0
	add	$at, $v0, $a0
	lwc1	$f4, 0($at)
	add.s	$f3, $f3, $f4
	li	$v0, 1
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	mul.s	$f4, $f4, $f2
	li	$v0, min_caml_startp
	li	$a0, 1
	add	$at, $v0, $a0
	lwc1	$f5, 0($at)
	add.s	$f4, $f4, $f5
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f5, 0($at)
	mul.s	$f5, $f5, $f2
	li	$v0, min_caml_startp
	li	$a0, 2
	add	$at, $v0, $a0
	lwc1	$f6, 0($at)
	add.s	$f5, $f5, $f6
	li	$v0, 0
	lw	$a0, -1($sp)
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a1, -1
	swc1	$f5, -13($sp)
	swc1	$f4, -14($sp)
	swc1	$f3, -15($sp)
	swc1	$f2, -16($sp)
	bne	$v0, $a1, beq_else.29989
	li	$v0, 1
	j	beq_cont.29990
beq_else.29989:
	li	$a1, min_caml_objects
	add	$at, $a1, $v0
	lw	$v0, 0($at)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f14, $f5
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	is_outside.2871
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29991
	li	$v0, 1
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.29993
	li	$v0, 1
	j	beq_cont.29994
beq_else.29993:
	li	$a0, min_caml_objects
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	lw	$a0, 5($v0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	lwc1	$f3, -15($sp)
	sub.s	$f2, $f3, $f2
	lw	$a0, 5($v0)
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	lwc1	$f5, -14($sp)
	sub.s	$f4, $f5, $f4
	lw	$a0, 5($v0)
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f6, 0($at)
	lwc1	$f7, -13($sp)
	sub.s	$f6, $f7, $f6
	lw	$a0, 1($v0)
	li	$a1, 1
	bne	$a0, $a1, beq_else.29995
	swc1	$f6, -17($sp)
	swc1	$f4, -18($sp)
	sw	$v0, -19($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fabs
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -19($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fless
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29997
	li	$v0, 0
	j	beq_cont.29998
beq_else.29997:
	lwc1	$f2, -18($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fabs
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -19($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fless
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.29999
	li	$v0, 0
	j	beq_cont.30000
beq_else.29999:
	lwc1	$f2, -17($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fabs
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -19($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fless
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
beq_cont.30000:
beq_cont.29998:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30001
	lw	$v0, -19($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.30003
	li	$v0, 1
	j	beq_cont.30004
beq_else.30003:
	li	$v0, 0
beq_cont.30004:
	j	beq_cont.30002
beq_else.30001:
	lw	$v0, -19($sp)
	lw	$v0, 6($v0)
beq_cont.30002:
	j	beq_cont.29996
beq_else.29995:
	li	$a1, 2
	bne	$a0, $a1, beq_else.30005
	lw	$a0, 4($v0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f8, 0($at)
	mul.s	$f2, $f8, $f2
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f8, 0($at)
	mul.s	$f4, $f8, $f4
	add.s	$f2, $f2, $f4
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	lw	$v0, 6($v0)
	sw	$v0, -20($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_fisneg
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -20($sp)
	bne	$a0, $v1, beq_else.30007
	j	beq_cont.30008
beq_else.30007:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30009
	li	$v0, 1
	j	beq_cont.30010
beq_else.30009:
	li	$v0, 0
beq_cont.30010:
beq_cont.30008:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30011
	li	$v0, 1
	j	beq_cont.30012
beq_else.30011:
	li	$v0, 0
beq_cont.30012:
	j	beq_cont.30006
beq_else.30005:
	swc1	$f2, -21($sp)
	swc1	$f6, -17($sp)
	swc1	$f4, -18($sp)
	sw	$v0, -19($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_fsqr
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -19($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -18($sp)
	swc1	$f2, -22($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fsqr
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -19($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -22($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, -17($sp)
	swc1	$f2, -23($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -24($sp)
	addi	$sp, $sp, -25
	jal	min_caml_fsqr
	addi	$sp, $sp, 25
	lw	$t8, -24($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -19($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -23($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.30013
	j	beq_cont.30014
beq_else.30013:
	lwc1	$f3, -17($sp)
	lwc1	$f4, -18($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -21($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.30014:
	lw	$v1, 1($v0)
	li	$a0, 3
	bne	$v1, $a0, beq_else.30015
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f2, $f3
	j	beq_cont.30016
beq_else.30015:
beq_cont.30016:
	lw	$v0, 6($v0)
	sw	$v0, -24($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_fisneg
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -24($sp)
	bne	$a0, $v1, beq_else.30017
	j	beq_cont.30018
beq_else.30017:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30019
	li	$v0, 1
	j	beq_cont.30020
beq_else.30019:
	li	$v0, 0
beq_cont.30020:
beq_cont.30018:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30021
	li	$v0, 1
	j	beq_cont.30022
beq_else.30021:
	li	$v0, 0
beq_cont.30022:
beq_cont.30006:
beq_cont.29996:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30023
	li	$v0, 2
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30025
	li	$v0, 1
	j	beq_cont.30026
beq_else.30025:
	li	$a0, min_caml_objects
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	lwc1	$f2, -15($sp)
	lwc1	$f3, -14($sp)
	lwc1	$f4, -13($sp)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	is_outside.2871
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30027
	li	$v0, 3
	lwc1	$f2, -15($sp)
	lwc1	$f3, -14($sp)
	lwc1	$f4, -13($sp)
	lw	$v1, -1($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	check_all_inside.2876
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	j	beq_cont.30028
beq_else.30027:
	li	$v0, 0
beq_cont.30028:
beq_cont.30026:
	j	beq_cont.30024
beq_else.30023:
	li	$v0, 0
beq_cont.30024:
beq_cont.29994:
	j	beq_cont.29992
beq_else.29991:
	li	$v0, 0
beq_cont.29992:
beq_cont.29990:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30029
	j	beq_cont.30030
beq_else.30029:
	li	$v0, min_caml_tmin
	li	$v1, 0
	lwc1	$f2, -16($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, min_caml_intersection_point
	li	$v1, 0
	lwc1	$f2, -15($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v1, 1
	lwc1	$f2, -14($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v1, 2
	lwc1	$f2, -13($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, min_caml_intersected_object_id
	li	$v1, 0
	lw	$a0, -3($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	li	$v0, min_caml_intsec_rectside
	li	$v1, 0
	lw	$a0, -11($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.30030:
beq_cont.29988:
beq_cont.29986:
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	lw	$a0, 0($sp)
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	j	solve_each_element.2891
solve_one_or_network.2895:
	add	$at, $a1, $a0
	lw	$v0, 0($at)
	li	$v1, -1
	bne	$v0, $v1, beq_else.30031
	jr	$ra
beq_else.30031:
	li	$v1, min_caml_and_net
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$v1, 0
	sw	$a2, 0($sp)
	sw	$a1, -1($sp)
	sw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	solve_each_element.2891
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30033
	jr	$ra
beq_else.30033:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -3($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element.2891
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -3($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30035
	jr	$ra
beq_else.30035:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -4($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	solve_each_element.2891
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -4($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30037
	jr	$ra
beq_else.30037:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -5($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	solve_each_element.2891
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -5($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30039
	jr	$ra
beq_else.30039:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -6($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	solve_each_element.2891
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -6($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30041
	jr	$ra
beq_else.30041:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -7($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	solve_each_element.2891
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -7($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30043
	jr	$ra
beq_else.30043:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -8($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	solve_each_element.2891
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -8($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30045
	jr	$ra
beq_else.30045:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -9($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	solve_each_element.2891
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -9($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	lw	$a0, 0($sp)
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	j	solve_one_or_network.2895
trace_or_matrix.2899:
	add	$at, $a1, $a0
	lw	$v0, 0($at)
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a3, -1
	bne	$v1, $a3, beq_else.30047
	jr	$ra
beq_else.30047:
	li	$a3, 99
	sw	$a2, 0($sp)
	sw	$a1, -1($sp)
	sw	$a0, -2($sp)
	bne	$v1, $a3, beq_else.30049
	li	$v1, 1
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a3, -1
	bne	$v1, $a3, beq_else.30051
	j	beq_cont.30052
beq_else.30051:
	li	$a3, min_caml_and_net
	add	$at, $a3, $v1
	lw	$v1, 0($at)
	li	$a3, 0
	sw	$v0, -3($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $a3
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element.2891
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30053
	j	beq_cont.30054
beq_else.30053:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element.2891
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30055
	j	beq_cont.30056
beq_else.30055:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element.2891
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30057
	j	beq_cont.30058
beq_else.30057:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element.2891
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30059
	j	beq_cont.30060
beq_else.30059:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element.2891
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 6
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30061
	j	beq_cont.30062
beq_else.30061:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element.2891
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 7
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30063
	j	beq_cont.30064
beq_else.30063:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element.2891
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 8
	lw	$v1, -3($sp)
	lw	$a0, 0($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_one_or_network.2895
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
beq_cont.30064:
beq_cont.30062:
beq_cont.30060:
beq_cont.30058:
beq_cont.30056:
beq_cont.30054:
beq_cont.30052:
	j	beq_cont.30050
beq_else.30049:
	li	$a3, min_caml_startp
	li	$t0, min_caml_objects
	add	$at, $t0, $v1
	lw	$v1, 0($at)
	li	$t0, 0
	add	$at, $a3, $t0
	lwc1	$f2, 0($at)
	lw	$t0, 5($v1)
	li	$t1, 0
	add	$at, $t0, $t1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	li	$t0, 1
	add	$at, $a3, $t0
	lwc1	$f3, 0($at)
	lw	$t0, 5($v1)
	li	$t1, 1
	add	$at, $t0, $t1
	lwc1	$f4, 0($at)
	sub.s	$f3, $f3, $f4
	li	$t0, 2
	add	$at, $a3, $t0
	lwc1	$f4, 0($at)
	lw	$a3, 5($v1)
	li	$t0, 2
	add	$at, $a3, $t0
	lwc1	$f5, 0($at)
	sub.s	$f4, $f4, $f5
	lw	$a3, 1($v1)
	li	$t0, 1
	sw	$v0, -3($sp)
	bne	$a3, $t0, beq_else.30065
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $v1
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solver_rect.2762
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	j	beq_cont.30066
beq_else.30065:
	li	$t0, 2
	bne	$a3, $t0, beq_else.30067
	lw	$v1, 4($v1)
	li	$a3, 0
	add	$at, $a2, $a3
	lwc1	$f5, 0($at)
	li	$a3, 0
	add	$at, $v1, $a3
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	li	$a3, 1
	add	$at, $a2, $a3
	lwc1	$f6, 0($at)
	li	$a3, 1
	add	$at, $v1, $a3
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	li	$a3, 2
	add	$at, $a2, $a3
	lwc1	$f6, 0($at)
	li	$a3, 2
	add	$at, $v1, $a3
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	swc1	$f5, -4($sp)
	swc1	$f4, -5($sp)
	swc1	$f3, -6($sp)
	swc1	$f2, -7($sp)
	sw	$v1, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fispos
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30069
	li	$v0, 0
	j	beq_cont.30070
beq_else.30069:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	li	$a0, 0
	lw	$a1, -8($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	lwc1	$f3, -7($sp)
	mul.s	$f2, $f2, $f3
	li	$a0, 1
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, -6($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a0, 2
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, -5($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	sw	$v1, -9($sp)
	sw	$v0, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fneg
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -4($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$v0, -9($sp)
	lw	$v1, -10($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.30070:
	j	beq_cont.30068
beq_else.30067:
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $v1
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	solver_second.2787
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
beq_cont.30068:
beq_cont.30066:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30071
	j	beq_cont.30072
beq_else.30071:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fless
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30073
	j	beq_cont.30074
beq_else.30073:
	li	$v0, 1
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30075
	j	beq_cont.30076
beq_else.30075:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	solve_each_element.2891
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30077
	j	beq_cont.30078
beq_else.30077:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	solve_each_element.2891
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30079
	j	beq_cont.30080
beq_else.30079:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	solve_each_element.2891
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30081
	j	beq_cont.30082
beq_else.30081:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	solve_each_element.2891
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30083
	j	beq_cont.30084
beq_else.30083:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	solve_each_element.2891
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v0, 6
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30085
	j	beq_cont.30086
beq_else.30085:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	solve_each_element.2891
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v0, 7
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30087
	j	beq_cont.30088
beq_else.30087:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	solve_each_element.2891
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v0, 8
	lw	$v1, -3($sp)
	lw	$a0, 0($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	solve_one_or_network.2895
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
beq_cont.30088:
beq_cont.30086:
beq_cont.30084:
beq_cont.30082:
beq_cont.30080:
beq_cont.30078:
beq_cont.30076:
beq_cont.30074:
beq_cont.30072:
beq_cont.30050:
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a1, 0($at)
	li	$a2, -1
	bne	$a1, $a2, beq_else.30089
	jr	$ra
beq_else.30089:
	li	$a2, 99
	sw	$v0, -11($sp)
	bne	$a1, $a2, beq_else.30091
	li	$a1, 1
	add	$at, $a0, $a1
	lw	$a1, 0($at)
	li	$a2, -1
	bne	$a1, $a2, beq_else.30093
	j	beq_cont.30094
beq_else.30093:
	li	$a2, min_caml_and_net
	add	$at, $a2, $a1
	lw	$a1, 0($at)
	li	$a2, 0
	lw	$a3, 0($sp)
	sw	$a0, -12($sp)
	move	$t8, $ra
	move	$a0, $a2
	move	$a2, $a3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30095
	j	beq_cont.30096
beq_else.30095:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30097
	j	beq_cont.30098
beq_else.30097:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30099
	j	beq_cont.30100
beq_else.30099:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30101
	j	beq_cont.30102
beq_else.30101:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 6
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30103
	j	beq_cont.30104
beq_else.30103:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 7
	lw	$v1, -12($sp)
	lw	$a0, 0($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_one_or_network.2895
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
beq_cont.30104:
beq_cont.30102:
beq_cont.30100:
beq_cont.30098:
beq_cont.30096:
beq_cont.30094:
	j	beq_cont.30092
beq_else.30091:
	li	$a2, min_caml_startp
	lw	$a3, 0($sp)
	sw	$a0, -12($sp)
	move	$t8, $ra
	move	$a0, $a1
	move	$a1, $a3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solver.2793
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30105
	j	beq_cont.30106
beq_else.30105:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fless
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30107
	j	beq_cont.30108
beq_else.30107:
	li	$v0, 1
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30109
	j	beq_cont.30110
beq_else.30109:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30111
	j	beq_cont.30112
beq_else.30111:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30113
	j	beq_cont.30114
beq_else.30113:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30115
	j	beq_cont.30116
beq_else.30115:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30117
	j	beq_cont.30118
beq_else.30117:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 6
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30119
	j	beq_cont.30120
beq_else.30119:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_each_element.2891
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 7
	lw	$v1, -12($sp)
	lw	$a0, 0($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	solve_one_or_network.2895
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
beq_cont.30120:
beq_cont.30118:
beq_cont.30116:
beq_cont.30114:
beq_cont.30112:
beq_cont.30110:
beq_cont.30108:
beq_cont.30106:
beq_cont.30092:
	li	$v0, 1
	lw	$v1, -11($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	lw	$a0, 0($sp)
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	j	trace_or_matrix.2899
solve_each_element_fast.2905:
	lw	$v0, 0($a2)
	add	$at, $a1, $a0
	lw	$v1, 0($at)
	li	$a3, -1
	bne	$v1, $a3, beq_else.30121
	jr	$ra
beq_else.30121:
	li	$a3, min_caml_objects
	add	$at, $a3, $v1
	lw	$a3, 0($at)
	lw	$t0, 10($a3)
	li	$t1, 0
	add	$at, $t0, $t1
	lwc1	$f2, 0($at)
	li	$t1, 1
	add	$at, $t0, $t1
	lwc1	$f3, 0($at)
	li	$t1, 2
	add	$at, $t0, $t1
	lwc1	$f4, 0($at)
	lw	$t1, 1($a2)
	add	$at, $t1, $v1
	lw	$t1, 0($at)
	lw	$t2, 1($a3)
	li	$t3, 1
	sw	$v0, 0($sp)
	sw	$a2, -1($sp)
	sw	$a1, -2($sp)
	sw	$a0, -3($sp)
	sw	$v1, -4($sp)
	bne	$t2, $t3, beq_else.30123
	lw	$t0, 0($a2)
	move	$t8, $ra
	move	$a2, $t1
	move	$a1, $t0
	move	$a0, $a3
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	solver_rect_fast.2797
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	j	beq_cont.30124
beq_else.30123:
	li	$t3, 2
	bne	$t2, $t3, beq_else.30125
	li	$a3, 0
	add	$at, $t1, $a3
	lwc1	$f2, 0($at)
	sw	$t0, -5($sp)
	sw	$t1, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fisneg
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30127
	li	$v0, 0
	j	beq_cont.30128
beq_else.30127:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	li	$a0, 0
	lw	$a1, -6($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	li	$a0, 3
	lw	$a1, -5($sp)
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.30128:
	j	beq_cont.30126
beq_else.30125:
	li	$t2, 0
	add	$at, $t1, $t2
	lwc1	$f5, 0($at)
	sw	$a3, -7($sp)
	swc1	$f5, -8($sp)
	sw	$t0, -5($sp)
	swc1	$f4, -9($sp)
	swc1	$f3, -10($sp)
	swc1	$f2, -11($sp)
	sw	$t1, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_fiszero
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30129
	li	$v0, 1
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -11($sp)
	mul.s	$f2, $f2, $f3
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	lwc1	$f4, -10($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$v0, 3
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	lwc1	$f4, -9($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$v0, 3
	lw	$a0, -5($sp)
	add	$at, $a0, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -12($sp)
	swc1	$f3, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fsqr
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -13($sp)
	lwc1	$f4, -8($sp)
	mul.s	$f3, $f4, $f3
	sub.s	$f2, $f2, $f3
	swc1	$f2, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fispos
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30131
	li	$v0, 0
	j	beq_cont.30132
beq_else.30131:
	lw	$v0, -7($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.30133
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -14($sp)
	sw	$v1, -15($sp)
	sw	$v0, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_sqrt
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -12($sp)
	sub.s	$f2, $f3, $f2
	li	$v0, 4
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lw	$v0, -15($sp)
	lw	$v1, -16($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.30134
beq_else.30133:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -14($sp)
	sw	$v1, -17($sp)
	sw	$v0, -18($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_sqrt
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -12($sp)
	add.s	$f2, $f3, $f2
	li	$v0, 4
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lw	$v0, -17($sp)
	lw	$v1, -18($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.30134:
	li	$v0, 1
beq_cont.30132:
	j	beq_cont.30130
beq_else.30129:
	li	$v0, 0
beq_cont.30130:
beq_cont.30126:
beq_cont.30124:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30135
	li	$v0, min_caml_objects
	lw	$v1, -4($sp)
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.30136
	jr	$ra
beq_else.30136:
	li	$v0, 1
	lw	$v1, -3($sp)
	add	$v0, $v1, $v0
	lw	$v1, -2($sp)
	lw	$a0, -1($sp)
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	j	solve_each_element_fast.2905
beq_else.30135:
	li	$v1, min_caml_solver_dist
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.22664)
	sw	$v0, -19($sp)
	swc1	$f2, -20($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_fless
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30138
	j	beq_cont.30139
beq_else.30138:
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, -20($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_fless
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30140
	j	beq_cont.30141
beq_else.30140:
	lwc1	$f2, 0(l.23261)
	lwc1	$f3, -20($sp)
	add.s	$f2, $f3, $f2
	li	$v0, 0
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f2
	li	$v0, min_caml_startp_fast
	li	$a0, 0
	add	$at, $v0, $a0
	lwc1	$f4, 0($at)
	add.s	$f3, $f3, $f4
	li	$v0, 1
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	mul.s	$f4, $f4, $f2
	li	$v0, min_caml_startp_fast
	li	$a0, 1
	add	$at, $v0, $a0
	lwc1	$f5, 0($at)
	add.s	$f4, $f4, $f5
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f5, 0($at)
	mul.s	$f5, $f5, $f2
	li	$v0, min_caml_startp_fast
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f6, 0($at)
	add.s	$f5, $f5, $f6
	li	$v0, 0
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	swc1	$f5, -21($sp)
	swc1	$f4, -22($sp)
	swc1	$f3, -23($sp)
	swc1	$f2, -24($sp)
	bne	$v0, $a0, beq_else.30142
	li	$v0, 1
	j	beq_cont.30143
beq_else.30142:
	li	$a0, min_caml_objects
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f14, $f5
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	is_outside.2871
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30144
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30146
	li	$v0, 1
	j	beq_cont.30147
beq_else.30146:
	li	$a0, min_caml_objects
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	lw	$a0, 5($v0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	lwc1	$f3, -23($sp)
	sub.s	$f2, $f3, $f2
	lw	$a0, 5($v0)
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	lwc1	$f5, -22($sp)
	sub.s	$f4, $f5, $f4
	lw	$a0, 5($v0)
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f6, 0($at)
	lwc1	$f7, -21($sp)
	sub.s	$f6, $f7, $f6
	lw	$a0, 1($v0)
	li	$a1, 1
	bne	$a0, $a1, beq_else.30148
	swc1	$f6, -25($sp)
	swc1	$f4, -26($sp)
	sw	$v0, -27($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fabs
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -27($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fless
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30150
	li	$v0, 0
	j	beq_cont.30151
beq_else.30150:
	lwc1	$f2, -26($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fabs
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -27($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fless
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30152
	li	$v0, 0
	j	beq_cont.30153
beq_else.30152:
	lwc1	$f2, -25($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fabs
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -27($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fless
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
beq_cont.30153:
beq_cont.30151:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30154
	lw	$v0, -27($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.30156
	li	$v0, 1
	j	beq_cont.30157
beq_else.30156:
	li	$v0, 0
beq_cont.30157:
	j	beq_cont.30155
beq_else.30154:
	lw	$v0, -27($sp)
	lw	$v0, 6($v0)
beq_cont.30155:
	j	beq_cont.30149
beq_else.30148:
	li	$a1, 2
	bne	$a0, $a1, beq_else.30158
	lw	$a0, 4($v0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f8, 0($at)
	mul.s	$f2, $f8, $f2
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f8, 0($at)
	mul.s	$f4, $f8, $f4
	add.s	$f2, $f2, $f4
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	lw	$v0, 6($v0)
	sw	$v0, -28($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_fisneg
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -28($sp)
	bne	$a0, $v1, beq_else.30160
	j	beq_cont.30161
beq_else.30160:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30162
	li	$v0, 1
	j	beq_cont.30163
beq_else.30162:
	li	$v0, 0
beq_cont.30163:
beq_cont.30161:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30164
	li	$v0, 1
	j	beq_cont.30165
beq_else.30164:
	li	$v0, 0
beq_cont.30165:
	j	beq_cont.30159
beq_else.30158:
	swc1	$f2, -29($sp)
	swc1	$f6, -25($sp)
	swc1	$f4, -26($sp)
	sw	$v0, -27($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -30($sp)
	addi	$sp, $sp, -31
	jal	min_caml_fsqr
	addi	$sp, $sp, 31
	lw	$t8, -30($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -27($sp)
	lw	$v1, 4($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -26($sp)
	swc1	$f2, -30($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	jal	min_caml_fsqr
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -27($sp)
	lw	$v1, 4($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -30($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, -25($sp)
	swc1	$f2, -31($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_fsqr
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -27($sp)
	lw	$v1, 4($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -31($sp)
	add.s	$f2, $f3, $f2
	lw	$v1, 3($v0)
	li	$a0, 0
	bne	$v1, $a0, beq_else.30166
	j	beq_cont.30167
beq_else.30166:
	lwc1	$f3, -25($sp)
	lwc1	$f4, -26($sp)
	mul.s	$f5, $f4, $f3
	lw	$v1, 9($v0)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lwc1	$f5, -29($sp)
	mul.s	$f3, $f3, $f5
	lw	$v1, 9($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f6, 0($at)
	mul.s	$f3, $f3, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f3, $f5, $f4
	lw	$v1, 9($v0)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
beq_cont.30167:
	lw	$v1, 1($v0)
	li	$a0, 3
	bne	$v1, $a0, beq_else.30168
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f2, $f3
	j	beq_cont.30169
beq_else.30168:
beq_cont.30169:
	lw	$v0, 6($v0)
	sw	$v0, -32($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_fisneg
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	li	$v1, 0
	lw	$a0, -32($sp)
	bne	$a0, $v1, beq_else.30170
	j	beq_cont.30171
beq_else.30170:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30172
	li	$v0, 1
	j	beq_cont.30173
beq_else.30172:
	li	$v0, 0
beq_cont.30173:
beq_cont.30171:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30174
	li	$v0, 1
	j	beq_cont.30175
beq_else.30174:
	li	$v0, 0
beq_cont.30175:
beq_cont.30159:
beq_cont.30149:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30176
	li	$v0, 2
	lw	$v1, -2($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30178
	li	$v0, 1
	j	beq_cont.30179
beq_else.30178:
	li	$a0, min_caml_objects
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	lwc1	$f2, -23($sp)
	lwc1	$f3, -22($sp)
	lwc1	$f4, -21($sp)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	is_outside.2871
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30180
	li	$v0, 3
	lwc1	$f2, -23($sp)
	lwc1	$f3, -22($sp)
	lwc1	$f4, -21($sp)
	lw	$v1, -2($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	check_all_inside.2876
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	j	beq_cont.30181
beq_else.30180:
	li	$v0, 0
beq_cont.30181:
beq_cont.30179:
	j	beq_cont.30177
beq_else.30176:
	li	$v0, 0
beq_cont.30177:
beq_cont.30147:
	j	beq_cont.30145
beq_else.30144:
	li	$v0, 0
beq_cont.30145:
beq_cont.30143:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30182
	j	beq_cont.30183
beq_else.30182:
	li	$v0, min_caml_tmin
	li	$v1, 0
	lwc1	$f2, -24($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, min_caml_intersection_point
	li	$v1, 0
	lwc1	$f2, -23($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v1, 1
	lwc1	$f2, -22($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v1, 2
	lwc1	$f2, -21($sp)
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, min_caml_intersected_object_id
	li	$v1, 0
	lw	$a0, -4($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	li	$v0, min_caml_intsec_rectside
	li	$v1, 0
	lw	$a0, -19($sp)
	add	$at, $v0, $v1
	sw	$a0, 0($at)
beq_cont.30183:
beq_cont.30141:
beq_cont.30139:
	li	$v0, 1
	lw	$v1, -3($sp)
	add	$v0, $v1, $v0
	lw	$v1, -2($sp)
	lw	$a0, -1($sp)
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	j	solve_each_element_fast.2905
solve_one_or_network_fast.2909:
	add	$at, $a1, $a0
	lw	$v0, 0($at)
	li	$v1, -1
	bne	$v0, $v1, beq_else.30184
	jr	$ra
beq_else.30184:
	li	$v1, min_caml_and_net
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$v1, 0
	sw	$a2, 0($sp)
	sw	$a1, -1($sp)
	sw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30186
	jr	$ra
beq_else.30186:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -3($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -3($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30188
	jr	$ra
beq_else.30188:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -4($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -4($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30190
	jr	$ra
beq_else.30190:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -5($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -5($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30192
	jr	$ra
beq_else.30192:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -6($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -6($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30194
	jr	$ra
beq_else.30194:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -7($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -7($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30196
	jr	$ra
beq_else.30196:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -8($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -8($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30198
	jr	$ra
beq_else.30198:
	li	$a1, min_caml_and_net
	add	$at, $a1, $a0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a2, 0($sp)
	sw	$v0, -9($sp)
	move	$t8, $ra
	move	$at, $a1
	move	$a1, $a0
	move	$a0, $at
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -9($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	lw	$a0, 0($sp)
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	j	solve_one_or_network_fast.2909
trace_or_matrix_fast.2913:
	add	$at, $a1, $a0
	lw	$v0, 0($at)
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a3, -1
	bne	$v1, $a3, beq_else.30200
	jr	$ra
beq_else.30200:
	li	$a3, 99
	sw	$a2, 0($sp)
	sw	$a1, -1($sp)
	sw	$a0, -2($sp)
	bne	$v1, $a3, beq_else.30202
	li	$v1, 1
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a3, -1
	bne	$v1, $a3, beq_else.30204
	j	beq_cont.30205
beq_else.30204:
	li	$a3, min_caml_and_net
	add	$at, $a3, $v1
	lw	$v1, 0($at)
	li	$a3, 0
	sw	$v0, -3($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $a3
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30206
	j	beq_cont.30207
beq_else.30206:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30208
	j	beq_cont.30209
beq_else.30208:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30210
	j	beq_cont.30211
beq_else.30210:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30212
	j	beq_cont.30213
beq_else.30212:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 6
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30214
	j	beq_cont.30215
beq_else.30214:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 7
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30216
	j	beq_cont.30217
beq_else.30216:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 8
	lw	$v1, -3($sp)
	lw	$a0, 0($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
beq_cont.30217:
beq_cont.30215:
beq_cont.30213:
beq_cont.30211:
beq_cont.30209:
beq_cont.30207:
beq_cont.30205:
	j	beq_cont.30203
beq_else.30202:
	li	$a3, min_caml_objects
	add	$at, $a3, $v1
	lw	$a3, 0($at)
	lw	$t0, 10($a3)
	li	$t1, 0
	add	$at, $t0, $t1
	lwc1	$f2, 0($at)
	li	$t1, 1
	add	$at, $t0, $t1
	lwc1	$f3, 0($at)
	li	$t1, 2
	add	$at, $t0, $t1
	lwc1	$f4, 0($at)
	lw	$t1, 1($a2)
	add	$at, $t1, $v1
	lw	$v1, 0($at)
	lw	$t1, 1($a3)
	li	$t2, 1
	sw	$v0, -3($sp)
	bne	$t1, $t2, beq_else.30218
	lw	$t0, 0($a2)
	move	$t8, $ra
	move	$a2, $v1
	move	$a1, $t0
	move	$a0, $a3
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	solver_rect_fast.2797
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	j	beq_cont.30219
beq_else.30218:
	li	$t2, 2
	bne	$t1, $t2, beq_else.30220
	li	$a3, 0
	add	$at, $v1, $a3
	lwc1	$f2, 0($at)
	sw	$t0, -4($sp)
	sw	$v1, -5($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_fisneg
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30222
	li	$v0, 0
	j	beq_cont.30223
beq_else.30222:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	li	$a0, 0
	lw	$a1, -5($sp)
	add	$at, $a1, $a0
	lwc1	$f2, 0($at)
	li	$a0, 3
	lw	$a1, -4($sp)
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, 1
beq_cont.30223:
	j	beq_cont.30221
beq_else.30220:
	li	$t1, 0
	add	$at, $v1, $t1
	lwc1	$f5, 0($at)
	sw	$a3, -6($sp)
	swc1	$f5, -7($sp)
	sw	$t0, -4($sp)
	swc1	$f4, -8($sp)
	swc1	$f3, -9($sp)
	swc1	$f2, -10($sp)
	sw	$v1, -5($sp)
	move	$t8, $ra
	mov.s	$f12, $f5
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fiszero
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30224
	li	$v0, 1
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, -10($sp)
	mul.s	$f2, $f2, $f3
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	lwc1	$f4, -9($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$v0, 3
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	lwc1	$f4, -8($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$v0, 3
	lw	$a0, -4($sp)
	add	$at, $a0, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -11($sp)
	swc1	$f3, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fsqr
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -12($sp)
	lwc1	$f4, -7($sp)
	mul.s	$f3, $f4, $f3
	sub.s	$f2, $f2, $f3
	swc1	$f2, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fispos
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30226
	li	$v0, 0
	j	beq_cont.30227
beq_else.30226:
	lw	$v0, -6($sp)
	lw	$v0, 6($v0)
	li	$v1, 0
	bne	$v0, $v1, beq_else.30228
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -13($sp)
	sw	$v1, -14($sp)
	sw	$v0, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_sqrt
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -11($sp)
	sub.s	$f2, $f3, $f2
	li	$v0, 4
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lw	$v0, -14($sp)
	lw	$v1, -15($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.30229
beq_else.30228:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	lwc1	$f2, -13($sp)
	sw	$v1, -16($sp)
	sw	$v0, -17($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_sqrt
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -11($sp)
	add.s	$f2, $f3, $f2
	li	$v0, 4
	lw	$v1, -5($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lw	$v0, -16($sp)
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.30229:
	li	$v0, 1
beq_cont.30227:
	j	beq_cont.30225
beq_else.30224:
	li	$v0, 0
beq_cont.30225:
beq_cont.30221:
beq_cont.30219:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30230
	j	beq_cont.30231
beq_else.30230:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fless
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30232
	j	beq_cont.30233
beq_else.30232:
	li	$v0, 1
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30234
	j	beq_cont.30235
beq_else.30234:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30236
	j	beq_cont.30237
beq_else.30236:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30238
	j	beq_cont.30239
beq_else.30238:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30240
	j	beq_cont.30241
beq_else.30240:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30242
	j	beq_cont.30243
beq_else.30242:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v0, 6
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30244
	j	beq_cont.30245
beq_else.30244:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v0, 7
	lw	$v1, -3($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30246
	j	beq_cont.30247
beq_else.30246:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v0, 8
	lw	$v1, -3($sp)
	lw	$a0, 0($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
beq_cont.30247:
beq_cont.30245:
beq_cont.30243:
beq_cont.30241:
beq_cont.30239:
beq_cont.30237:
beq_cont.30235:
beq_cont.30233:
beq_cont.30231:
beq_cont.30203:
	li	$v0, 1
	lw	$v1, -2($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a1, 0($at)
	li	$a2, -1
	bne	$a1, $a2, beq_else.30248
	jr	$ra
beq_else.30248:
	li	$a2, 99
	sw	$v0, -18($sp)
	bne	$a1, $a2, beq_else.30250
	li	$a1, 1
	add	$at, $a0, $a1
	lw	$a1, 0($at)
	li	$a2, -1
	bne	$a1, $a2, beq_else.30252
	j	beq_cont.30253
beq_else.30252:
	li	$a2, min_caml_and_net
	add	$at, $a2, $a1
	lw	$a1, 0($at)
	li	$a2, 0
	lw	$a3, 0($sp)
	sw	$a0, -19($sp)
	move	$t8, $ra
	move	$a0, $a2
	move	$a2, $a3
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30254
	j	beq_cont.30255
beq_else.30254:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30256
	j	beq_cont.30257
beq_else.30256:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30258
	j	beq_cont.30259
beq_else.30258:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30260
	j	beq_cont.30261
beq_else.30260:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 6
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30262
	j	beq_cont.30263
beq_else.30262:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 7
	lw	$v1, -19($sp)
	lw	$a0, 0($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
beq_cont.30263:
beq_cont.30261:
beq_cont.30259:
beq_cont.30257:
beq_cont.30255:
beq_cont.30253:
	j	beq_cont.30251
beq_else.30250:
	lw	$a2, 0($sp)
	sw	$a0, -19($sp)
	move	$t8, $ra
	move	$a0, $a1
	move	$a1, $a2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solver_fast2.2834
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30264
	j	beq_cont.30265
beq_else.30264:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fless
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30266
	j	beq_cont.30267
beq_else.30266:
	li	$v0, 1
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30268
	j	beq_cont.30269
beq_else.30268:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30270
	j	beq_cont.30271
beq_else.30270:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30272
	j	beq_cont.30273
beq_else.30272:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30274
	j	beq_cont.30275
beq_else.30274:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30276
	j	beq_cont.30277
beq_else.30276:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 6
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30278
	j	beq_cont.30279
beq_else.30278:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, 0($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 7
	lw	$v1, -19($sp)
	lw	$a0, 0($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
beq_cont.30279:
beq_cont.30277:
beq_cont.30275:
beq_cont.30273:
beq_cont.30271:
beq_cont.30269:
beq_cont.30267:
beq_cont.30265:
beq_cont.30251:
	li	$v0, 1
	lw	$v1, -18($sp)
	add	$v0, $v1, $v0
	lw	$v1, -1($sp)
	lw	$a0, 0($sp)
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	j	trace_or_matrix_fast.2913
get_nvector_second.2923:
	li	$v0, min_caml_intersection_point
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lw	$v0, 5($a0)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	li	$v0, min_caml_intersection_point
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	lw	$v0, 5($a0)
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	sub.s	$f3, $f3, $f4
	li	$v0, min_caml_intersection_point
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	lw	$v0, 5($a0)
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	sub.s	$f4, $f4, $f5
	lw	$v0, 4($a0)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	mul.s	$f5, $f2, $f5
	lw	$v0, 4($a0)
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f6, 0($at)
	mul.s	$f6, $f3, $f6
	lw	$v0, 4($a0)
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f7, 0($at)
	mul.s	$f7, $f4, $f7
	lw	$v0, 3($a0)
	li	$v1, 0
	sw	$a0, 0($sp)
	bne	$v0, $v1, beq_else.30280
	li	$v0, min_caml_nvector
	li	$v1, 0
	add	$at, $v0, $v1
	swc1	$f5, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 1
	add	$at, $v0, $v1
	swc1	$f6, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 2
	add	$at, $v0, $v1
	swc1	$f7, 0($at)
	j	beq_cont.30281
beq_else.30280:
	li	$v0, min_caml_nvector
	li	$v1, 0
	lw	$a1, 9($a0)
	li	$a2, 2
	add	$at, $a1, $a2
	lwc1	$f8, 0($at)
	mul.s	$f8, $f3, $f8
	lw	$a1, 9($a0)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f9, 0($at)
	mul.s	$f9, $f4, $f9
	add.s	$f8, $f8, $f9
	swc1	$f7, -1($sp)
	swc1	$f3, -2($sp)
	swc1	$f6, -3($sp)
	swc1	$f4, -4($sp)
	swc1	$f2, -5($sp)
	sw	$v1, -6($sp)
	sw	$v0, -7($sp)
	swc1	$f5, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f8
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_fhalf
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -8($sp)
	add.s	$f2, $f3, $f2
	lw	$v0, -6($sp)
	lw	$v1, -7($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 1
	lw	$a0, 0($sp)
	lw	$a1, 9($a0)
	li	$a2, 2
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	lwc1	$f3, -5($sp)
	mul.s	$f2, $f3, $f2
	lw	$a1, 9($a0)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f4, 0($at)
	lwc1	$f5, -4($sp)
	mul.s	$f4, $f5, $f4
	add.s	$f2, $f2, $f4
	sw	$v1, -9($sp)
	sw	$v0, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fhalf
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -3($sp)
	add.s	$f2, $f3, $f2
	lw	$v0, -9($sp)
	lw	$v1, -10($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 2
	lw	$a0, 0($sp)
	lw	$a1, 9($a0)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	lwc1	$f3, -5($sp)
	mul.s	$f2, $f3, $f2
	lw	$a1, 9($a0)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f3, 0($at)
	lwc1	$f4, -2($sp)
	mul.s	$f3, $f4, $f3
	add.s	$f2, $f2, $f3
	sw	$v1, -11($sp)
	sw	$v0, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fhalf
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -1($sp)
	add.s	$f2, $f3, $f2
	lw	$v0, -11($sp)
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
beq_cont.30281:
	li	$v0, min_caml_nvector
	lw	$v1, 0($sp)
	lw	$v1, 6($v1)
	li	$a0, 0
	add	$at, $v0, $a0
	lwc1	$f2, 0($at)
	sw	$v1, -13($sp)
	sw	$v0, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fsqr
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -14($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fsqr
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -15($sp)
	add.s	$f2, $f3, $f2
	li	$v0, 2
	lw	$v1, -14($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fsqr
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -16($sp)
	add.s	$f2, $f3, $f2
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_sqrt
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	swc1	$f2, -17($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fiszero
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30282
	li	$v0, 0
	lw	$v1, -13($sp)
	bne	$v1, $v0, beq_else.30284
	lwc1	$f2, 0(l.22725)
	lwc1	$f3, -17($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	j	beq_cont.30285
beq_else.30284:
	lwc1	$f2, 0(l.22726)
	lwc1	$f3, -17($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
beq_cont.30285:
	j	beq_cont.30283
beq_else.30282:
	lwc1	$f2, 0(l.22725)
beq_cont.30283:
	li	$v0, 0
	li	$v1, 0
	lw	$a0, -14($sp)
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f2
	add	$at, $a0, $v0
	swc1	$f3, 0($at)
	li	$v0, 1
	li	$v1, 1
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f2
	add	$at, $a0, $v0
	swc1	$f3, 0($at)
	li	$v0, 2
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f3, $f2
	add	$at, $a0, $v0
	swc1	$f2, 0($at)
	jr	$ra
utexture.2928:
	lw	$v0, 0($a0)
	li	$v1, min_caml_texture_color
	li	$a2, 0
	lw	$a3, 8($a0)
	li	$t0, 0
	add	$at, $a3, $t0
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$v1, min_caml_texture_color
	li	$a2, 1
	lw	$a3, 8($a0)
	li	$t0, 1
	add	$at, $a3, $t0
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$v1, min_caml_texture_color
	li	$a2, 2
	lw	$a3, 8($a0)
	li	$t0, 2
	add	$at, $a3, $t0
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$v1, 1
	bne	$v0, $v1, beq_else.30287
	li	$v0, 0
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	lw	$v0, 5($a0)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.23768)
	mul.s	$f3, $f2, $f3
	sw	$a0, 0($sp)
	sw	$a1, -1($sp)
	swc1	$f2, -2($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_floor
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.23769)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -2($sp)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 0(l.23759)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fless
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v1, 2
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	lw	$v1, 0($sp)
	lw	$v1, 5($v1)
	li	$a0, 2
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.23768)
	mul.s	$f3, $f2, $f3
	sw	$v0, -3($sp)
	swc1	$f2, -4($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_floor
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.23769)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -4($sp)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 0(l.23759)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_fless
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v1, min_caml_texture_color
	li	$a0, 1
	li	$a1, 0
	lw	$a2, -3($sp)
	bne	$a2, $a1, beq_else.30288
	li	$a1, 0
	bne	$v0, $a1, beq_else.30290
	lwc1	$f2, 0(l.23752)
	j	beq_cont.30291
beq_else.30290:
	lwc1	$f2, 0(l.22664)
beq_cont.30291:
	j	beq_cont.30289
beq_else.30288:
	li	$a1, 0
	bne	$v0, $a1, beq_else.30292
	lwc1	$f2, 0(l.22664)
	j	beq_cont.30293
beq_else.30292:
	lwc1	$f2, 0(l.23752)
beq_cont.30293:
beq_cont.30289:
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	jr	$ra
beq_else.30287:
	li	$v1, 2
	bne	$v0, $v1, beq_else.30295
	li	$v0, 1
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23763)
	mul.s	$f2, $f2, $f3
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_sin
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_fsqr
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, min_caml_texture_color
	li	$v1, 0
	lwc1	$f3, 0(l.23752)
	mul.s	$f3, $f3, $f2
	add	$at, $v0, $v1
	swc1	$f3, 0($at)
	li	$v0, min_caml_texture_color
	li	$v1, 1
	lwc1	$f3, 0(l.23752)
	lwc1	$f4, 0(l.22725)
	sub.s	$f2, $f4, $f2
	mul.s	$f2, $f3, $f2
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	jr	$ra
beq_else.30295:
	li	$v1, 3
	bne	$v0, $v1, beq_else.30297
	li	$v0, 0
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	lw	$v0, 5($a0)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	li	$v0, 2
	add	$at, $a1, $v0
	lwc1	$f3, 0($at)
	lw	$v0, 5($a0)
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	sub.s	$f3, $f3, $f4
	swc1	$f3, -5($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_fsqr
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -5($sp)
	swc1	$f2, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fsqr
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -6($sp)
	add.s	$f2, $f3, $f2
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_sqrt
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.23759)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	swc1	$f2, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_floor
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -7($sp)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 0(l.23746)
	mul.s	$f2, $f2, $f3
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_cos
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fsqr
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, min_caml_texture_color
	li	$v1, 1
	lwc1	$f3, 0(l.23752)
	mul.s	$f3, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f3, 0($at)
	li	$v0, min_caml_texture_color
	li	$v1, 2
	lwc1	$f3, 0(l.22725)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 0(l.23752)
	mul.s	$f2, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	jr	$ra
beq_else.30297:
	li	$v1, 4
	bne	$v0, $v1, beq_else.30299
	li	$v0, 0
	add	$at, $a1, $v0
	lwc1	$f2, 0($at)
	lw	$v0, 5($a0)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	lw	$v0, 4($a0)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	sw	$a0, 0($sp)
	sw	$a1, -1($sp)
	swc1	$f2, -8($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_sqrt
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -8($sp)
	mul.s	$f2, $f3, $f2
	li	$v0, 2
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	lw	$v0, 0($sp)
	lw	$a0, 5($v0)
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	sub.s	$f3, $f3, $f4
	lw	$a0, 4($v0)
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	swc1	$f2, -9($sp)
	swc1	$f3, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_sqrt
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -10($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f3, -9($sp)
	swc1	$f2, -11($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_fsqr
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -11($sp)
	swc1	$f2, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fsqr
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -12($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, -9($sp)
	swc1	$f2, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fabs
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.23743)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fless
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30300
	lwc1	$f2, -9($sp)
	lwc1	$f3, -11($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fabs
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_atan
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.23745)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.23746)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	j	beq_cont.30301
beq_else.30300:
	lwc1	$f2, 0(l.23744)
beq_cont.30301:
	swc1	$f2, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_floor
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -14($sp)
	sub.s	$f2, $f3, $f2
	li	$v0, 1
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	lw	$v0, 0($sp)
	lw	$v1, 5($v0)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	sub.s	$f3, $f3, $f4
	lw	$v0, 4($v0)
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	swc1	$f2, -15($sp)
	swc1	$f3, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_sqrt
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -16($sp)
	mul.s	$f2, $f3, $f2
	lwc1	$f3, -13($sp)
	swc1	$f2, -17($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fabs
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.23743)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fless
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30302
	lwc1	$f2, -13($sp)
	lwc1	$f3, -17($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fabs
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_atan
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.23745)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.23746)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	j	beq_cont.30303
beq_else.30302:
	lwc1	$f2, 0(l.23744)
beq_cont.30303:
	swc1	$f2, -18($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_floor
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -18($sp)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 0(l.23750)
	lwc1	$f4, 0(l.23751)
	lwc1	$f5, -15($sp)
	sub.s	$f4, $f4, $f5
	swc1	$f2, -19($sp)
	swc1	$f3, -20($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_fsqr
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -20($sp)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 0(l.23751)
	lwc1	$f4, -19($sp)
	sub.s	$f3, $f3, $f4
	swc1	$f2, -21($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_fsqr
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -21($sp)
	sub.s	$f2, $f3, $f2
	swc1	$f2, -22($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fisneg
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30304
	lwc1	$f2, -22($sp)
	j	beq_cont.30305
beq_else.30304:
	lwc1	$f2, 0(l.22664)
beq_cont.30305:
	li	$v0, min_caml_texture_color
	li	$v1, 2
	lwc1	$f3, 0(l.23752)
	mul.s	$f2, $f3, $f2
	lwc1	$f3, 0(l.23753)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	jr	$ra
beq_else.30299:
	jr	$ra
add_light.2931:
	swc1	$f14, 0($sp)
	swc1	$f13, -1($sp)
	swc1	$f12, -2($sp)
	move	$t8, $ra
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fispos
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30308
	j	beq_cont.30309
beq_else.30308:
	li	$v0, min_caml_rgb
	li	$v1, min_caml_texture_color
	li	$a0, 0
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	add	$at, $v1, $a1
	lwc1	$f3, 0($at)
	lwc1	$f4, -2($sp)
	mul.s	$f3, $f4, $f3
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 1
	add	$at, $v1, $a1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f4, $f3
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 2
	add	$at, $v1, $a1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f4, $f3
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
beq_cont.30309:
	lwc1	$f2, -1($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fispos
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30310
	jr	$ra
beq_else.30310:
	lwc1	$f2, -1($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fsqr
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_fsqr
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0($sp)
	mul.s	$f2, $f2, $f3
	li	$v0, min_caml_rgb
	li	$v1, 0
	li	$a0, min_caml_rgb
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	add.s	$f3, $f3, $f2
	add	$at, $v0, $v1
	swc1	$f3, 0($at)
	li	$v0, min_caml_rgb
	li	$v1, 1
	li	$a0, min_caml_rgb
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	add.s	$f3, $f3, $f2
	add	$at, $v0, $v1
	swc1	$f3, 0($at)
	li	$v0, min_caml_rgb
	li	$v1, 2
	li	$a0, min_caml_rgb
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	add.s	$f2, $f3, $f2
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	jr	$ra
trace_reflections.2935:
	lw	$v0, 4($gp)
	lw	$v1, 3($gp)
	lw	$a2, 2($gp)
	lw	$a3, 1($gp)
	li	$t0, 0
	sub	$at, $t0, $a0
	bgtz	$at, ble_else.30313
	li	$t0, min_caml_reflections
	add	$at, $t0, $a0
	lw	$t0, 0($at)
	lw	$t1, 1($t0)
	li	$t2, min_caml_tmin
	li	$t3, 0
	lwc1	$f2, 0(l.23789)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t2, 0
	li	$t3, min_caml_or_net
	li	$t4, 0
	add	$at, $t3, $t4
	lw	$t3, 0($at)
	sw	$gp, 0($sp)
	sw	$a0, -1($sp)
	swc1	$f13, -2($sp)
	sw	$a1, -3($sp)
	swc1	$f12, -4($sp)
	sw	$t1, -5($sp)
	sw	$v0, -6($sp)
	sw	$v1, -7($sp)
	sw	$a2, -8($sp)
	sw	$a3, -9($sp)
	sw	$t0, -10($sp)
	move	$t8, $ra
	move	$a2, $t1
	move	$a1, $t3
	move	$a0, $t2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	trace_or_matrix_fast.2913
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	swc1	$f2, -11($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_fless
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30314
	li	$v0, 0
	j	beq_cont.30315
beq_else.30314:
	lwc1	$f2, 0(l.23793)
	lwc1	$f3, -11($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_fless
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
beq_cont.30315:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30316
	j	beq_cont.30317
beq_else.30316:
	li	$v0, min_caml_intersected_object_id
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, 4
	sll	$v0, $v0, 2
	li	$v1, min_caml_intsec_rectside
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	add	$v0, $v0, $v1
	lw	$v1, -10($sp)
	lw	$a0, 0($v1)
	bne	$v0, $a0, beq_else.30318
	li	$v0, 0
	li	$a0, min_caml_or_net
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a1, 0
	add	$at, $v0, $a1
	lw	$a1, 0($at)
	li	$a2, -1
	bne	$a1, $a2, beq_else.30320
	li	$v0, 0
	j	beq_cont.30321
beq_else.30320:
	li	$a2, 99
	sw	$v0, -12($sp)
	sw	$a0, -13($sp)
	bne	$a1, $a2, beq_else.30322
	li	$v0, 1
	j	beq_cont.30323
beq_else.30322:
	li	$a2, min_caml_intersection_point
	lw	$a3, -9($sp)
	move	$t8, $ra
	move	$a0, $a1
	move	$a1, $a3
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	solver_fast.2816
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30324
	li	$v0, 0
	j	beq_cont.30325
beq_else.30324:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fless
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30326
	li	$v0, 0
	j	beq_cont.30327
beq_else.30326:
	li	$v0, 1
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30328
	li	$v0, 0
	j	beq_cont.30329
beq_else.30328:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30330
	li	$v0, 2
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30332
	li	$v0, 0
	j	beq_cont.30333
beq_else.30332:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30334
	li	$v0, 3
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30336
	li	$v0, 0
	j	beq_cont.30337
beq_else.30336:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30338
	li	$v0, 4
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30340
	li	$v0, 0
	j	beq_cont.30341
beq_else.30340:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30342
	li	$v0, 5
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30344
	li	$v0, 0
	j	beq_cont.30345
beq_else.30344:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30346
	li	$v0, 6
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30348
	li	$v0, 0
	j	beq_cont.30349
beq_else.30348:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30350
	li	$v0, 7
	lw	$v1, -12($sp)
	lw	$a0, -7($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	j	beq_cont.30351
beq_else.30350:
	li	$v0, 1
beq_cont.30351:
beq_cont.30349:
	j	beq_cont.30347
beq_else.30346:
	li	$v0, 1
beq_cont.30347:
beq_cont.30345:
	j	beq_cont.30343
beq_else.30342:
	li	$v0, 1
beq_cont.30343:
beq_cont.30341:
	j	beq_cont.30339
beq_else.30338:
	li	$v0, 1
beq_cont.30339:
beq_cont.30337:
	j	beq_cont.30335
beq_else.30334:
	li	$v0, 1
beq_cont.30335:
beq_cont.30333:
	j	beq_cont.30331
beq_else.30330:
	li	$v0, 1
beq_cont.30331:
beq_cont.30329:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30352
	li	$v0, 0
	j	beq_cont.30353
beq_else.30352:
	li	$v0, 1
beq_cont.30353:
beq_cont.30327:
beq_cont.30325:
beq_cont.30323:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30354
	li	$v0, 1
	lw	$v1, -13($sp)
	lw	$a0, -6($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	j	beq_cont.30355
beq_else.30354:
	li	$v0, 1
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30356
	li	$v0, 0
	j	beq_cont.30357
beq_else.30356:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30358
	li	$v0, 2
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30360
	li	$v0, 0
	j	beq_cont.30361
beq_else.30360:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30362
	li	$v0, 3
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30364
	li	$v0, 0
	j	beq_cont.30365
beq_else.30364:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30366
	li	$v0, 4
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30368
	li	$v0, 0
	j	beq_cont.30369
beq_else.30368:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30370
	li	$v0, 5
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30372
	li	$v0, 0
	j	beq_cont.30373
beq_else.30372:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30374
	li	$v0, 6
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30376
	li	$v0, 0
	j	beq_cont.30377
beq_else.30376:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -8($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30378
	li	$v0, 7
	lw	$v1, -12($sp)
	lw	$a0, -7($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	j	beq_cont.30379
beq_else.30378:
	li	$v0, 1
beq_cont.30379:
beq_cont.30377:
	j	beq_cont.30375
beq_else.30374:
	li	$v0, 1
beq_cont.30375:
beq_cont.30373:
	j	beq_cont.30371
beq_else.30370:
	li	$v0, 1
beq_cont.30371:
beq_cont.30369:
	j	beq_cont.30367
beq_else.30366:
	li	$v0, 1
beq_cont.30367:
beq_cont.30365:
	j	beq_cont.30363
beq_else.30362:
	li	$v0, 1
beq_cont.30363:
beq_cont.30361:
	j	beq_cont.30359
beq_else.30358:
	li	$v0, 1
beq_cont.30359:
beq_cont.30357:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30380
	li	$v0, 1
	lw	$v1, -13($sp)
	lw	$a0, -6($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	j	beq_cont.30381
beq_else.30380:
	li	$v0, 1
beq_cont.30381:
beq_cont.30355:
beq_cont.30321:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30382
	li	$v0, min_caml_nvector
	lw	$v1, -5($sp)
	lw	$a0, 0($v1)
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $a0, $v0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lw	$v0, -10($sp)
	lwc1	$f3, 2($v0)
	lwc1	$f4, -4($sp)
	mul.s	$f5, $f3, $f4
	mul.s	$f2, $f5, $f2
	lw	$v0, 0($v1)
	li	$v1, 0
	lw	$a0, -3($sp)
	add	$at, $a0, $v1
	lwc1	$f5, 0($at)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	li	$v1, 1
	add	$at, $a0, $v1
	lwc1	$f6, 0($at)
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f6, 0($at)
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	swc1	$f3, -14($sp)
	swc1	$f2, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fispos
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30384
	j	beq_cont.30385
beq_else.30384:
	li	$v0, min_caml_rgb
	li	$v1, min_caml_texture_color
	li	$a0, 0
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	add	$at, $v1, $a1
	lwc1	$f3, 0($at)
	lwc1	$f4, -15($sp)
	mul.s	$f3, $f4, $f3
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 1
	add	$at, $v1, $a1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f4, $f3
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 2
	add	$at, $v1, $a1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f4, $f3
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
beq_cont.30385:
	lwc1	$f2, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fispos
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30386
	j	beq_cont.30387
beq_else.30386:
	lwc1	$f2, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fsqr
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fsqr
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -2($sp)
	mul.s	$f2, $f2, $f3
	li	$v0, min_caml_rgb
	li	$v1, 0
	li	$a0, min_caml_rgb
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	add.s	$f4, $f4, $f2
	add	$at, $v0, $v1
	swc1	$f4, 0($at)
	li	$v0, min_caml_rgb
	li	$v1, 1
	li	$a0, min_caml_rgb
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	add.s	$f4, $f4, $f2
	add	$at, $v0, $v1
	swc1	$f4, 0($at)
	li	$v0, min_caml_rgb
	li	$v1, 2
	li	$a0, min_caml_rgb
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	add.s	$f2, $f4, $f2
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
beq_cont.30387:
	j	beq_cont.30383
beq_else.30382:
beq_cont.30383:
	j	beq_cont.30319
beq_else.30318:
beq_cont.30319:
beq_cont.30317:
	li	$v0, 1
	lw	$v1, -1($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.30388
	li	$v1, min_caml_reflections
	add	$at, $v1, $v0
	lw	$v1, 0($at)
	lw	$a0, 1($v1)
	li	$a1, min_caml_tmin
	li	$a2, 0
	lwc1	$f2, 0(l.23789)
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a1, 0
	li	$a2, min_caml_or_net
	li	$a3, 0
	add	$at, $a2, $a3
	lw	$a2, 0($at)
	add	$at, $a2, $a1
	lw	$a1, 0($at)
	li	$a3, 0
	add	$at, $a1, $a3
	lw	$a3, 0($at)
	li	$t0, -1
	sw	$v0, -16($sp)
	sw	$a0, -17($sp)
	sw	$v1, -18($sp)
	bne	$a3, $t0, beq_else.30389
	j	beq_cont.30390
beq_else.30389:
	li	$t0, 99
	sw	$a2, -19($sp)
	bne	$a3, $t0, beq_else.30391
	li	$a3, 1
	add	$at, $a1, $a3
	lw	$a3, 0($at)
	li	$t0, -1
	bne	$a3, $t0, beq_else.30393
	j	beq_cont.30394
beq_else.30393:
	li	$t0, min_caml_and_net
	add	$at, $t0, $a3
	lw	$a3, 0($at)
	li	$t0, 0
	sw	$a1, -20($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $a3
	move	$a0, $t0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30395
	j	beq_cont.30396
beq_else.30395:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -17($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30397
	j	beq_cont.30398
beq_else.30397:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -17($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30399
	j	beq_cont.30400
beq_else.30399:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -17($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -20($sp)
	lw	$a0, -17($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
beq_cont.30400:
beq_cont.30398:
beq_cont.30396:
beq_cont.30394:
	j	beq_cont.30392
beq_else.30391:
	sw	$a1, -20($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	solver_fast2.2834
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30401
	j	beq_cont.30402
beq_else.30401:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_fless
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30403
	j	beq_cont.30404
beq_else.30403:
	li	$v0, 1
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30405
	j	beq_cont.30406
beq_else.30405:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -17($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30407
	j	beq_cont.30408
beq_else.30407:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -17($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30409
	j	beq_cont.30410
beq_else.30409:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -17($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30411
	j	beq_cont.30412
beq_else.30411:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -17($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -20($sp)
	lw	$a0, -17($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
beq_cont.30412:
beq_cont.30410:
beq_cont.30408:
beq_cont.30406:
beq_cont.30404:
beq_cont.30402:
beq_cont.30392:
	li	$v0, 1
	lw	$v1, -19($sp)
	lw	$a0, -17($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	trace_or_matrix_fast.2913
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
beq_cont.30390:
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	swc1	$f2, -21($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_fless
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30413
	li	$v0, 0
	j	beq_cont.30414
beq_else.30413:
	lwc1	$f2, 0(l.23793)
	lwc1	$f3, -21($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_fless
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
beq_cont.30414:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30415
	j	beq_cont.30416
beq_else.30415:
	li	$v0, min_caml_intersected_object_id
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, 4
	sll	$v0, $v0, 2
	li	$v1, min_caml_intsec_rectside
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	add	$v0, $v0, $v1
	lw	$v1, -18($sp)
	lw	$a0, 0($v1)
	bne	$v0, $a0, beq_else.30417
	li	$v0, 0
	li	$a0, min_caml_or_net
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	lw	$a1, -6($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $a0
	move	$a0, $v0
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30419
	li	$v0, min_caml_nvector
	lw	$v1, -17($sp)
	lw	$a0, 0($v1)
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $a0, $v0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lw	$v0, -18($sp)
	lwc1	$f3, 2($v0)
	lwc1	$f4, -4($sp)
	mul.s	$f5, $f3, $f4
	mul.s	$f2, $f5, $f2
	lw	$v0, 0($v1)
	li	$v1, 0
	lw	$a0, -3($sp)
	add	$at, $a0, $v1
	lwc1	$f5, 0($at)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	li	$v1, 1
	add	$at, $a0, $v1
	lwc1	$f6, 0($at)
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f6, 0($at)
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	lwc1	$f5, -2($sp)
	move	$t8, $ra
	mov.s	$f14, $f5
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	add_light.2931
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	j	beq_cont.30420
beq_else.30419:
beq_cont.30420:
	j	beq_cont.30418
beq_else.30417:
beq_cont.30418:
beq_cont.30416:
	li	$v0, 1
	lw	$v1, -16($sp)
	sub	$v0, $v1, $v0
	lwc1	$f2, -4($sp)
	lwc1	$f3, -2($sp)
	lw	$v1, -3($sp)
	lw	$a0, 0($sp)
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	lw	$t8, 0($gp)
	jr	$t8
ble_else.30388:
	jr	$ra
ble_else.30313:
	jr	$ra
trace_ray.2940:
	lw	$v0, 5($gp)
	lw	$v1, 4($gp)
	lw	$a3, 3($gp)
	lw	$t0, 2($gp)
	lw	$t1, 1($gp)
	li	$t2, 4
	sub	$at, $a0, $t2
	bgtz	$at, ble_else.30423
	lw	$t2, 2($a2)
	li	$t3, min_caml_tmin
	li	$t4, 0
	lwc1	$f2, 0(l.23789)
	add	$at, $t3, $t4
	swc1	$f2, 0($at)
	li	$t3, 0
	li	$t4, min_caml_or_net
	li	$t5, 0
	add	$at, $t4, $t5
	lw	$t4, 0($at)
	sw	$gp, 0($sp)
	swc1	$f13, -1($sp)
	sw	$v0, -2($sp)
	sw	$v1, -3($sp)
	sw	$a3, -4($sp)
	sw	$t0, -5($sp)
	sw	$t1, -6($sp)
	sw	$a2, -7($sp)
	swc1	$f12, -8($sp)
	sw	$a1, -9($sp)
	sw	$a0, -10($sp)
	sw	$t2, -11($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a0, $t3
	move	$a1, $t4
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	trace_or_matrix.2899
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	swc1	$f2, -12($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fless
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30424
	li	$v0, 0
	j	beq_cont.30425
beq_else.30424:
	lwc1	$f2, 0(l.23793)
	lwc1	$f3, -12($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fless
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
beq_cont.30425:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30426
	li	$v0, -1
	lw	$v1, -10($sp)
	lw	$a0, -11($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 0
	bne	$v1, $v0, beq_else.30427
	jr	$ra
beq_else.30427:
	li	$v0, min_caml_light
	li	$v1, 0
	lw	$a0, -9($sp)
	add	$at, $a0, $v1
	lwc1	$f2, 0($at)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$v1, 1
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fneg
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	swc1	$f2, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fispos
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30429
	jr	$ra
beq_else.30429:
	lwc1	$f2, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fsqr
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -13($sp)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -8($sp)
	mul.s	$f2, $f2, $f3
	li	$v0, min_caml_beam
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$v0, min_caml_rgb
	li	$v1, 0
	li	$a0, min_caml_rgb
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	add.s	$f3, $f3, $f2
	add	$at, $v0, $v1
	swc1	$f3, 0($at)
	li	$v0, min_caml_rgb
	li	$v1, 1
	li	$a0, min_caml_rgb
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	add.s	$f3, $f3, $f2
	add	$at, $v0, $v1
	swc1	$f3, 0($at)
	li	$v0, min_caml_rgb
	li	$v1, 2
	li	$a0, min_caml_rgb
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	add.s	$f2, $f3, $f2
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	jr	$ra
beq_else.30426:
	li	$v0, min_caml_intersected_object_id
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, min_caml_objects
	add	$at, $v1, $v0
	lw	$v1, 0($at)
	lw	$a0, 2($v1)
	lw	$a1, 7($v1)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	lwc1	$f3, -8($sp)
	mul.s	$f2, $f2, $f3
	lw	$a1, 1($v1)
	li	$a2, 1
	sw	$a0, -14($sp)
	swc1	$f2, -15($sp)
	sw	$v0, -16($sp)
	sw	$v1, -17($sp)
	bne	$a1, $a2, beq_else.30432
	li	$a1, min_caml_intsec_rectside
	li	$a2, 0
	add	$at, $a1, $a2
	lw	$a1, 0($at)
	li	$a2, min_caml_nvector
	lwc1	$f4, 0(l.22664)
	li	$a3, 0
	add	$at, $a2, $a3
	swc1	$f4, 0($at)
	li	$a3, 1
	add	$at, $a2, $a3
	swc1	$f4, 0($at)
	li	$a3, 2
	add	$at, $a2, $a3
	swc1	$f4, 0($at)
	li	$a2, min_caml_nvector
	li	$a3, 1
	sub	$a3, $a1, $a3
	li	$t0, 1
	sub	$a1, $a1, $t0
	lw	$t0, -9($sp)
	add	$at, $t0, $a1
	lwc1	$f4, 0($at)
	sw	$a3, -18($sp)
	sw	$a2, -19($sp)
	swc1	$f4, -20($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_fiszero
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30434
	lwc1	$f2, -20($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_fispos
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30436
	lwc1	$f2, 0(l.22726)
	j	beq_cont.30437
beq_else.30436:
	lwc1	$f2, 0(l.22725)
beq_cont.30437:
	j	beq_cont.30435
beq_else.30434:
	lwc1	$f2, 0(l.22664)
beq_cont.30435:
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_fneg
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -18($sp)
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.30433
beq_else.30432:
	li	$a2, 2
	bne	$a1, $a2, beq_else.30438
	li	$a1, min_caml_nvector
	li	$a2, 0
	lw	$a3, 4($v1)
	li	$t0, 0
	add	$at, $a3, $t0
	lwc1	$f4, 0($at)
	sw	$a2, -21($sp)
	sw	$a1, -22($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fneg
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -21($sp)
	lw	$v1, -22($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 1
	lw	$a0, -17($sp)
	lw	$a1, 4($a0)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	sw	$v1, -23($sp)
	sw	$v0, -24($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_fneg
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -23($sp)
	lw	$v1, -24($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 2
	lw	$a0, -17($sp)
	lw	$a1, 4($a0)
	li	$a2, 2
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	sw	$v1, -25($sp)
	sw	$v0, -26($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -27($sp)
	addi	$sp, $sp, -28
	jal	min_caml_fneg
	addi	$sp, $sp, 28
	lw	$t8, -27($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -25($sp)
	lw	$v1, -26($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.30439
beq_else.30438:
	move	$t8, $ra
	move	$a0, $v1
	sw	$t8, -27($sp)
	addi	$sp, $sp, -28
	jal	get_nvector_second.2923
	addi	$sp, $sp, 28
	lw	$t8, -27($sp)
	move	$ra, $t8
beq_cont.30439:
beq_cont.30433:
	li	$v0, min_caml_startp
	li	$v1, min_caml_intersection_point
	li	$a0, 0
	li	$a1, 0
	add	$at, $v1, $a1
	lwc1	$f2, 0($at)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $v1, $a1
	lwc1	$f2, 0($at)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $v1, $a1
	lwc1	$f2, 0($at)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$v0, min_caml_intersection_point
	lw	$v1, -17($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -27($sp)
	addi	$sp, $sp, -28
	jal	utexture.2928
	addi	$sp, $sp, 28
	lw	$t8, -27($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -16($sp)
	sll	$v0, $v1, 2
	li	$v1, min_caml_intsec_rectside
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	add	$v0, $v0, $v1
	lw	$v1, -10($sp)
	lw	$a0, -11($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	lw	$v0, -7($sp)
	lw	$a1, 1($v0)
	add	$at, $a1, $v1
	lw	$a1, 0($at)
	li	$a2, min_caml_intersection_point
	li	$a3, 0
	li	$t0, 0
	add	$at, $a2, $t0
	lwc1	$f2, 0($at)
	add	$at, $a1, $a3
	swc1	$f2, 0($at)
	li	$a3, 1
	li	$t0, 1
	add	$at, $a2, $t0
	lwc1	$f2, 0($at)
	add	$at, $a1, $a3
	swc1	$f2, 0($at)
	li	$a3, 2
	li	$t0, 2
	add	$at, $a2, $t0
	lwc1	$f2, 0($at)
	add	$at, $a1, $a3
	swc1	$f2, 0($at)
	lw	$a1, 3($v0)
	lw	$a2, -17($sp)
	lw	$a3, 7($a2)
	li	$t0, 0
	add	$at, $a3, $t0
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23751)
	sw	$a1, -27($sp)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fless
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30440
	li	$v0, 1
	lw	$v1, -10($sp)
	lw	$a0, -27($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	lw	$v0, -7($sp)
	lw	$a0, 4($v0)
	add	$at, $a0, $v1
	lw	$a1, 0($at)
	li	$a2, min_caml_texture_color
	li	$a3, 0
	li	$t0, 0
	add	$at, $a2, $t0
	lwc1	$f2, 0($at)
	add	$at, $a1, $a3
	swc1	$f2, 0($at)
	li	$a3, 1
	li	$t0, 1
	add	$at, $a2, $t0
	lwc1	$f2, 0($at)
	add	$at, $a1, $a3
	swc1	$f2, 0($at)
	li	$a3, 2
	li	$t0, 2
	add	$at, $a2, $t0
	lwc1	$f2, 0($at)
	add	$at, $a1, $a3
	swc1	$f2, 0($at)
	add	$at, $a0, $v1
	lw	$a0, 0($at)
	lwc1	$f2, 0(l.23934)
	lwc1	$f3, -15($sp)
	mul.s	$f2, $f2, $f3
	li	$a1, 0
	li	$a2, 0
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f4, $f4, $f2
	add	$at, $a0, $a1
	swc1	$f4, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f4, $f4, $f2
	add	$at, $a0, $a1
	swc1	$f4, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f2, $f4, $f2
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	lw	$a0, 7($v0)
	add	$at, $a0, $v1
	lw	$a0, 0($at)
	li	$a1, min_caml_nvector
	li	$a2, 0
	li	$a3, 0
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $a0, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $a0, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	li	$a3, 2
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $a0, $a2
	swc1	$f2, 0($at)
	j	beq_cont.30441
beq_else.30440:
	li	$v0, 0
	lw	$v1, -10($sp)
	lw	$a0, -27($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
beq_cont.30441:
	lwc1	$f2, 0(l.23948)
	li	$v0, min_caml_nvector
	li	$a0, 0
	lw	$a1, -9($sp)
	add	$at, $a1, $a0
	lwc1	$f3, 0($at)
	li	$a0, 0
	add	$at, $v0, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	li	$a0, 1
	add	$at, $a1, $a0
	lwc1	$f4, 0($at)
	li	$a0, 1
	add	$at, $v0, $a0
	lwc1	$f5, 0($at)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	li	$a0, 2
	add	$at, $a1, $a0
	lwc1	$f4, 0($at)
	li	$a0, 2
	add	$at, $v0, $a0
	lwc1	$f5, 0($at)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f3
	li	$v0, min_caml_nvector
	li	$a0, 0
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 0
	add	$at, $v0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	add.s	$f3, $f3, $f4
	add	$at, $a1, $a0
	swc1	$f3, 0($at)
	li	$a0, 1
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 1
	add	$at, $v0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	add.s	$f3, $f3, $f4
	add	$at, $a1, $a0
	swc1	$f3, 0($at)
	li	$a0, 2
	li	$a2, 2
	add	$at, $a1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 2
	add	$at, $v0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	add	$at, $a1, $a0
	swc1	$f2, 0($at)
	lw	$v0, -17($sp)
	lw	$a0, 7($v0)
	li	$a2, 1
	add	$at, $a0, $a2
	lwc1	$f2, 0($at)
	lwc1	$f3, -8($sp)
	mul.s	$f2, $f3, $f2
	li	$a0, 0
	li	$a2, min_caml_or_net
	li	$a3, 0
	add	$at, $a2, $a3
	lw	$a2, 0($at)
	add	$at, $a2, $a0
	lw	$a0, 0($at)
	li	$a3, 0
	add	$at, $a0, $a3
	lw	$a3, 0($at)
	li	$t0, -1
	swc1	$f2, -28($sp)
	bne	$a3, $t0, beq_else.30442
	li	$v0, 0
	j	beq_cont.30443
beq_else.30442:
	li	$t0, 99
	sw	$a0, -29($sp)
	sw	$a2, -30($sp)
	bne	$a3, $t0, beq_else.30444
	li	$v0, 1
	j	beq_cont.30445
beq_else.30444:
	li	$t0, min_caml_intersection_point
	lw	$t1, -6($sp)
	move	$t8, $ra
	move	$a2, $t0
	move	$a1, $t1
	move	$a0, $a3
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	jal	solver_fast.2816
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30446
	li	$v0, 0
	j	beq_cont.30447
beq_else.30446:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	jal	min_caml_fless
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30448
	li	$v0, 0
	j	beq_cont.30449
beq_else.30448:
	li	$v0, 1
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30450
	li	$v0, 0
	j	beq_cont.30451
beq_else.30450:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30452
	li	$v0, 2
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30454
	li	$v0, 0
	j	beq_cont.30455
beq_else.30454:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30456
	li	$v0, 3
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30458
	li	$v0, 0
	j	beq_cont.30459
beq_else.30458:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30460
	li	$v0, 4
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30462
	li	$v0, 0
	j	beq_cont.30463
beq_else.30462:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30464
	li	$v0, 5
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30466
	li	$v0, 0
	j	beq_cont.30467
beq_else.30466:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30468
	li	$v0, 6
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30470
	li	$v0, 0
	j	beq_cont.30471
beq_else.30470:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30472
	li	$v0, 7
	lw	$v1, -29($sp)
	lw	$a0, -4($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	j	beq_cont.30473
beq_else.30472:
	li	$v0, 1
beq_cont.30473:
beq_cont.30471:
	j	beq_cont.30469
beq_else.30468:
	li	$v0, 1
beq_cont.30469:
beq_cont.30467:
	j	beq_cont.30465
beq_else.30464:
	li	$v0, 1
beq_cont.30465:
beq_cont.30463:
	j	beq_cont.30461
beq_else.30460:
	li	$v0, 1
beq_cont.30461:
beq_cont.30459:
	j	beq_cont.30457
beq_else.30456:
	li	$v0, 1
beq_cont.30457:
beq_cont.30455:
	j	beq_cont.30453
beq_else.30452:
	li	$v0, 1
beq_cont.30453:
beq_cont.30451:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30474
	li	$v0, 0
	j	beq_cont.30475
beq_else.30474:
	li	$v0, 1
beq_cont.30475:
beq_cont.30449:
beq_cont.30447:
beq_cont.30445:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30476
	li	$v0, 1
	lw	$v1, -30($sp)
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	j	beq_cont.30477
beq_else.30476:
	li	$v0, 1
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30478
	li	$v0, 0
	j	beq_cont.30479
beq_else.30478:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30480
	li	$v0, 2
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30482
	li	$v0, 0
	j	beq_cont.30483
beq_else.30482:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30484
	li	$v0, 3
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30486
	li	$v0, 0
	j	beq_cont.30487
beq_else.30486:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30488
	li	$v0, 4
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30490
	li	$v0, 0
	j	beq_cont.30491
beq_else.30490:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30492
	li	$v0, 5
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30494
	li	$v0, 0
	j	beq_cont.30495
beq_else.30494:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30496
	li	$v0, 6
	lw	$v1, -29($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30498
	li	$v0, 0
	j	beq_cont.30499
beq_else.30498:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30500
	li	$v0, 7
	lw	$v1, -29($sp)
	lw	$a0, -4($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	j	beq_cont.30501
beq_else.30500:
	li	$v0, 1
beq_cont.30501:
beq_cont.30499:
	j	beq_cont.30497
beq_else.30496:
	li	$v0, 1
beq_cont.30497:
beq_cont.30495:
	j	beq_cont.30493
beq_else.30492:
	li	$v0, 1
beq_cont.30493:
beq_cont.30491:
	j	beq_cont.30489
beq_else.30488:
	li	$v0, 1
beq_cont.30489:
beq_cont.30487:
	j	beq_cont.30485
beq_else.30484:
	li	$v0, 1
beq_cont.30485:
beq_cont.30483:
	j	beq_cont.30481
beq_else.30480:
	li	$v0, 1
beq_cont.30481:
beq_cont.30479:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30502
	li	$v0, 1
	lw	$v1, -30($sp)
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	j	beq_cont.30503
beq_else.30502:
	li	$v0, 1
beq_cont.30503:
beq_cont.30477:
beq_cont.30443:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30504
	li	$v0, min_caml_nvector
	li	$v1, min_caml_light
	li	$a0, 0
	add	$at, $v0, $a0
	lwc1	$f2, 0($at)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a0, 1
	add	$at, $v0, $a0
	lwc1	$f3, 0($at)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a0, 2
	add	$at, $v0, $a0
	lwc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	jal	min_caml_fneg
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -15($sp)
	mul.s	$f2, $f2, $f3
	li	$v0, min_caml_light
	li	$v1, 0
	lw	$a0, -9($sp)
	add	$at, $a0, $v1
	lwc1	$f4, 0($at)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	mul.s	$f4, $f4, $f5
	li	$v1, 1
	add	$at, $a0, $v1
	lwc1	$f5, 0($at)
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f5, 0($at)
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	swc1	$f2, -31($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_fneg
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -31($sp)
	swc1	$f2, -32($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_fispos
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30506
	j	beq_cont.30507
beq_else.30506:
	li	$v0, min_caml_rgb
	li	$v1, min_caml_texture_color
	li	$a0, 0
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	add	$at, $v1, $a1
	lwc1	$f3, 0($at)
	lwc1	$f4, -31($sp)
	mul.s	$f3, $f4, $f3
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 1
	add	$at, $v1, $a1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f4, $f3
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 2
	add	$at, $v1, $a1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f4, $f3
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
beq_cont.30507:
	lwc1	$f2, -32($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_fispos
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30508
	j	beq_cont.30509
beq_else.30508:
	lwc1	$f2, -32($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_fsqr
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_fsqr
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -28($sp)
	mul.s	$f2, $f2, $f3
	li	$v0, min_caml_rgb
	li	$v1, 0
	li	$a0, min_caml_rgb
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	add.s	$f4, $f4, $f2
	add	$at, $v0, $v1
	swc1	$f4, 0($at)
	li	$v0, min_caml_rgb
	li	$v1, 1
	li	$a0, min_caml_rgb
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	add.s	$f4, $f4, $f2
	add	$at, $v0, $v1
	swc1	$f4, 0($at)
	li	$v0, min_caml_rgb
	li	$v1, 2
	li	$a0, min_caml_rgb
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	add.s	$f2, $f4, $f2
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
beq_cont.30509:
	j	beq_cont.30505
beq_else.30504:
beq_cont.30505:
	li	$v0, min_caml_intersection_point
	li	$v1, min_caml_startp_fast
	li	$a0, 0
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a0, 1
	sub	$v1, $v1, $a0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	li	$v0, min_caml_n_reflections
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, 1
	sub	$v0, $v0, $v1
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.30510
	li	$v1, min_caml_reflections
	add	$at, $v1, $v0
	lw	$v1, 0($at)
	lw	$a0, 1($v1)
	li	$a1, min_caml_tmin
	li	$a2, 0
	lwc1	$f2, 0(l.23789)
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a1, 0
	li	$a2, min_caml_or_net
	li	$a3, 0
	add	$at, $a2, $a3
	lw	$a2, 0($at)
	add	$at, $a2, $a1
	lw	$a1, 0($at)
	li	$a3, 0
	add	$at, $a1, $a3
	lw	$a3, 0($at)
	li	$t0, -1
	sw	$v0, -33($sp)
	sw	$a0, -34($sp)
	sw	$v1, -35($sp)
	bne	$a3, $t0, beq_else.30512
	j	beq_cont.30513
beq_else.30512:
	li	$t0, 99
	sw	$a2, -36($sp)
	bne	$a3, $t0, beq_else.30514
	li	$a3, 1
	add	$at, $a1, $a3
	lw	$a3, 0($at)
	li	$t0, -1
	bne	$a3, $t0, beq_else.30516
	j	beq_cont.30517
beq_else.30516:
	li	$t0, min_caml_and_net
	add	$at, $t0, $a3
	lw	$a3, 0($at)
	li	$t0, 0
	sw	$a1, -37($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $a3
	move	$a0, $t0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -37($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30518
	j	beq_cont.30519
beq_else.30518:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -34($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -37($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30520
	j	beq_cont.30521
beq_else.30520:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -34($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -37($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30522
	j	beq_cont.30523
beq_else.30522:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -34($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -37($sp)
	lw	$a0, -34($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
beq_cont.30523:
beq_cont.30521:
beq_cont.30519:
beq_cont.30517:
	j	beq_cont.30515
beq_else.30514:
	sw	$a1, -37($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	solver_fast2.2834
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30524
	j	beq_cont.30525
beq_else.30524:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	min_caml_fless
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30526
	j	beq_cont.30527
beq_else.30526:
	li	$v0, 1
	lw	$v1, -37($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30528
	j	beq_cont.30529
beq_else.30528:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -34($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -37($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30530
	j	beq_cont.30531
beq_else.30530:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -34($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -37($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30532
	j	beq_cont.30533
beq_else.30532:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -34($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -37($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30534
	j	beq_cont.30535
beq_else.30534:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -34($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -37($sp)
	lw	$a0, -34($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
beq_cont.30535:
beq_cont.30533:
beq_cont.30531:
beq_cont.30529:
beq_cont.30527:
beq_cont.30525:
beq_cont.30515:
	li	$v0, 1
	lw	$v1, -36($sp)
	lw	$a0, -34($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	trace_or_matrix_fast.2913
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
beq_cont.30513:
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	swc1	$f2, -38($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_fless
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30536
	li	$v0, 0
	j	beq_cont.30537
beq_else.30536:
	lwc1	$f2, 0(l.23793)
	lwc1	$f3, -38($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_fless
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
beq_cont.30537:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30538
	j	beq_cont.30539
beq_else.30538:
	li	$v0, min_caml_intersected_object_id
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, 4
	sll	$v0, $v0, 2
	li	$v1, min_caml_intsec_rectside
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	add	$v0, $v0, $v1
	lw	$v1, -35($sp)
	lw	$a0, 0($v1)
	bne	$v0, $a0, beq_else.30540
	li	$v0, 0
	li	$a0, min_caml_or_net
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $a0
	move	$a0, $v0
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30542
	li	$v0, min_caml_nvector
	lw	$v1, -34($sp)
	lw	$a0, 0($v1)
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $a0, $v0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lw	$v0, -35($sp)
	lwc1	$f3, 2($v0)
	lwc1	$f4, -15($sp)
	mul.s	$f5, $f3, $f4
	mul.s	$f2, $f5, $f2
	lw	$v0, 0($v1)
	li	$v1, 0
	lw	$a0, -9($sp)
	add	$at, $a0, $v1
	lwc1	$f5, 0($at)
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	li	$v1, 1
	add	$at, $a0, $v1
	lwc1	$f6, 0($at)
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f6, 0($at)
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	lwc1	$f5, -28($sp)
	move	$t8, $ra
	mov.s	$f14, $f5
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	add_light.2931
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	j	beq_cont.30543
beq_else.30542:
beq_cont.30543:
	j	beq_cont.30541
beq_else.30540:
beq_cont.30541:
beq_cont.30539:
	li	$v0, 1
	lw	$v1, -33($sp)
	sub	$v0, $v1, $v0
	lwc1	$f2, -15($sp)
	lwc1	$f3, -28($sp)
	lw	$v1, -9($sp)
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	j	beq_cont.30511
beq_else.30510:
beq_cont.30511:
	lwc1	$f2, 0(l.24067)
	lwc1	$f3, -8($sp)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_fless
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30544
	jr	$ra
beq_else.30544:
	li	$v0, 4
	lw	$v1, -10($sp)
	sub	$at, $v0, $v1
	bgtz	$at, beq_else.30546
	j	beq_cont.30547
beq_else.30546:
	li	$v0, 1
	add	$v0, $v1, $v0
	li	$a0, -1
	lw	$a1, -11($sp)
	add	$at, $a1, $v0
	sw	$a0, 0($at)
beq_cont.30547:
	li	$v0, 2
	lw	$a0, -14($sp)
	bne	$a0, $v0, beq_else.30548
	lwc1	$f2, 0(l.22725)
	lw	$v0, -17($sp)
	lw	$v0, 7($v0)
	li	$a0, 0
	add	$at, $v0, $a0
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	lwc1	$f3, -8($sp)
	mul.s	$f2, $f3, $f2
	li	$v0, 1
	add	$v0, $v1, $v0
	li	$v1, min_caml_tmin
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	lwc1	$f4, -1($sp)
	add.s	$f3, $f4, $f3
	lw	$v1, -9($sp)
	lw	$a0, -7($sp)
	lw	$a1, 0($sp)
	move	$a2, $a0
	move	$gp, $a1
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	lw	$t8, 0($gp)
	jr	$t8
beq_else.30548:
	jr	$ra
ble_else.30423:
	jr	$ra
trace_diffuse_ray.2946:
	lw	$v0, 4($gp)
	lw	$v1, 3($gp)
	lw	$a1, 2($gp)
	lw	$a2, 1($gp)
	li	$a3, min_caml_tmin
	li	$t0, 0
	lwc1	$f2, 0(l.23789)
	add	$at, $a3, $t0
	swc1	$f2, 0($at)
	li	$a3, 0
	li	$t0, min_caml_or_net
	li	$t1, 0
	add	$at, $t0, $t1
	lw	$t0, 0($at)
	swc1	$f12, 0($sp)
	sw	$v0, -1($sp)
	sw	$v1, -2($sp)
	sw	$a1, -3($sp)
	sw	$a2, -4($sp)
	sw	$a0, -5($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $t0
	move	$a0, $a3
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	trace_or_matrix_fast.2913
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	swc1	$f2, -6($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fless
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30551
	li	$v0, 0
	j	beq_cont.30552
beq_else.30551:
	lwc1	$f2, 0(l.23793)
	lwc1	$f3, -6($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fless
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
beq_cont.30552:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30553
	jr	$ra
beq_else.30553:
	li	$v0, min_caml_objects
	li	$v1, min_caml_intersected_object_id
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	lw	$v1, -5($sp)
	lw	$v1, 0($v1)
	lw	$a0, 1($v0)
	li	$a1, 1
	sw	$v0, -7($sp)
	bne	$a0, $a1, beq_else.30555
	li	$a0, min_caml_intsec_rectside
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, min_caml_nvector
	lwc1	$f2, 0(l.22664)
	li	$a2, 0
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a1, min_caml_nvector
	li	$a2, 1
	sub	$a2, $a0, $a2
	li	$a3, 1
	sub	$a0, $a0, $a3
	add	$at, $v1, $a0
	lwc1	$f2, 0($at)
	sw	$a2, -8($sp)
	sw	$a1, -9($sp)
	swc1	$f2, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fiszero
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30557
	lwc1	$f2, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fispos
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30559
	lwc1	$f2, 0(l.22726)
	j	beq_cont.30560
beq_else.30559:
	lwc1	$f2, 0(l.22725)
beq_cont.30560:
	j	beq_cont.30558
beq_else.30557:
	lwc1	$f2, 0(l.22664)
beq_cont.30558:
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fneg
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -8($sp)
	lw	$v1, -9($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.30556
beq_else.30555:
	li	$v1, 2
	bne	$a0, $v1, beq_else.30561
	li	$v1, min_caml_nvector
	li	$a0, 0
	lw	$a1, 4($v0)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	sw	$a0, -11($sp)
	sw	$v1, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fneg
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -11($sp)
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 1
	lw	$a0, -7($sp)
	lw	$a1, 4($a0)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	sw	$v1, -13($sp)
	sw	$v0, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fneg
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -13($sp)
	lw	$v1, -14($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 2
	lw	$a0, -7($sp)
	lw	$a1, 4($a0)
	li	$a2, 2
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	sw	$v1, -15($sp)
	sw	$v0, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fneg
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -15($sp)
	lw	$v1, -16($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.30562
beq_else.30561:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	get_nvector_second.2923
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
beq_cont.30562:
beq_cont.30556:
	li	$v0, min_caml_intersection_point
	lw	$v1, -7($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	utexture.2928
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v0, 0
	li	$v1, min_caml_or_net
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	add	$at, $v0, $a0
	lw	$a0, 0($at)
	li	$a1, -1
	bne	$a0, $a1, beq_else.30563
	li	$v0, 0
	j	beq_cont.30564
beq_else.30563:
	li	$a1, 99
	sw	$v0, -17($sp)
	sw	$v1, -18($sp)
	bne	$a0, $a1, beq_else.30565
	li	$v0, 1
	j	beq_cont.30566
beq_else.30565:
	li	$a1, min_caml_intersection_point
	lw	$a2, -4($sp)
	move	$t8, $ra
	move	$at, $a2
	move	$a2, $a1
	move	$a1, $at
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	solver_fast.2816
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30567
	li	$v0, 0
	j	beq_cont.30568
beq_else.30567:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_fless
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30569
	li	$v0, 0
	j	beq_cont.30570
beq_else.30569:
	li	$v0, 1
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30571
	li	$v0, 0
	j	beq_cont.30572
beq_else.30571:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30573
	li	$v0, 2
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30575
	li	$v0, 0
	j	beq_cont.30576
beq_else.30575:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30577
	li	$v0, 3
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30579
	li	$v0, 0
	j	beq_cont.30580
beq_else.30579:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30581
	li	$v0, 4
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30583
	li	$v0, 0
	j	beq_cont.30584
beq_else.30583:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30585
	li	$v0, 5
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30587
	li	$v0, 0
	j	beq_cont.30588
beq_else.30587:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30589
	li	$v0, 6
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30591
	li	$v0, 0
	j	beq_cont.30592
beq_else.30591:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30593
	li	$v0, 7
	lw	$v1, -17($sp)
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	j	beq_cont.30594
beq_else.30593:
	li	$v0, 1
beq_cont.30594:
beq_cont.30592:
	j	beq_cont.30590
beq_else.30589:
	li	$v0, 1
beq_cont.30590:
beq_cont.30588:
	j	beq_cont.30586
beq_else.30585:
	li	$v0, 1
beq_cont.30586:
beq_cont.30584:
	j	beq_cont.30582
beq_else.30581:
	li	$v0, 1
beq_cont.30582:
beq_cont.30580:
	j	beq_cont.30578
beq_else.30577:
	li	$v0, 1
beq_cont.30578:
beq_cont.30576:
	j	beq_cont.30574
beq_else.30573:
	li	$v0, 1
beq_cont.30574:
beq_cont.30572:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30595
	li	$v0, 0
	j	beq_cont.30596
beq_else.30595:
	li	$v0, 1
beq_cont.30596:
beq_cont.30570:
beq_cont.30568:
beq_cont.30566:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30597
	li	$v0, 1
	lw	$v1, -18($sp)
	lw	$a0, -1($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	j	beq_cont.30598
beq_else.30597:
	li	$v0, 1
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30599
	li	$v0, 0
	j	beq_cont.30600
beq_else.30599:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30601
	li	$v0, 2
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30603
	li	$v0, 0
	j	beq_cont.30604
beq_else.30603:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30605
	li	$v0, 3
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30607
	li	$v0, 0
	j	beq_cont.30608
beq_else.30607:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30609
	li	$v0, 4
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30611
	li	$v0, 0
	j	beq_cont.30612
beq_else.30611:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30613
	li	$v0, 5
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30615
	li	$v0, 0
	j	beq_cont.30616
beq_else.30615:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30617
	li	$v0, 6
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30619
	li	$v0, 0
	j	beq_cont.30620
beq_else.30619:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$gp, $a1
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30621
	li	$v0, 7
	lw	$v1, -17($sp)
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	j	beq_cont.30622
beq_else.30621:
	li	$v0, 1
beq_cont.30622:
beq_cont.30620:
	j	beq_cont.30618
beq_else.30617:
	li	$v0, 1
beq_cont.30618:
beq_cont.30616:
	j	beq_cont.30614
beq_else.30613:
	li	$v0, 1
beq_cont.30614:
beq_cont.30612:
	j	beq_cont.30610
beq_else.30609:
	li	$v0, 1
beq_cont.30610:
beq_cont.30608:
	j	beq_cont.30606
beq_else.30605:
	li	$v0, 1
beq_cont.30606:
beq_cont.30604:
	j	beq_cont.30602
beq_else.30601:
	li	$v0, 1
beq_cont.30602:
beq_cont.30600:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30623
	li	$v0, 1
	lw	$v1, -18($sp)
	lw	$a0, -1($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	j	beq_cont.30624
beq_else.30623:
	li	$v0, 1
beq_cont.30624:
beq_cont.30598:
beq_cont.30564:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30625
	li	$v0, min_caml_nvector
	li	$v1, min_caml_light
	li	$a0, 0
	add	$at, $v0, $a0
	lwc1	$f2, 0($at)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a0, 1
	add	$at, $v0, $a0
	lwc1	$f3, 0($at)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a0, 2
	add	$at, $v0, $a0
	lwc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_fneg
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	swc1	$f2, -19($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_fispos
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30626
	lwc1	$f2, 0(l.22664)
	j	beq_cont.30627
beq_else.30626:
	lwc1	$f2, -19($sp)
beq_cont.30627:
	li	$v0, min_caml_diffuse_ray
	lwc1	$f3, 0($sp)
	mul.s	$f2, $f3, $f2
	lw	$v1, -7($sp)
	lw	$v1, 7($v1)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$v1, min_caml_texture_color
	li	$a0, 0
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 0
	add	$at, $v1, $a1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	add.s	$f3, $f3, $f4
	add	$at, $v0, $a0
	swc1	$f3, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $v1, $a1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	add.s	$f3, $f3, $f4
	add	$at, $v0, $a0
	swc1	$f3, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 2
	add	$at, $v1, $a1
	lwc1	$f4, 0($at)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	jr	$ra
beq_else.30625:
	jr	$ra
iter_trace_diffuse_rays.2949:
	lw	$v0, 2($gp)
	lw	$v1, 1($gp)
	li	$t0, 0
	sub	$at, $t0, $a3
	bgtz	$at, ble_else.30630
	add	$at, $a0, $a3
	lw	$t0, 0($at)
	lw	$t0, 0($t0)
	li	$t1, 0
	add	$at, $t0, $t1
	lwc1	$f2, 0($at)
	li	$t1, 0
	add	$at, $a1, $t1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$t1, 1
	add	$at, $t0, $t1
	lwc1	$f3, 0($at)
	li	$t1, 1
	add	$at, $a1, $t1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$t1, 2
	add	$at, $t0, $t1
	lwc1	$f3, 0($at)
	li	$t0, 2
	add	$at, $a1, $t0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	sw	$a2, 0($sp)
	sw	$gp, -1($sp)
	sw	$v0, -2($sp)
	sw	$a1, -3($sp)
	sw	$v1, -4($sp)
	swc1	$f2, -5($sp)
	sw	$a3, -6($sp)
	sw	$a0, -7($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_fisneg
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30631
	lw	$v0, -6($sp)
	lw	$v1, -7($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lwc1	$f2, 0(l.24210)
	lwc1	$f3, -5($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	li	$a1, min_caml_tmin
	li	$a2, 0
	lwc1	$f3, 0(l.23789)
	add	$at, $a1, $a2
	swc1	$f3, 0($at)
	li	$a1, 0
	li	$a2, min_caml_or_net
	li	$a3, 0
	add	$at, $a2, $a3
	lw	$a2, 0($at)
	add	$at, $a2, $a1
	lw	$a1, 0($at)
	li	$a3, 0
	add	$at, $a1, $a3
	lw	$a3, 0($at)
	li	$t0, -1
	swc1	$f2, -8($sp)
	sw	$a0, -9($sp)
	bne	$a3, $t0, beq_else.30633
	j	beq_cont.30634
beq_else.30633:
	li	$t0, 99
	sw	$a2, -10($sp)
	bne	$a3, $t0, beq_else.30635
	li	$a3, 1
	add	$at, $a1, $a3
	lw	$a3, 0($at)
	li	$t0, -1
	bne	$a3, $t0, beq_else.30637
	j	beq_cont.30638
beq_else.30637:
	li	$t0, min_caml_and_net
	add	$at, $t0, $a3
	lw	$a3, 0($at)
	li	$t0, 0
	sw	$a1, -11($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $a3
	move	$a0, $t0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30639
	j	beq_cont.30640
beq_else.30639:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -9($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30641
	j	beq_cont.30642
beq_else.30641:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -9($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30643
	j	beq_cont.30644
beq_else.30643:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -9($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -11($sp)
	lw	$a0, -9($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
beq_cont.30644:
beq_cont.30642:
beq_cont.30640:
beq_cont.30638:
	j	beq_cont.30636
beq_else.30635:
	sw	$a1, -11($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	solver_fast2.2834
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30645
	j	beq_cont.30646
beq_else.30645:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_fless
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30647
	j	beq_cont.30648
beq_else.30647:
	li	$v0, 1
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30649
	j	beq_cont.30650
beq_else.30649:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -9($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30651
	j	beq_cont.30652
beq_else.30651:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -9($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30653
	j	beq_cont.30654
beq_else.30653:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -9($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30655
	j	beq_cont.30656
beq_else.30655:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -9($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -11($sp)
	lw	$a0, -9($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
beq_cont.30656:
beq_cont.30654:
beq_cont.30652:
beq_cont.30650:
beq_cont.30648:
beq_cont.30646:
beq_cont.30636:
	li	$v0, 1
	lw	$v1, -10($sp)
	lw	$a0, -9($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	trace_or_matrix_fast.2913
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
beq_cont.30634:
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	swc1	$f2, -12($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fless
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30657
	li	$v0, 0
	j	beq_cont.30658
beq_else.30657:
	lwc1	$f2, 0(l.23793)
	lwc1	$f3, -12($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fless
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
beq_cont.30658:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30659
	j	beq_cont.30660
beq_else.30659:
	li	$v0, min_caml_objects
	li	$v1, min_caml_intersected_object_id
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	lw	$v1, -9($sp)
	lw	$v1, 0($v1)
	lw	$a0, 1($v0)
	li	$a1, 1
	sw	$v0, -13($sp)
	bne	$a0, $a1, beq_else.30661
	li	$a0, min_caml_intsec_rectside
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, min_caml_nvector
	lwc1	$f2, 0(l.22664)
	li	$a2, 0
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a1, min_caml_nvector
	li	$a2, 1
	sub	$a2, $a0, $a2
	li	$a3, 1
	sub	$a0, $a0, $a3
	add	$at, $v1, $a0
	lwc1	$f2, 0($at)
	sw	$a2, -14($sp)
	sw	$a1, -15($sp)
	swc1	$f2, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fiszero
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30663
	lwc1	$f2, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fispos
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30665
	lwc1	$f2, 0(l.22726)
	j	beq_cont.30666
beq_else.30665:
	lwc1	$f2, 0(l.22725)
beq_cont.30666:
	j	beq_cont.30664
beq_else.30663:
	lwc1	$f2, 0(l.22664)
beq_cont.30664:
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fneg
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -14($sp)
	lw	$v1, -15($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.30662
beq_else.30661:
	li	$v1, 2
	bne	$a0, $v1, beq_else.30667
	li	$v1, min_caml_nvector
	li	$a0, 0
	lw	$a1, 4($v0)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	sw	$a0, -17($sp)
	sw	$v1, -18($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_fneg
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -17($sp)
	lw	$v1, -18($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 1
	lw	$a0, -13($sp)
	lw	$a1, 4($a0)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	sw	$v1, -19($sp)
	sw	$v0, -20($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_fneg
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -19($sp)
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 2
	lw	$a0, -13($sp)
	lw	$a1, 4($a0)
	li	$a2, 2
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	sw	$v1, -21($sp)
	sw	$v0, -22($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fneg
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -21($sp)
	lw	$v1, -22($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.30668
beq_else.30667:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	get_nvector_second.2923
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
beq_cont.30668:
beq_cont.30662:
	li	$v0, min_caml_intersection_point
	lw	$v1, -13($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	utexture.2928
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v0, 0
	li	$v1, min_caml_or_net
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	lw	$a0, -4($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30669
	li	$v0, min_caml_nvector
	li	$v1, min_caml_light
	li	$a0, 0
	add	$at, $v0, $a0
	lwc1	$f2, 0($at)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a0, 1
	add	$at, $v0, $a0
	lwc1	$f3, 0($at)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a0, 2
	add	$at, $v0, $a0
	lwc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fneg
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	swc1	$f2, -23($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -24($sp)
	addi	$sp, $sp, -25
	jal	min_caml_fispos
	addi	$sp, $sp, 25
	lw	$t8, -24($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30671
	lwc1	$f2, 0(l.22664)
	j	beq_cont.30672
beq_else.30671:
	lwc1	$f2, -23($sp)
beq_cont.30672:
	li	$v0, min_caml_diffuse_ray
	lwc1	$f3, -8($sp)
	mul.s	$f2, $f3, $f2
	lw	$v1, -13($sp)
	lw	$v1, 7($v1)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$v1, min_caml_texture_color
	li	$a0, 0
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 0
	add	$at, $v1, $a1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	add.s	$f3, $f3, $f4
	add	$at, $v0, $a0
	swc1	$f3, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $v1, $a1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	add.s	$f3, $f3, $f4
	add	$at, $v0, $a0
	swc1	$f3, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 2
	add	$at, $v1, $a1
	lwc1	$f4, 0($at)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	j	beq_cont.30670
beq_else.30669:
beq_cont.30670:
beq_cont.30660:
	j	beq_cont.30632
beq_else.30631:
	li	$v0, 1
	lw	$v1, -6($sp)
	add	$v0, $v1, $v0
	lw	$a0, -7($sp)
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24154)
	lwc1	$f3, -5($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	li	$a1, min_caml_tmin
	li	$a2, 0
	lwc1	$f3, 0(l.23789)
	add	$at, $a1, $a2
	swc1	$f3, 0($at)
	li	$a1, 0
	li	$a2, min_caml_or_net
	li	$a3, 0
	add	$at, $a2, $a3
	lw	$a2, 0($at)
	add	$at, $a2, $a1
	lw	$a1, 0($at)
	li	$a3, 0
	add	$at, $a1, $a3
	lw	$a3, 0($at)
	li	$t0, -1
	swc1	$f2, -24($sp)
	sw	$v0, -25($sp)
	bne	$a3, $t0, beq_else.30673
	j	beq_cont.30674
beq_else.30673:
	li	$t0, 99
	sw	$a2, -26($sp)
	bne	$a3, $t0, beq_else.30675
	li	$a3, 1
	add	$at, $a1, $a3
	lw	$a3, 0($at)
	li	$t0, -1
	bne	$a3, $t0, beq_else.30677
	j	beq_cont.30678
beq_else.30677:
	li	$t0, min_caml_and_net
	add	$at, $t0, $a3
	lw	$a3, 0($at)
	li	$t0, 0
	sw	$a1, -27($sp)
	move	$t8, $ra
	move	$a2, $v0
	move	$a1, $a3
	move	$a0, $t0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -27($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30679
	j	beq_cont.30680
beq_else.30679:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -25($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -27($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30681
	j	beq_cont.30682
beq_else.30681:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -25($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -27($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30683
	j	beq_cont.30684
beq_else.30683:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -25($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -27($sp)
	lw	$a0, -25($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
beq_cont.30684:
beq_cont.30682:
beq_cont.30680:
beq_cont.30678:
	j	beq_cont.30676
beq_else.30675:
	sw	$a1, -27($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $a3
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	solver_fast2.2834
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30685
	j	beq_cont.30686
beq_else.30685:
	li	$v0, min_caml_solver_dist
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_fless
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30687
	j	beq_cont.30688
beq_else.30687:
	li	$v0, 1
	lw	$v1, -27($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30689
	j	beq_cont.30690
beq_else.30689:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -25($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v0, 2
	lw	$v1, -27($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30691
	j	beq_cont.30692
beq_else.30691:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -25($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v0, 3
	lw	$v1, -27($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30693
	j	beq_cont.30694
beq_else.30693:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -25($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v0, 4
	lw	$v1, -27($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, -1
	bne	$v0, $a0, beq_else.30695
	j	beq_cont.30696
beq_else.30695:
	li	$a0, min_caml_and_net
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$a0, 0
	lw	$a1, -25($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a1, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	solve_each_element_fast.2905
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v0, 5
	lw	$v1, -27($sp)
	lw	$a0, -25($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	solve_one_or_network_fast.2909
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
beq_cont.30696:
beq_cont.30694:
beq_cont.30692:
beq_cont.30690:
beq_cont.30688:
beq_cont.30686:
beq_cont.30676:
	li	$v0, 1
	lw	$v1, -26($sp)
	lw	$a0, -25($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	trace_or_matrix_fast.2913
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
beq_cont.30674:
	li	$v0, min_caml_tmin
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.23322)
	swc1	$f2, -28($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_fless
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30697
	li	$v0, 0
	j	beq_cont.30698
beq_else.30697:
	lwc1	$f2, 0(l.23793)
	lwc1	$f3, -28($sp)
	move	$t8, $ra
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_fless
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	move	$ra, $t8
beq_cont.30698:
	li	$v1, 0
	bne	$v0, $v1, beq_else.30699
	j	beq_cont.30700
beq_else.30699:
	li	$v0, min_caml_objects
	li	$v1, min_caml_intersected_object_id
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	lw	$v1, -25($sp)
	lw	$v1, 0($v1)
	lw	$a0, 1($v0)
	li	$a1, 1
	sw	$v0, -29($sp)
	bne	$a0, $a1, beq_else.30701
	li	$a0, min_caml_intsec_rectside
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, min_caml_nvector
	lwc1	$f2, 0(l.22664)
	li	$a2, 0
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a1, min_caml_nvector
	li	$a2, 1
	sub	$a2, $a0, $a2
	li	$a3, 1
	sub	$a0, $a0, $a3
	add	$at, $v1, $a0
	lwc1	$f2, 0($at)
	sw	$a2, -30($sp)
	sw	$a1, -31($sp)
	swc1	$f2, -32($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_fiszero
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30703
	lwc1	$f2, -32($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_fispos
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30705
	lwc1	$f2, 0(l.22726)
	j	beq_cont.30706
beq_else.30705:
	lwc1	$f2, 0(l.22725)
beq_cont.30706:
	j	beq_cont.30704
beq_else.30703:
	lwc1	$f2, 0(l.22664)
beq_cont.30704:
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_fneg
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -30($sp)
	lw	$v1, -31($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.30702
beq_else.30701:
	li	$v1, 2
	bne	$a0, $v1, beq_else.30707
	li	$v1, min_caml_nvector
	li	$a0, 0
	lw	$a1, 4($v0)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	sw	$a0, -33($sp)
	sw	$v1, -34($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -35($sp)
	addi	$sp, $sp, -36
	jal	min_caml_fneg
	addi	$sp, $sp, 36
	lw	$t8, -35($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -33($sp)
	lw	$v1, -34($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 1
	lw	$a0, -29($sp)
	lw	$a1, 4($a0)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	sw	$v1, -35($sp)
	sw	$v0, -36($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -37($sp)
	addi	$sp, $sp, -38
	jal	min_caml_fneg
	addi	$sp, $sp, 38
	lw	$t8, -37($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -35($sp)
	lw	$v1, -36($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_nvector
	li	$v1, 2
	lw	$a0, -29($sp)
	lw	$a1, 4($a0)
	li	$a2, 2
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	sw	$v1, -37($sp)
	sw	$v0, -38($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_fneg
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lw	$v0, -37($sp)
	lw	$v1, -38($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	j	beq_cont.30708
beq_else.30707:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	get_nvector_second.2923
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
beq_cont.30708:
beq_cont.30702:
	li	$v0, min_caml_intersection_point
	lw	$v1, -29($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	utexture.2928
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	li	$v0, 0
	li	$v1, min_caml_or_net
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	lw	$a0, -4($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$gp, $a0
	move	$a0, $v0
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30709
	li	$v0, min_caml_nvector
	li	$v1, min_caml_light
	li	$a0, 0
	add	$at, $v0, $a0
	lwc1	$f2, 0($at)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a0, 1
	add	$at, $v0, $a0
	lwc1	$f3, 0($at)
	li	$a0, 1
	add	$at, $v1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a0, 2
	add	$at, $v0, $a0
	lwc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $v1, $v0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_fneg
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	swc1	$f2, -39($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -40($sp)
	addi	$sp, $sp, -41
	jal	min_caml_fispos
	addi	$sp, $sp, 41
	lw	$t8, -40($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30711
	lwc1	$f2, 0(l.22664)
	j	beq_cont.30712
beq_else.30711:
	lwc1	$f2, -39($sp)
beq_cont.30712:
	li	$v0, min_caml_diffuse_ray
	lwc1	$f3, -24($sp)
	mul.s	$f2, $f3, $f2
	lw	$v1, -29($sp)
	lw	$v1, 7($v1)
	li	$a0, 0
	add	$at, $v1, $a0
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$v1, min_caml_texture_color
	li	$a0, 0
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 0
	add	$at, $v1, $a1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	add.s	$f3, $f3, $f4
	add	$at, $v0, $a0
	swc1	$f3, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $v1, $a1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	add.s	$f3, $f3, $f4
	add	$at, $v0, $a0
	swc1	$f3, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 2
	add	$at, $v1, $a1
	lwc1	$f4, 0($at)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	j	beq_cont.30710
beq_else.30709:
beq_cont.30710:
beq_cont.30700:
beq_cont.30632:
	li	$v0, 2
	lw	$v1, -6($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.30713
	lw	$v1, -7($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lw	$a0, 0($a0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	lw	$a2, -3($sp)
	add	$at, $a2, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a2, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	swc1	$f2, -40($sp)
	sw	$v0, -41($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -42($sp)
	addi	$sp, $sp, -43
	jal	min_caml_fisneg
	addi	$sp, $sp, 43
	lw	$t8, -42($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30714
	lw	$v0, -41($sp)
	lw	$v1, -7($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lwc1	$f2, 0(l.24210)
	lwc1	$f3, -40($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a1, -2($sp)
	move	$t8, $ra
	move	$gp, $a1
	mov.s	$f12, $f2
	sw	$t8, -42($sp)
	addi	$sp, $sp, -43
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 43
	lw	$t8, -42($sp)
	move	$ra, $t8
	j	beq_cont.30715
beq_else.30714:
	li	$v0, 1
	lw	$v1, -41($sp)
	add	$v0, $v1, $v0
	lw	$a0, -7($sp)
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24154)
	lwc1	$f3, -40($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a1, -2($sp)
	move	$t8, $ra
	move	$a0, $v0
	move	$gp, $a1
	mov.s	$f12, $f2
	sw	$t8, -42($sp)
	addi	$sp, $sp, -43
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 43
	lw	$t8, -42($sp)
	move	$ra, $t8
beq_cont.30715:
	li	$v0, 2
	lw	$v1, -41($sp)
	sub	$v0, $v1, $v0
	lw	$v1, -7($sp)
	lw	$a0, -3($sp)
	lw	$a1, 0($sp)
	lw	$a2, -1($sp)
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	lw	$t8, 0($gp)
	jr	$t8
ble_else.30713:
	jr	$ra
ble_else.30630:
	jr	$ra
trace_diffuse_ray_80percent.2958:
	lw	$v0, 1($gp)
	li	$v1, 0
	sw	$a1, 0($sp)
	sw	$v0, -1($sp)
	sw	$a2, -2($sp)
	sw	$a0, -3($sp)
	bne	$a0, $v1, beq_else.30718
	j	beq_cont.30719
beq_else.30718:
	li	$v1, min_caml_dirvecs
	li	$a3, 0
	add	$at, $v1, $a3
	lw	$v1, 0($at)
	li	$a3, min_caml_startp_fast
	li	$t0, 0
	li	$t1, 0
	add	$at, $a2, $t1
	lwc1	$f2, 0($at)
	add	$at, $a3, $t0
	swc1	$f2, 0($at)
	li	$t0, 1
	li	$t1, 1
	add	$at, $a2, $t1
	lwc1	$f2, 0($at)
	add	$at, $a3, $t0
	swc1	$f2, 0($at)
	li	$t0, 2
	li	$t1, 2
	add	$at, $a2, $t1
	lwc1	$f2, 0($at)
	add	$at, $a3, $t0
	swc1	$f2, 0($at)
	li	$a3, min_caml_n_objects
	li	$t0, 0
	add	$at, $a3, $t0
	lw	$a3, 0($at)
	li	$t0, 1
	sub	$a3, $a3, $t0
	sw	$v1, -4($sp)
	move	$t8, $ra
	move	$a1, $a3
	move	$a0, $a2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -4($sp)
	lw	$a0, 0($sp)
	lw	$a1, -2($sp)
	lw	$a2, -1($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
beq_cont.30719:
	li	$v0, 1
	lw	$v1, -3($sp)
	bne	$v1, $v0, beq_else.30720
	j	beq_cont.30721
beq_else.30720:
	li	$v0, min_caml_dirvecs
	li	$a0, 1
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, min_caml_startp_fast
	li	$a1, 0
	li	$a2, 0
	lw	$a3, -2($sp)
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	sw	$v0, -5($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -5($sp)
	lw	$a0, 0($sp)
	lw	$a1, -2($sp)
	lw	$a2, -1($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
beq_cont.30721:
	li	$v0, 2
	lw	$v1, -3($sp)
	bne	$v1, $v0, beq_else.30722
	j	beq_cont.30723
beq_else.30722:
	li	$v0, min_caml_dirvecs
	li	$a0, 2
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, min_caml_startp_fast
	li	$a1, 0
	li	$a2, 0
	lw	$a3, -2($sp)
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	sw	$v0, -6($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -6($sp)
	lw	$a0, 0($sp)
	lw	$a1, -2($sp)
	lw	$a2, -1($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
beq_cont.30723:
	li	$v0, 3
	lw	$v1, -3($sp)
	bne	$v1, $v0, beq_else.30724
	j	beq_cont.30725
beq_else.30724:
	li	$v0, min_caml_dirvecs
	li	$a0, 3
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, min_caml_startp_fast
	li	$a1, 0
	li	$a2, 0
	lw	$a3, -2($sp)
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	sw	$v0, -7($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -7($sp)
	lw	$a0, 0($sp)
	lw	$a1, -2($sp)
	lw	$a2, -1($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
beq_cont.30725:
	li	$v0, 4
	lw	$v1, -3($sp)
	bne	$v1, $v0, beq_else.30726
	jr	$ra
beq_else.30726:
	li	$v0, min_caml_dirvecs
	li	$v1, 4
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, min_caml_startp_fast
	li	$a0, 0
	li	$a1, 0
	lw	$a2, -2($sp)
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a0, 1
	sub	$v1, $v1, $a0
	sw	$v0, -8($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $a2
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -8($sp)
	lw	$a0, 0($sp)
	lw	$a1, -2($sp)
	lw	$a2, -1($sp)
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	lw	$t8, 0($gp)
	jr	$t8
calc_diffuse_using_1point.2962:
	lw	$v0, 2($gp)
	lw	$v1, 1($gp)
	lw	$a2, 5($a0)
	lw	$a3, 7($a0)
	lw	$t0, 1($a0)
	lw	$t1, 4($a0)
	li	$t2, min_caml_diffuse_ray
	add	$at, $a2, $a1
	lw	$a2, 0($at)
	li	$t3, 0
	li	$t4, 0
	add	$at, $a2, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t3, 1
	li	$t4, 1
	add	$at, $a2, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t3, 2
	li	$t4, 2
	add	$at, $a2, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	lw	$a0, 6($a0)
	li	$a2, 0
	add	$at, $a0, $a2
	lw	$a0, 0($at)
	add	$at, $a3, $a1
	lw	$a2, 0($at)
	add	$at, $t0, $a1
	lw	$a3, 0($at)
	li	$t0, 0
	sw	$a1, 0($sp)
	sw	$t1, -1($sp)
	sw	$v1, -2($sp)
	sw	$v0, -3($sp)
	sw	$a2, -4($sp)
	sw	$a3, -5($sp)
	sw	$a0, -6($sp)
	bne	$a0, $t0, beq_else.30728
	j	beq_cont.30729
beq_else.30728:
	li	$t0, min_caml_dirvecs
	li	$t2, 0
	add	$at, $t0, $t2
	lw	$t0, 0($at)
	li	$t2, min_caml_startp_fast
	li	$t3, 0
	li	$t4, 0
	add	$at, $a3, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t3, 1
	li	$t4, 1
	add	$at, $a3, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t3, 2
	li	$t4, 2
	add	$at, $a3, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t2, min_caml_n_objects
	li	$t3, 0
	add	$at, $t2, $t3
	lw	$t2, 0($at)
	li	$t3, 1
	sub	$t2, $t2, $t3
	sw	$t0, -7($sp)
	move	$t8, $ra
	move	$a1, $t2
	move	$a0, $a3
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -7($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lw	$a0, 0($a0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	lw	$a2, -4($sp)
	add	$at, $a2, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a2, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	swc1	$f2, -8($sp)
	sw	$v0, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fisneg
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30730
	lw	$v0, -9($sp)
	lw	$v1, -7($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24210)
	lwc1	$f3, -8($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	j	beq_cont.30731
beq_else.30730:
	li	$v0, 119
	lw	$v1, -7($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24154)
	lwc1	$f3, -8($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
beq_cont.30731:
	li	$v0, 116
	lw	$v1, -7($sp)
	lw	$a0, -4($sp)
	lw	$a1, -5($sp)
	lw	$a2, -2($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
beq_cont.30729:
	li	$v0, 1
	lw	$v1, -6($sp)
	bne	$v1, $v0, beq_else.30732
	j	beq_cont.30733
beq_else.30732:
	li	$v0, min_caml_dirvecs
	li	$a0, 1
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, min_caml_startp_fast
	li	$a1, 0
	li	$a2, 0
	lw	$a3, -5($sp)
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	sw	$v0, -10($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -10($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lw	$a0, 0($a0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	lw	$a2, -4($sp)
	add	$at, $a2, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a2, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	swc1	$f2, -11($sp)
	sw	$v0, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fisneg
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30734
	lw	$v0, -12($sp)
	lw	$v1, -10($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24210)
	lwc1	$f3, -11($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	j	beq_cont.30735
beq_else.30734:
	li	$v0, 119
	lw	$v1, -10($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24154)
	lwc1	$f3, -11($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
beq_cont.30735:
	li	$v0, 116
	lw	$v1, -10($sp)
	lw	$a0, -4($sp)
	lw	$a1, -5($sp)
	lw	$a2, -2($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
beq_cont.30733:
	li	$v0, 2
	lw	$v1, -6($sp)
	bne	$v1, $v0, beq_else.30736
	j	beq_cont.30737
beq_else.30736:
	li	$v0, min_caml_dirvecs
	li	$a0, 2
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, min_caml_startp_fast
	li	$a1, 0
	li	$a2, 0
	lw	$a3, -5($sp)
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	sw	$v0, -13($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lw	$a0, 0($a0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	lw	$a2, -4($sp)
	add	$at, $a2, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a2, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	swc1	$f2, -14($sp)
	sw	$v0, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fisneg
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30738
	lw	$v0, -15($sp)
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24210)
	lwc1	$f3, -14($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	j	beq_cont.30739
beq_else.30738:
	li	$v0, 119
	lw	$v1, -13($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24154)
	lwc1	$f3, -14($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
beq_cont.30739:
	li	$v0, 116
	lw	$v1, -13($sp)
	lw	$a0, -4($sp)
	lw	$a1, -5($sp)
	lw	$a2, -2($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
beq_cont.30737:
	li	$v0, 3
	lw	$v1, -6($sp)
	bne	$v1, $v0, beq_else.30740
	j	beq_cont.30741
beq_else.30740:
	li	$v0, min_caml_dirvecs
	li	$a0, 3
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, min_caml_startp_fast
	li	$a1, 0
	li	$a2, 0
	lw	$a3, -5($sp)
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	sw	$v0, -16($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -16($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lw	$a0, 0($a0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	lw	$a2, -4($sp)
	add	$at, $a2, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a2, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	swc1	$f2, -17($sp)
	sw	$v0, -18($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_fisneg
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30742
	lw	$v0, -18($sp)
	lw	$v1, -16($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24210)
	lwc1	$f3, -17($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	j	beq_cont.30743
beq_else.30742:
	li	$v0, 119
	lw	$v1, -16($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24154)
	lwc1	$f3, -17($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
beq_cont.30743:
	li	$v0, 116
	lw	$v1, -16($sp)
	lw	$a0, -4($sp)
	lw	$a1, -5($sp)
	lw	$a2, -2($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
beq_cont.30741:
	li	$v0, 4
	lw	$v1, -6($sp)
	bne	$v1, $v0, beq_else.30744
	j	beq_cont.30745
beq_else.30744:
	li	$v0, min_caml_dirvecs
	li	$v1, 4
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, min_caml_startp_fast
	li	$a0, 0
	li	$a1, 0
	lw	$a2, -5($sp)
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a0, 1
	sub	$v1, $v1, $a0
	sw	$v0, -19($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $a2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lw	$a0, 0($a0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	lw	$a2, -4($sp)
	add	$at, $a2, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a2, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	swc1	$f2, -20($sp)
	sw	$v0, -21($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_fisneg
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30746
	lw	$v0, -21($sp)
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24210)
	lwc1	$f3, -20($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	j	beq_cont.30747
beq_else.30746:
	li	$v0, 119
	lw	$v1, -19($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24154)
	lwc1	$f3, -20($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
beq_cont.30747:
	li	$v0, 116
	lw	$v1, -19($sp)
	lw	$a0, -4($sp)
	lw	$a1, -5($sp)
	lw	$a2, -2($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
beq_cont.30745:
	li	$v0, min_caml_rgb
	lw	$v1, 0($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	lw	$v1, 0($at)
	li	$a0, min_caml_diffuse_ray
	li	$a1, 0
	li	$a2, 0
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 0
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 0
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 1
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 1
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 2
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	jr	$ra
calc_diffuse_using_5points.2965:
	add	$at, $a1, $a0
	lw	$v0, 0($at)
	lw	$v0, 5($v0)
	li	$v1, 1
	sub	$v1, $a0, $v1
	add	$at, $a2, $v1
	lw	$v1, 0($at)
	lw	$v1, 5($v1)
	add	$at, $a2, $a0
	lw	$a1, 0($at)
	lw	$a1, 5($a1)
	li	$t1, 1
	add	$t1, $a0, $t1
	add	$at, $a2, $t1
	lw	$t1, 0($at)
	lw	$t1, 5($t1)
	add	$at, $a3, $a0
	lw	$a3, 0($at)
	lw	$a3, 5($a3)
	li	$t2, min_caml_diffuse_ray
	add	$at, $v0, $t0
	lw	$v0, 0($at)
	li	$t3, 0
	li	$t4, 0
	add	$at, $v0, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t3, 1
	li	$t4, 1
	add	$at, $v0, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t3, 2
	li	$t4, 2
	add	$at, $v0, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$v0, min_caml_diffuse_ray
	add	$at, $v1, $t0
	lw	$v1, 0($at)
	li	$t2, 0
	li	$t3, 0
	add	$at, $v0, $t3
	lwc1	$f2, 0($at)
	li	$t3, 0
	add	$at, $v1, $t3
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $t2
	swc1	$f2, 0($at)
	li	$t2, 1
	li	$t3, 1
	add	$at, $v0, $t3
	lwc1	$f2, 0($at)
	li	$t3, 1
	add	$at, $v1, $t3
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $t2
	swc1	$f2, 0($at)
	li	$t2, 2
	li	$t3, 2
	add	$at, $v0, $t3
	lwc1	$f2, 0($at)
	li	$t3, 2
	add	$at, $v1, $t3
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $t2
	swc1	$f2, 0($at)
	li	$v0, min_caml_diffuse_ray
	add	$at, $a1, $t0
	lw	$v1, 0($at)
	li	$a1, 0
	li	$t2, 0
	add	$at, $v0, $t2
	lwc1	$f2, 0($at)
	li	$t2, 0
	add	$at, $v1, $t2
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$t2, 1
	add	$at, $v0, $t2
	lwc1	$f2, 0($at)
	li	$t2, 1
	add	$at, $v1, $t2
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$t2, 2
	add	$at, $v0, $t2
	lwc1	$f2, 0($at)
	li	$t2, 2
	add	$at, $v1, $t2
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$v0, min_caml_diffuse_ray
	add	$at, $t1, $t0
	lw	$v1, 0($at)
	li	$a1, 0
	li	$t1, 0
	add	$at, $v0, $t1
	lwc1	$f2, 0($at)
	li	$t1, 0
	add	$at, $v1, $t1
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$t1, 1
	add	$at, $v0, $t1
	lwc1	$f2, 0($at)
	li	$t1, 1
	add	$at, $v1, $t1
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$t1, 2
	add	$at, $v0, $t1
	lwc1	$f2, 0($at)
	li	$t1, 2
	add	$at, $v1, $t1
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$v0, min_caml_diffuse_ray
	add	$at, $a3, $t0
	lw	$v1, 0($at)
	li	$a1, 0
	li	$a3, 0
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 0
	add	$at, $v1, $a3
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a3, 1
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 1
	add	$at, $v1, $a3
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a3, 2
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 2
	add	$at, $v1, $a3
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	add	$at, $a2, $a0
	lw	$v0, 0($at)
	lw	$v0, 4($v0)
	li	$v1, min_caml_rgb
	add	$at, $v0, $t0
	lw	$v0, 0($at)
	li	$a0, min_caml_diffuse_ray
	li	$a1, 0
	li	$a2, 0
	add	$at, $v1, $a2
	lwc1	$f2, 0($at)
	li	$a2, 0
	add	$at, $v0, $a2
	lwc1	$f3, 0($at)
	li	$a2, 0
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v1, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $v1, $a2
	lwc1	$f2, 0($at)
	li	$a2, 1
	add	$at, $v0, $a2
	lwc1	$f3, 0($at)
	li	$a2, 1
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v1, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $v1, $a2
	lwc1	$f2, 0($at)
	li	$a2, 2
	add	$at, $v0, $a2
	lwc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $a0, $v0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v1, $a1
	swc1	$f2, 0($at)
	jr	$ra
do_without_neighbors.2971:
	lw	$v0, 3($gp)
	lw	$v1, 2($gp)
	lw	$a2, 1($gp)
	li	$a3, 4
	sub	$at, $a1, $a3
	bgtz	$at, ble_else.30750
	lw	$a3, 2($a0)
	li	$t0, 0
	add	$at, $a3, $a1
	lw	$a3, 0($at)
	sub	$at, $t0, $a3
	bgtz	$at, ble_else.30751
	lw	$a3, 3($a0)
	add	$at, $a3, $a1
	lw	$a3, 0($at)
	li	$t0, 0
	sw	$gp, 0($sp)
	sw	$v0, -1($sp)
	sw	$a2, -2($sp)
	sw	$a0, -3($sp)
	sw	$a1, -4($sp)
	bne	$a3, $t0, beq_else.30752
	j	beq_cont.30753
beq_else.30752:
	lw	$a3, 5($a0)
	lw	$t0, 7($a0)
	lw	$t1, 1($a0)
	lw	$t2, 4($a0)
	li	$t3, min_caml_diffuse_ray
	add	$at, $a3, $a1
	lw	$a3, 0($at)
	li	$t4, 0
	li	$t5, 0
	add	$at, $a3, $t5
	lwc1	$f2, 0($at)
	add	$at, $t3, $t4
	swc1	$f2, 0($at)
	li	$t4, 1
	li	$t5, 1
	add	$at, $a3, $t5
	lwc1	$f2, 0($at)
	add	$at, $t3, $t4
	swc1	$f2, 0($at)
	li	$t4, 2
	li	$t5, 2
	add	$at, $a3, $t5
	lwc1	$f2, 0($at)
	add	$at, $t3, $t4
	swc1	$f2, 0($at)
	lw	$a3, 6($a0)
	li	$t3, 0
	add	$at, $a3, $t3
	lw	$a3, 0($at)
	add	$at, $t0, $a1
	lw	$t0, 0($at)
	add	$at, $t1, $a1
	lw	$t1, 0($at)
	li	$t3, 0
	sw	$t2, -5($sp)
	sw	$t0, -6($sp)
	sw	$v1, -7($sp)
	sw	$t1, -8($sp)
	sw	$a3, -9($sp)
	bne	$a3, $t3, beq_else.30754
	j	beq_cont.30755
beq_else.30754:
	li	$t3, min_caml_dirvecs
	li	$t4, 0
	add	$at, $t3, $t4
	lw	$t3, 0($at)
	li	$t4, min_caml_startp_fast
	li	$t5, 0
	li	$t6, 0
	add	$at, $t1, $t6
	lwc1	$f2, 0($at)
	add	$at, $t4, $t5
	swc1	$f2, 0($at)
	li	$t5, 1
	li	$t6, 1
	add	$at, $t1, $t6
	lwc1	$f2, 0($at)
	add	$at, $t4, $t5
	swc1	$f2, 0($at)
	li	$t5, 2
	li	$t6, 2
	add	$at, $t1, $t6
	lwc1	$f2, 0($at)
	add	$at, $t4, $t5
	swc1	$f2, 0($at)
	li	$t4, min_caml_n_objects
	li	$t5, 0
	add	$at, $t4, $t5
	lw	$t4, 0($at)
	li	$t5, 1
	sub	$t4, $t4, $t5
	sw	$t3, -10($sp)
	move	$t8, $ra
	move	$a1, $t4
	move	$a0, $t1
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -10($sp)
	lw	$a0, -6($sp)
	lw	$a1, -8($sp)
	lw	$a2, -7($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
beq_cont.30755:
	li	$v0, 1
	lw	$v1, -9($sp)
	bne	$v1, $v0, beq_else.30756
	j	beq_cont.30757
beq_else.30756:
	li	$v0, min_caml_dirvecs
	li	$a0, 1
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, min_caml_startp_fast
	li	$a1, 0
	li	$a2, 0
	lw	$a3, -8($sp)
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	sw	$v0, -11($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -11($sp)
	lw	$a0, -6($sp)
	lw	$a1, -8($sp)
	lw	$a2, -7($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
beq_cont.30757:
	li	$v0, 2
	lw	$v1, -9($sp)
	bne	$v1, $v0, beq_else.30758
	j	beq_cont.30759
beq_else.30758:
	li	$v0, min_caml_dirvecs
	li	$a0, 2
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, min_caml_startp_fast
	li	$a1, 0
	li	$a2, 0
	lw	$a3, -8($sp)
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	sw	$v0, -12($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -12($sp)
	lw	$a0, -6($sp)
	lw	$a1, -8($sp)
	lw	$a2, -7($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
beq_cont.30759:
	li	$v0, 3
	lw	$v1, -9($sp)
	bne	$v1, $v0, beq_else.30760
	j	beq_cont.30761
beq_else.30760:
	li	$v0, min_caml_dirvecs
	li	$a0, 3
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, min_caml_startp_fast
	li	$a1, 0
	li	$a2, 0
	lw	$a3, -8($sp)
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $a3, $a2
	lwc1	$f2, 0($at)
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	sw	$v0, -13($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $a3
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -13($sp)
	lw	$a0, -6($sp)
	lw	$a1, -8($sp)
	lw	$a2, -7($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
beq_cont.30761:
	li	$v0, 4
	lw	$v1, -9($sp)
	bne	$v1, $v0, beq_else.30762
	j	beq_cont.30763
beq_else.30762:
	li	$v0, min_caml_dirvecs
	li	$v1, 4
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, min_caml_startp_fast
	li	$a0, 0
	li	$a1, 0
	lw	$a2, -8($sp)
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $a2, $a1
	lwc1	$f2, 0($at)
	add	$at, $v1, $a0
	swc1	$f2, 0($at)
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a0, 1
	sub	$v1, $v1, $a0
	sw	$v0, -14($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $a2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -14($sp)
	lw	$a0, -6($sp)
	lw	$a1, -8($sp)
	lw	$a2, -7($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
beq_cont.30763:
	li	$v0, min_caml_rgb
	lw	$v1, -4($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	lw	$a0, 0($at)
	li	$a1, min_caml_diffuse_ray
	li	$a2, 0
	li	$a3, 0
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 0
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a3, 0
	add	$at, $a1, $a3
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	li	$a3, 1
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 1
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	li	$a3, 2
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 2
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
beq_cont.30753:
	li	$v0, 1
	lw	$v1, -4($sp)
	add	$v0, $v1, $v0
	li	$v1, 4
	sub	$at, $v0, $v1
	bgtz	$at, ble_else.30764
	lw	$v1, -3($sp)
	lw	$a0, 2($v1)
	li	$a1, 0
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	sub	$at, $a1, $a0
	bgtz	$at, ble_else.30765
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	sw	$v0, -15($sp)
	bne	$a0, $a1, beq_else.30766
	j	beq_cont.30767
beq_else.30766:
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
beq_cont.30767:
	li	$v0, 1
	lw	$v1, -15($sp)
	add	$v0, $v1, $v0
	li	$v1, 4
	sub	$at, $v0, $v1
	bgtz	$at, ble_else.30768
	lw	$v1, -3($sp)
	lw	$a0, 2($v1)
	li	$a1, 0
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	sub	$at, $a1, $a0
	bgtz	$at, ble_else.30769
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	sw	$v0, -16($sp)
	bne	$a0, $a1, beq_else.30770
	j	beq_cont.30771
beq_else.30770:
	lw	$a0, 5($v1)
	lw	$a1, 7($v1)
	lw	$a2, 1($v1)
	lw	$a3, 4($v1)
	li	$t0, min_caml_diffuse_ray
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$t1, 0
	li	$t2, 0
	add	$at, $a0, $t2
	lwc1	$f2, 0($at)
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	li	$t1, 1
	li	$t2, 1
	add	$at, $a0, $t2
	lwc1	$f2, 0($at)
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	li	$t1, 2
	li	$t2, 2
	add	$at, $a0, $t2
	lwc1	$f2, 0($at)
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	lw	$a0, 6($v1)
	li	$t0, 0
	add	$at, $a0, $t0
	lw	$a0, 0($at)
	add	$at, $a1, $v0
	lw	$a1, 0($at)
	add	$at, $a2, $v0
	lw	$a2, 0($at)
	lw	$t0, -1($sp)
	sw	$a3, -17($sp)
	move	$t8, $ra
	move	$gp, $t0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	lw	$v1, -16($sp)
	lw	$a0, -17($sp)
	add	$at, $a0, $v1
	lw	$a0, 0($at)
	li	$a1, min_caml_diffuse_ray
	li	$a2, 0
	li	$a3, 0
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 0
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a3, 0
	add	$at, $a1, $a3
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	li	$a3, 1
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 1
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	li	$a3, 2
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 2
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
beq_cont.30771:
	li	$v0, 1
	lw	$v1, -16($sp)
	add	$v0, $v1, $v0
	li	$v1, 4
	sub	$at, $v0, $v1
	bgtz	$at, ble_else.30772
	lw	$v1, -3($sp)
	lw	$a0, 2($v1)
	li	$a1, 0
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	sub	$at, $a1, $a0
	bgtz	$at, ble_else.30773
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	sw	$v0, -18($sp)
	bne	$a0, $a1, beq_else.30774
	j	beq_cont.30775
beq_else.30774:
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
beq_cont.30775:
	li	$v0, 1
	lw	$v1, -18($sp)
	add	$v0, $v1, $v0
	lw	$v1, -3($sp)
	lw	$a0, 0($sp)
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	lw	$t8, 0($gp)
	jr	$t8
ble_else.30773:
	jr	$ra
ble_else.30772:
	jr	$ra
ble_else.30769:
	jr	$ra
ble_else.30768:
	jr	$ra
ble_else.30765:
	jr	$ra
ble_else.30764:
	jr	$ra
ble_else.30751:
	jr	$ra
ble_else.30750:
	jr	$ra
try_exploit_neighbors.2987:
	lw	$v0, 3($gp)
	lw	$v1, 2($gp)
	lw	$t2, 1($gp)
	add	$at, $a3, $a0
	lw	$t3, 0($at)
	li	$t4, 4
	sub	$at, $t1, $t4
	bgtz	$at, ble_else.30784
	li	$t4, 0
	lw	$t5, 2($t3)
	add	$at, $t5, $t1
	lw	$t5, 0($at)
	sub	$at, $t4, $t5
	bgtz	$at, ble_else.30785
	add	$at, $a3, $a0
	lw	$t4, 0($at)
	lw	$t4, 2($t4)
	add	$at, $t4, $t1
	lw	$t4, 0($at)
	add	$at, $a2, $a0
	lw	$t5, 0($at)
	lw	$t5, 2($t5)
	add	$at, $t5, $t1
	lw	$t5, 0($at)
	bne	$t5, $t4, beq_else.30786
	add	$at, $t0, $a0
	lw	$t5, 0($at)
	lw	$t5, 2($t5)
	add	$at, $t5, $t1
	lw	$t5, 0($at)
	bne	$t5, $t4, beq_else.30788
	li	$t5, 1
	sub	$t5, $a0, $t5
	add	$at, $a3, $t5
	lw	$t5, 0($at)
	lw	$t5, 2($t5)
	add	$at, $t5, $t1
	lw	$t5, 0($at)
	bne	$t5, $t4, beq_else.30790
	li	$t5, 1
	add	$t5, $a0, $t5
	add	$at, $a3, $t5
	lw	$t5, 0($at)
	lw	$t5, 2($t5)
	add	$at, $t5, $t1
	lw	$t5, 0($at)
	bne	$t5, $t4, beq_else.30792
	li	$t4, 1
	j	beq_cont.30793
beq_else.30792:
	li	$t4, 0
beq_cont.30793:
	j	beq_cont.30791
beq_else.30790:
	li	$t4, 0
beq_cont.30791:
	j	beq_cont.30789
beq_else.30788:
	li	$t4, 0
beq_cont.30789:
	j	beq_cont.30787
beq_else.30786:
	li	$t4, 0
beq_cont.30787:
	li	$t5, 0
	bne	$t4, $t5, beq_else.30794
	add	$at, $a3, $a0
	lw	$a0, 0($at)
	li	$a1, 4
	sub	$at, $t1, $a1
	bgtz	$at, ble_else.30795
	lw	$a1, 2($a0)
	li	$a2, 0
	add	$at, $a1, $t1
	lw	$a1, 0($at)
	sub	$at, $a2, $a1
	bgtz	$at, ble_else.30796
	lw	$a1, 3($a0)
	add	$at, $a1, $t1
	lw	$a1, 0($at)
	li	$a2, 0
	sw	$v1, 0($sp)
	sw	$t2, -1($sp)
	sw	$v0, -2($sp)
	sw	$a0, -3($sp)
	sw	$t1, -4($sp)
	bne	$a1, $a2, beq_else.30797
	j	beq_cont.30798
beq_else.30797:
	move	$t8, $ra
	move	$a1, $t1
	move	$gp, $t2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
beq_cont.30798:
	li	$v0, 1
	lw	$v1, -4($sp)
	add	$v0, $v1, $v0
	li	$v1, 4
	sub	$at, $v0, $v1
	bgtz	$at, ble_else.30799
	lw	$v1, -3($sp)
	lw	$a0, 2($v1)
	li	$a1, 0
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	sub	$at, $a1, $a0
	bgtz	$at, ble_else.30800
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	sw	$v0, -5($sp)
	bne	$a0, $a1, beq_else.30801
	j	beq_cont.30802
beq_else.30801:
	lw	$a0, 5($v1)
	lw	$a1, 7($v1)
	lw	$a2, 1($v1)
	lw	$a3, 4($v1)
	li	$t0, min_caml_diffuse_ray
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$t1, 0
	li	$t2, 0
	add	$at, $a0, $t2
	lwc1	$f2, 0($at)
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	li	$t1, 1
	li	$t2, 1
	add	$at, $a0, $t2
	lwc1	$f2, 0($at)
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	li	$t1, 2
	li	$t2, 2
	add	$at, $a0, $t2
	lwc1	$f2, 0($at)
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	lw	$a0, 6($v1)
	li	$t0, 0
	add	$at, $a0, $t0
	lw	$a0, 0($at)
	add	$at, $a1, $v0
	lw	$a1, 0($at)
	add	$at, $a2, $v0
	lw	$a2, 0($at)
	lw	$t0, -2($sp)
	sw	$a3, -6($sp)
	move	$t8, $ra
	move	$gp, $t0
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	lw	$v1, -5($sp)
	lw	$a0, -6($sp)
	add	$at, $a0, $v1
	lw	$a0, 0($at)
	li	$a1, min_caml_diffuse_ray
	li	$a2, 0
	li	$a3, 0
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 0
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a3, 0
	add	$at, $a1, $a3
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	li	$a3, 1
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 1
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	li	$a3, 2
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 2
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
beq_cont.30802:
	li	$v0, 1
	lw	$v1, -5($sp)
	add	$v0, $v1, $v0
	li	$v1, 4
	sub	$at, $v0, $v1
	bgtz	$at, ble_else.30803
	lw	$v1, -3($sp)
	lw	$a0, 2($v1)
	li	$a1, 0
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	sub	$at, $a1, $a0
	bgtz	$at, ble_else.30804
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	sw	$v0, -7($sp)
	bne	$a0, $a1, beq_else.30805
	j	beq_cont.30806
beq_else.30805:
	lw	$a0, -1($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
beq_cont.30806:
	li	$v0, 1
	lw	$v1, -7($sp)
	add	$v0, $v1, $v0
	lw	$v1, -3($sp)
	lw	$a0, 0($sp)
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	lw	$t8, 0($gp)
	jr	$t8
ble_else.30804:
	jr	$ra
ble_else.30803:
	jr	$ra
ble_else.30800:
	jr	$ra
ble_else.30799:
	jr	$ra
ble_else.30796:
	jr	$ra
ble_else.30795:
	jr	$ra
beq_else.30794:
	lw	$t3, 3($t3)
	add	$at, $t3, $t1
	lw	$t3, 0($at)
	li	$t4, 0
	bne	$t3, $t4, beq_else.30813
	j	beq_cont.30814
beq_else.30813:
	add	$at, $a2, $a0
	lw	$t3, 0($at)
	lw	$t3, 5($t3)
	li	$t4, 1
	sub	$t4, $a0, $t4
	add	$at, $a3, $t4
	lw	$t4, 0($at)
	lw	$t4, 5($t4)
	add	$at, $a3, $a0
	lw	$t5, 0($at)
	lw	$t5, 5($t5)
	li	$t6, 1
	add	$t6, $a0, $t6
	add	$at, $a3, $t6
	lw	$t6, 0($at)
	lw	$t6, 5($t6)
	add	$at, $t0, $a0
	lw	$t7, 0($at)
	lw	$t7, 5($t7)
	li	$s0, min_caml_diffuse_ray
	add	$at, $t3, $t1
	lw	$t3, 0($at)
	li	$s1, 0
	li	$s2, 0
	add	$at, $t3, $s2
	lwc1	$f2, 0($at)
	add	$at, $s0, $s1
	swc1	$f2, 0($at)
	li	$s1, 1
	li	$s2, 1
	add	$at, $t3, $s2
	lwc1	$f2, 0($at)
	add	$at, $s0, $s1
	swc1	$f2, 0($at)
	li	$s1, 2
	li	$s2, 2
	add	$at, $t3, $s2
	lwc1	$f2, 0($at)
	add	$at, $s0, $s1
	swc1	$f2, 0($at)
	li	$t3, min_caml_diffuse_ray
	add	$at, $t4, $t1
	lw	$t4, 0($at)
	li	$s0, 0
	li	$s1, 0
	add	$at, $t3, $s1
	lwc1	$f2, 0($at)
	li	$s1, 0
	add	$at, $t4, $s1
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $s0
	swc1	$f2, 0($at)
	li	$s0, 1
	li	$s1, 1
	add	$at, $t3, $s1
	lwc1	$f2, 0($at)
	li	$s1, 1
	add	$at, $t4, $s1
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $s0
	swc1	$f2, 0($at)
	li	$s0, 2
	li	$s1, 2
	add	$at, $t3, $s1
	lwc1	$f2, 0($at)
	li	$s1, 2
	add	$at, $t4, $s1
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $s0
	swc1	$f2, 0($at)
	li	$t3, min_caml_diffuse_ray
	add	$at, $t5, $t1
	lw	$t4, 0($at)
	li	$t5, 0
	li	$s0, 0
	add	$at, $t3, $s0
	lwc1	$f2, 0($at)
	li	$s0, 0
	add	$at, $t4, $s0
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	li	$t5, 1
	li	$s0, 1
	add	$at, $t3, $s0
	lwc1	$f2, 0($at)
	li	$s0, 1
	add	$at, $t4, $s0
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	li	$t5, 2
	li	$s0, 2
	add	$at, $t3, $s0
	lwc1	$f2, 0($at)
	li	$s0, 2
	add	$at, $t4, $s0
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	li	$t3, min_caml_diffuse_ray
	add	$at, $t6, $t1
	lw	$t4, 0($at)
	li	$t5, 0
	li	$t6, 0
	add	$at, $t3, $t6
	lwc1	$f2, 0($at)
	li	$t6, 0
	add	$at, $t4, $t6
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	li	$t5, 1
	li	$t6, 1
	add	$at, $t3, $t6
	lwc1	$f2, 0($at)
	li	$t6, 1
	add	$at, $t4, $t6
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	li	$t5, 2
	li	$t6, 2
	add	$at, $t3, $t6
	lwc1	$f2, 0($at)
	li	$t6, 2
	add	$at, $t4, $t6
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	li	$t3, min_caml_diffuse_ray
	add	$at, $t7, $t1
	lw	$t4, 0($at)
	li	$t5, 0
	li	$t6, 0
	add	$at, $t3, $t6
	lwc1	$f2, 0($at)
	li	$t6, 0
	add	$at, $t4, $t6
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	li	$t5, 1
	li	$t6, 1
	add	$at, $t3, $t6
	lwc1	$f2, 0($at)
	li	$t6, 1
	add	$at, $t4, $t6
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	li	$t5, 2
	li	$t6, 2
	add	$at, $t3, $t6
	lwc1	$f2, 0($at)
	li	$t6, 2
	add	$at, $t4, $t6
	lwc1	$f3, 0($at)
	add.s	$f2, $f2, $f3
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	add	$at, $a3, $a0
	lw	$t3, 0($at)
	lw	$t3, 4($t3)
	li	$t4, min_caml_rgb
	add	$at, $t3, $t1
	lw	$t3, 0($at)
	li	$t5, min_caml_diffuse_ray
	li	$t6, 0
	li	$t7, 0
	add	$at, $t4, $t7
	lwc1	$f2, 0($at)
	li	$t7, 0
	add	$at, $t3, $t7
	lwc1	$f3, 0($at)
	li	$t7, 0
	add	$at, $t5, $t7
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $t4, $t6
	swc1	$f2, 0($at)
	li	$t6, 1
	li	$t7, 1
	add	$at, $t4, $t7
	lwc1	$f2, 0($at)
	li	$t7, 1
	add	$at, $t3, $t7
	lwc1	$f3, 0($at)
	li	$t7, 1
	add	$at, $t5, $t7
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $t4, $t6
	swc1	$f2, 0($at)
	li	$t6, 2
	li	$t7, 2
	add	$at, $t4, $t7
	lwc1	$f2, 0($at)
	li	$t7, 2
	add	$at, $t3, $t7
	lwc1	$f3, 0($at)
	li	$t3, 2
	add	$at, $t5, $t3
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $t4, $t6
	swc1	$f2, 0($at)
beq_cont.30814:
	li	$t3, 1
	add	$t1, $t1, $t3
	add	$at, $a3, $a0
	lw	$t3, 0($at)
	li	$t4, 4
	sub	$at, $t1, $t4
	bgtz	$at, ble_else.30815
	li	$t4, 0
	lw	$t5, 2($t3)
	add	$at, $t5, $t1
	lw	$t5, 0($at)
	sub	$at, $t4, $t5
	bgtz	$at, ble_else.30816
	add	$at, $a3, $a0
	lw	$t4, 0($at)
	lw	$t4, 2($t4)
	add	$at, $t4, $t1
	lw	$t4, 0($at)
	add	$at, $a2, $a0
	lw	$t5, 0($at)
	lw	$t5, 2($t5)
	add	$at, $t5, $t1
	lw	$t5, 0($at)
	bne	$t5, $t4, beq_else.30817
	add	$at, $t0, $a0
	lw	$t5, 0($at)
	lw	$t5, 2($t5)
	add	$at, $t5, $t1
	lw	$t5, 0($at)
	bne	$t5, $t4, beq_else.30819
	li	$t5, 1
	sub	$t5, $a0, $t5
	add	$at, $a3, $t5
	lw	$t5, 0($at)
	lw	$t5, 2($t5)
	add	$at, $t5, $t1
	lw	$t5, 0($at)
	bne	$t5, $t4, beq_else.30821
	li	$t5, 1
	add	$t5, $a0, $t5
	add	$at, $a3, $t5
	lw	$t5, 0($at)
	lw	$t5, 2($t5)
	add	$at, $t5, $t1
	lw	$t5, 0($at)
	bne	$t5, $t4, beq_else.30823
	li	$t4, 1
	j	beq_cont.30824
beq_else.30823:
	li	$t4, 0
beq_cont.30824:
	j	beq_cont.30822
beq_else.30821:
	li	$t4, 0
beq_cont.30822:
	j	beq_cont.30820
beq_else.30819:
	li	$t4, 0
beq_cont.30820:
	j	beq_cont.30818
beq_else.30817:
	li	$t4, 0
beq_cont.30818:
	li	$t5, 0
	bne	$t4, $t5, beq_else.30825
	add	$at, $a3, $a0
	lw	$a0, 0($at)
	li	$a1, 4
	sub	$at, $t1, $a1
	bgtz	$at, ble_else.30826
	lw	$a1, 2($a0)
	li	$a2, 0
	add	$at, $a1, $t1
	lw	$a1, 0($at)
	sub	$at, $a2, $a1
	bgtz	$at, ble_else.30827
	lw	$a1, 3($a0)
	add	$at, $a1, $t1
	lw	$a1, 0($at)
	li	$a2, 0
	sw	$v1, 0($sp)
	sw	$t2, -1($sp)
	sw	$a0, -8($sp)
	sw	$t1, -9($sp)
	bne	$a1, $a2, beq_else.30828
	j	beq_cont.30829
beq_else.30828:
	lw	$a1, 5($a0)
	lw	$a2, 7($a0)
	lw	$a3, 1($a0)
	lw	$t0, 4($a0)
	li	$t3, min_caml_diffuse_ray
	add	$at, $a1, $t1
	lw	$a1, 0($at)
	li	$t4, 0
	li	$t5, 0
	add	$at, $a1, $t5
	lwc1	$f2, 0($at)
	add	$at, $t3, $t4
	swc1	$f2, 0($at)
	li	$t4, 1
	li	$t5, 1
	add	$at, $a1, $t5
	lwc1	$f2, 0($at)
	add	$at, $t3, $t4
	swc1	$f2, 0($at)
	li	$t4, 2
	li	$t5, 2
	add	$at, $a1, $t5
	lwc1	$f2, 0($at)
	add	$at, $t3, $t4
	swc1	$f2, 0($at)
	lw	$a1, 6($a0)
	li	$t3, 0
	add	$at, $a1, $t3
	lw	$a1, 0($at)
	add	$at, $a2, $t1
	lw	$a2, 0($at)
	add	$at, $a3, $t1
	lw	$a3, 0($at)
	sw	$t0, -10($sp)
	move	$t8, $ra
	move	$a0, $a1
	move	$gp, $v0
	move	$a1, $a2
	move	$a2, $a3
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	lw	$v1, -9($sp)
	lw	$a0, -10($sp)
	add	$at, $a0, $v1
	lw	$a0, 0($at)
	li	$a1, min_caml_diffuse_ray
	li	$a2, 0
	li	$a3, 0
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 0
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a3, 0
	add	$at, $a1, $a3
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	li	$a3, 1
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 1
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	li	$a3, 2
	add	$at, $v0, $a3
	lwc1	$f2, 0($at)
	li	$a3, 2
	add	$at, $a0, $a3
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a1, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a2
	swc1	$f2, 0($at)
beq_cont.30829:
	li	$v0, 1
	lw	$v1, -9($sp)
	add	$v0, $v1, $v0
	li	$v1, 4
	sub	$at, $v0, $v1
	bgtz	$at, ble_else.30830
	lw	$v1, -8($sp)
	lw	$a0, 2($v1)
	li	$a1, 0
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	sub	$at, $a1, $a0
	bgtz	$at, ble_else.30831
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	sw	$v0, -11($sp)
	bne	$a0, $a1, beq_else.30832
	j	beq_cont.30833
beq_else.30832:
	lw	$a0, -1($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
beq_cont.30833:
	li	$v0, 1
	lw	$v1, -11($sp)
	add	$v0, $v1, $v0
	lw	$v1, -8($sp)
	lw	$a0, 0($sp)
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	lw	$t8, 0($gp)
	jr	$t8
ble_else.30831:
	jr	$ra
ble_else.30830:
	jr	$ra
ble_else.30827:
	jr	$ra
ble_else.30826:
	jr	$ra
beq_else.30825:
	lw	$v0, 3($t3)
	add	$at, $v0, $t1
	lw	$v0, 0($at)
	li	$v1, 0
	sw	$t0, -12($sp)
	sw	$a3, -13($sp)
	sw	$a2, -14($sp)
	sw	$a1, -15($sp)
	sw	$a0, -16($sp)
	sw	$gp, -17($sp)
	sw	$t1, -9($sp)
	bne	$v0, $v1, beq_else.30838
	j	beq_cont.30839
beq_else.30838:
	move	$t8, $ra
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $t0
	move	$t0, $t1
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	calc_diffuse_using_5points.2965
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
beq_cont.30839:
	li	$v0, 1
	lw	$v1, -9($sp)
	add	$v0, $v1, $v0
	lw	$v1, -16($sp)
	lw	$a0, -15($sp)
	lw	$a1, -14($sp)
	lw	$a2, -13($sp)
	lw	$a3, -12($sp)
	lw	$t0, -17($sp)
	move	$t1, $v0
	move	$gp, $t0
	move	$t0, $a3
	move	$a3, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	lw	$t8, 0($gp)
	jr	$t8
ble_else.30816:
	jr	$ra
ble_else.30815:
	jr	$ra
ble_else.30785:
	jr	$ra
ble_else.30784:
	jr	$ra
pretrace_diffuse_rays.3000:
	lw	$v0, 2($gp)
	lw	$v1, 1($gp)
	li	$a2, 4
	sub	$at, $a1, $a2
	bgtz	$at, ble_else.30844
	lw	$a2, 2($a0)
	add	$at, $a2, $a1
	lw	$a2, 0($at)
	li	$a3, 0
	sub	$at, $a3, $a2
	bgtz	$at, ble_else.30845
	lw	$a2, 3($a0)
	add	$at, $a2, $a1
	lw	$a2, 0($at)
	li	$a3, 0
	sw	$gp, 0($sp)
	sw	$v1, -1($sp)
	sw	$v0, -2($sp)
	sw	$a0, -3($sp)
	sw	$a1, -4($sp)
	bne	$a2, $a3, beq_else.30846
	j	beq_cont.30847
beq_else.30846:
	lw	$a2, 6($a0)
	li	$a3, 0
	add	$at, $a2, $a3
	lw	$a2, 0($at)
	li	$a3, min_caml_diffuse_ray
	lwc1	$f2, 0(l.22664)
	li	$t0, 0
	add	$at, $a3, $t0
	swc1	$f2, 0($at)
	li	$t0, 1
	add	$at, $a3, $t0
	swc1	$f2, 0($at)
	li	$t0, 2
	add	$at, $a3, $t0
	swc1	$f2, 0($at)
	lw	$a3, 7($a0)
	lw	$t0, 1($a0)
	li	$t1, min_caml_dirvecs
	add	$at, $t1, $a2
	lw	$a2, 0($at)
	add	$at, $a3, $a1
	lw	$a3, 0($at)
	add	$at, $t0, $a1
	lw	$t0, 0($at)
	li	$t1, min_caml_startp_fast
	li	$t2, 0
	li	$t3, 0
	add	$at, $t0, $t3
	lwc1	$f2, 0($at)
	add	$at, $t1, $t2
	swc1	$f2, 0($at)
	li	$t2, 1
	li	$t3, 1
	add	$at, $t0, $t3
	lwc1	$f2, 0($at)
	add	$at, $t1, $t2
	swc1	$f2, 0($at)
	li	$t2, 2
	li	$t3, 2
	add	$at, $t0, $t3
	lwc1	$f2, 0($at)
	add	$at, $t1, $t2
	swc1	$f2, 0($at)
	li	$t1, min_caml_n_objects
	li	$t2, 0
	add	$at, $t1, $t2
	lw	$t1, 0($at)
	li	$t2, 1
	sub	$t1, $t1, $t2
	sw	$t0, -5($sp)
	sw	$a3, -6($sp)
	sw	$a2, -7($sp)
	move	$t8, $ra
	move	$a1, $t1
	move	$a0, $t0
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -7($sp)
	lw	$a0, -6($sp)
	lw	$a1, -5($sp)
	lw	$a2, -1($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	lw	$v0, -3($sp)
	lw	$v1, 5($v0)
	lw	$a0, -4($sp)
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a1, min_caml_diffuse_ray
	li	$a2, 0
	li	$a3, 0
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	li	$a3, 2
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
beq_cont.30847:
	li	$v0, 1
	lw	$v1, -4($sp)
	add	$v0, $v1, $v0
	li	$v1, 4
	sub	$at, $v0, $v1
	bgtz	$at, ble_else.30848
	lw	$v1, -3($sp)
	lw	$a0, 2($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	sub	$at, $a1, $a0
	bgtz	$at, ble_else.30849
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	sw	$v0, -8($sp)
	bne	$a0, $a1, beq_else.30850
	j	beq_cont.30851
beq_else.30850:
	lw	$a0, 6($v1)
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, min_caml_diffuse_ray
	lwc1	$f2, 0(l.22664)
	li	$a2, 0
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	add	$at, $a1, $a2
	swc1	$f2, 0($at)
	lw	$a1, 7($v1)
	lw	$a2, 1($v1)
	li	$a3, min_caml_dirvecs
	add	$at, $a3, $a0
	lw	$a0, 0($at)
	add	$at, $a1, $v0
	lw	$a1, 0($at)
	add	$at, $a2, $v0
	lw	$a2, 0($at)
	li	$a3, min_caml_startp_fast
	li	$t0, 0
	li	$t1, 0
	add	$at, $a2, $t1
	lwc1	$f2, 0($at)
	add	$at, $a3, $t0
	swc1	$f2, 0($at)
	li	$t0, 1
	li	$t1, 1
	add	$at, $a2, $t1
	lwc1	$f2, 0($at)
	add	$at, $a3, $t0
	swc1	$f2, 0($at)
	li	$t0, 2
	li	$t1, 2
	add	$at, $a2, $t1
	lwc1	$f2, 0($at)
	add	$at, $a3, $t0
	swc1	$f2, 0($at)
	li	$a3, min_caml_n_objects
	li	$t0, 0
	add	$at, $a3, $t0
	lw	$a3, 0($at)
	li	$t0, 1
	sub	$a3, $a3, $t0
	sw	$a2, -9($sp)
	sw	$a1, -10($sp)
	sw	$a0, -11($sp)
	move	$t8, $ra
	move	$a1, $a3
	move	$a0, $a2
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lw	$a0, 0($a0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	lw	$a2, -10($sp)
	add	$at, $a2, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a2, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	swc1	$f2, -12($sp)
	sw	$v0, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fisneg
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30852
	lw	$v0, -13($sp)
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24210)
	lwc1	$f3, -12($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	j	beq_cont.30853
beq_else.30852:
	li	$v0, 119
	lw	$v1, -11($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24154)
	lwc1	$f3, -12($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
beq_cont.30853:
	li	$v0, 116
	lw	$v1, -11($sp)
	lw	$a0, -10($sp)
	lw	$a1, -9($sp)
	lw	$a2, -1($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	lw	$v0, -3($sp)
	lw	$v1, 5($v0)
	lw	$a0, -8($sp)
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a1, min_caml_diffuse_ray
	li	$a2, 0
	li	$a3, 0
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	li	$a3, 2
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
beq_cont.30851:
	li	$v0, 1
	lw	$v1, -8($sp)
	add	$v0, $v1, $v0
	lw	$v1, -3($sp)
	lw	$a0, 0($sp)
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	lw	$t8, 0($gp)
	jr	$t8
ble_else.30849:
	jr	$ra
ble_else.30848:
	jr	$ra
ble_else.30845:
	jr	$ra
ble_else.30844:
	jr	$ra
pretrace_pixels.3003:
	lw	$v0, 4($gp)
	lw	$v1, 3($gp)
	lw	$a3, 2($gp)
	lw	$t0, 1($gp)
	li	$t1, 0
	sub	$at, $t1, $a1
	bgtz	$at, ble_else.30858
	li	$t1, min_caml_scan_pitch
	li	$t2, 0
	add	$at, $t1, $t2
	lwc1	$f2, 0($at)
	li	$t1, min_caml_image_center
	li	$t2, 0
	add	$at, $t1, $t2
	lw	$t1, 0($at)
	sub	$t1, $a1, $t1
	sw	$gp, 0($sp)
	sw	$a3, -1($sp)
	sw	$t0, -2($sp)
	sw	$v1, -3($sp)
	sw	$a2, -4($sp)
	sw	$v0, -5($sp)
	sw	$a1, -6($sp)
	sw	$a0, -7($sp)
	swc1	$f14, -8($sp)
	swc1	$f13, -9($sp)
	swc1	$f12, -10($sp)
	swc1	$f2, -11($sp)
	move	$t8, $ra
	move	$a0, $t1
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_float_of_int
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -11($sp)
	mul.s	$f2, $f3, $f2
	li	$v0, min_caml_ptrace_dirvec
	li	$v1, 0
	li	$a0, min_caml_screenx_dir
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f2, $f3
	lwc1	$f4, -10($sp)
	add.s	$f3, $f3, $f4
	add	$at, $v0, $v1
	swc1	$f3, 0($at)
	li	$v0, min_caml_ptrace_dirvec
	li	$v1, 1
	li	$a0, min_caml_screenx_dir
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f2, $f3
	lwc1	$f5, -9($sp)
	add.s	$f3, $f3, $f5
	add	$at, $v0, $v1
	swc1	$f3, 0($at)
	li	$v0, min_caml_ptrace_dirvec
	li	$v1, 2
	li	$a0, min_caml_screenx_dir
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -8($sp)
	add.s	$f2, $f2, $f3
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, min_caml_ptrace_dirvec
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	sw	$v0, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fsqr
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fsqr
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -13($sp)
	add.s	$f2, $f3, $f2
	li	$v0, 2
	lw	$v1, -12($sp)
	add	$at, $v1, $v0
	lwc1	$f3, 0($at)
	swc1	$f2, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fsqr
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -14($sp)
	add.s	$f2, $f3, $f2
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_sqrt
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	swc1	$f2, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fiszero
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30859
	lwc1	$f2, 0(l.22725)
	lwc1	$f3, -15($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	j	beq_cont.30860
beq_else.30859:
	lwc1	$f2, 0(l.22725)
beq_cont.30860:
	li	$v0, 0
	li	$v1, 0
	lw	$a0, -12($sp)
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f2
	add	$at, $a0, $v0
	swc1	$f3, 0($at)
	li	$v0, 1
	li	$v1, 1
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f3, $f2
	add	$at, $a0, $v0
	swc1	$f3, 0($at)
	li	$v0, 2
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f3, $f2
	add	$at, $a0, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_rgb
	lwc1	$f2, 0(l.22664)
	li	$v1, 0
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v1, 1
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v1, 2
	add	$at, $v0, $v1
	swc1	$f2, 0($at)
	li	$v0, min_caml_startp
	li	$v1, min_caml_viewpoint
	li	$a0, 0
	li	$a1, 0
	add	$at, $v1, $a1
	lwc1	$f2, 0($at)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	li	$a1, 1
	add	$at, $v1, $a1
	lwc1	$f2, 0($at)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	li	$a1, 2
	add	$at, $v1, $a1
	lwc1	$f2, 0($at)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$v0, 0
	lwc1	$f2, 0(l.22725)
	li	$v1, min_caml_ptrace_dirvec
	lw	$a0, -6($sp)
	lw	$a1, -7($sp)
	add	$at, $a1, $a0
	lw	$a2, 0($at)
	lwc1	$f3, 0(l.22664)
	lw	$a3, -5($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	move	$gp, $a3
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	lw	$v0, -6($sp)
	lw	$v1, -7($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lw	$a0, 0($a0)
	li	$a1, min_caml_rgb
	li	$a2, 0
	li	$a3, 0
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $a0, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $a0, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	li	$a3, 2
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $a0, $a2
	swc1	$f2, 0($at)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lw	$a0, 6($a0)
	li	$a1, 0
	lw	$a2, -4($sp)
	add	$at, $a0, $a1
	sw	$a2, 0($at)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	lw	$a3, 2($a0)
	add	$at, $a3, $a1
	lw	$a3, 0($at)
	li	$t0, 0
	sub	$at, $t0, $a3
	bgtz	$at, beq_else.30861
	lw	$a3, 3($a0)
	add	$at, $a3, $a1
	lw	$a3, 0($at)
	li	$t0, 0
	sw	$a0, -16($sp)
	bne	$a3, $t0, beq_else.30863
	j	beq_cont.30864
beq_else.30863:
	lw	$a3, 6($a0)
	li	$t0, 0
	add	$at, $a3, $t0
	lw	$a3, 0($at)
	li	$t0, min_caml_diffuse_ray
	lwc1	$f2, 0(l.22664)
	li	$t1, 0
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	li	$t1, 1
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	li	$t1, 2
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	lw	$t0, 7($a0)
	lw	$t1, 1($a0)
	li	$t2, min_caml_dirvecs
	add	$at, $t2, $a3
	lw	$a3, 0($at)
	add	$at, $t0, $a1
	lw	$t0, 0($at)
	add	$at, $t1, $a1
	lw	$t1, 0($at)
	li	$t2, min_caml_startp_fast
	li	$t3, 0
	li	$t4, 0
	add	$at, $t1, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t3, 1
	li	$t4, 1
	add	$at, $t1, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t3, 2
	li	$t4, 2
	add	$at, $t1, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t2, min_caml_n_objects
	li	$t3, 0
	add	$at, $t2, $t3
	lw	$t2, 0($at)
	li	$t3, 1
	sub	$t2, $t2, $t3
	sw	$a1, -17($sp)
	sw	$t1, -18($sp)
	sw	$t0, -19($sp)
	sw	$a3, -20($sp)
	move	$t8, $ra
	move	$a1, $t2
	move	$a0, $t1
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	setup_startp_constants.2851
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	lw	$a0, 0($a0)
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a1, 0
	lw	$a2, -19($sp)
	add	$at, $a2, $a1
	lwc1	$f3, 0($at)
	mul.s	$f2, $f2, $f3
	li	$a1, 1
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a2, $a1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	li	$a1, 2
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a0, 2
	add	$at, $a2, $a0
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	swc1	$f2, -21($sp)
	sw	$v0, -22($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_fisneg
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.30865
	lw	$v0, -22($sp)
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24210)
	lwc1	$f3, -21($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	j	beq_cont.30866
beq_else.30865:
	li	$v0, 119
	lw	$v1, -20($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lwc1	$f2, 0(l.24154)
	lwc1	$f3, -21($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$a0, -3($sp)
	move	$t8, $ra
	move	$gp, $a0
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
beq_cont.30866:
	li	$v0, 116
	lw	$v1, -20($sp)
	lw	$a0, -19($sp)
	lw	$a1, -18($sp)
	lw	$a2, -2($sp)
	move	$t8, $ra
	move	$a3, $v0
	move	$gp, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	lw	$v0, -16($sp)
	lw	$v1, 5($v0)
	lw	$a0, -17($sp)
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a0, min_caml_diffuse_ray
	li	$a1, 0
	li	$a2, 0
	add	$at, $a0, $a2
	lwc1	$f2, 0($at)
	add	$at, $v1, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $a0, $a2
	lwc1	$f2, 0($at)
	add	$at, $v1, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $a0, $a2
	lwc1	$f2, 0($at)
	add	$at, $v1, $a1
	swc1	$f2, 0($at)
beq_cont.30864:
	li	$v0, 1
	lw	$v1, -16($sp)
	lw	$a0, -1($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	j	beq_cont.30862
beq_else.30861:
beq_cont.30862:
	li	$v0, 1
	lw	$v1, -6($sp)
	sub	$v0, $v1, $v0
	li	$v1, 1
	lw	$a0, -4($sp)
	add	$v1, $a0, $v1
	li	$a0, 5
	sub	$at, $a0, $v1
	bgtz	$at, beq_else.30867
	li	$a0, 5
	sub	$v1, $v1, $a0
	j	beq_cont.30868
beq_else.30867:
beq_cont.30868:
	lwc1	$f2, -10($sp)
	lwc1	$f3, -9($sp)
	lwc1	$f4, -8($sp)
	lw	$a0, -7($sp)
	lw	$a1, 0($sp)
	move	$a2, $v1
	move	$gp, $a1
	move	$a1, $v0
	mov.s	$f14, $f4
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	lw	$t8, 0($gp)
	jr	$t8
ble_else.30858:
	jr	$ra
scan_pixel.3014:
	lw	$v0, 4($gp)
	lw	$v1, 3($gp)
	lw	$t1, 2($gp)
	lw	$t2, 1($gp)
	li	$t3, min_caml_image_size
	li	$t4, 0
	add	$at, $t3, $t4
	lw	$t3, 0($at)
	sub	$at, $t3, $a0
	bgtz	$at, ble_else.30870
	jr	$ra
ble_else.30870:
	li	$t3, min_caml_rgb
	add	$at, $a3, $a0
	lw	$t4, 0($at)
	lw	$t4, 0($t4)
	li	$t5, 0
	li	$t6, 0
	add	$at, $t4, $t6
	lwc1	$f2, 0($at)
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	li	$t5, 1
	li	$t6, 1
	add	$at, $t4, $t6
	lwc1	$f2, 0($at)
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	li	$t5, 2
	li	$t6, 2
	add	$at, $t4, $t6
	lwc1	$f2, 0($at)
	add	$at, $t3, $t5
	swc1	$f2, 0($at)
	li	$t3, min_caml_image_size
	li	$t4, 1
	add	$at, $t3, $t4
	lw	$t3, 0($at)
	li	$t4, 1
	add	$t4, $a1, $t4
	sub	$at, $t3, $t4
	bgtz	$at, beq_else.30872
	li	$t3, 0
	j	beq_cont.30873
beq_else.30872:
	li	$t3, 0
	sub	$at, $a1, $t3
	bgtz	$at, beq_else.30874
	li	$t3, 0
	j	beq_cont.30875
beq_else.30874:
	li	$t3, min_caml_image_size
	li	$t4, 0
	add	$at, $t3, $t4
	lw	$t3, 0($at)
	li	$t4, 1
	add	$t4, $a0, $t4
	sub	$at, $t3, $t4
	bgtz	$at, beq_else.30876
	li	$t3, 0
	j	beq_cont.30877
beq_else.30876:
	li	$t3, 0
	sub	$at, $a0, $t3
	bgtz	$at, beq_else.30878
	li	$t3, 0
	j	beq_cont.30879
beq_else.30878:
	li	$t3, 1
beq_cont.30879:
beq_cont.30877:
beq_cont.30875:
beq_cont.30873:
	li	$t4, 0
	sw	$gp, 0($sp)
	sw	$t0, -1($sp)
	sw	$a2, -2($sp)
	sw	$v0, -3($sp)
	sw	$t1, -4($sp)
	sw	$t2, -5($sp)
	sw	$v1, -6($sp)
	sw	$a1, -7($sp)
	sw	$a3, -8($sp)
	sw	$a0, -9($sp)
	bne	$t3, $t4, beq_else.30880
	add	$at, $a3, $a0
	lw	$t3, 0($at)
	li	$t4, 0
	lw	$t5, 2($t3)
	li	$t6, 0
	add	$at, $t5, $t4
	lw	$t5, 0($at)
	sub	$at, $t6, $t5
	bgtz	$at, beq_else.30882
	lw	$t5, 3($t3)
	add	$at, $t5, $t4
	lw	$t5, 0($at)
	li	$t6, 0
	sw	$t3, -10($sp)
	bne	$t5, $t6, beq_else.30884
	j	beq_cont.30885
beq_else.30884:
	move	$t8, $ra
	move	$a1, $t4
	move	$a0, $t3
	move	$gp, $t2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
beq_cont.30885:
	li	$v0, 1
	lw	$v1, -10($sp)
	lw	$a0, 2($v1)
	li	$a1, 0
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	sub	$at, $a1, $a0
	bgtz	$at, beq_else.30886
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	bne	$a0, $a1, beq_else.30888
	j	beq_cont.30889
beq_else.30888:
	lw	$a0, 5($v1)
	lw	$a1, 7($v1)
	lw	$a2, 1($v1)
	lw	$a3, 4($v1)
	li	$t0, min_caml_diffuse_ray
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$t1, 0
	li	$t2, 0
	add	$at, $a0, $t2
	lwc1	$f2, 0($at)
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	li	$t1, 1
	li	$t2, 1
	add	$at, $a0, $t2
	lwc1	$f2, 0($at)
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	li	$t1, 2
	li	$t2, 2
	add	$at, $a0, $t2
	lwc1	$f2, 0($at)
	add	$at, $t0, $t1
	swc1	$f2, 0($at)
	lw	$a0, 6($v1)
	li	$t0, 0
	add	$at, $a0, $t0
	lw	$a0, 0($at)
	add	$at, $a1, $v0
	lw	$a1, 0($at)
	add	$at, $a2, $v0
	lw	$a2, 0($at)
	lw	$t0, -6($sp)
	sw	$v0, -11($sp)
	sw	$a3, -12($sp)
	move	$t8, $ra
	move	$gp, $t0
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	lw	$v1, -11($sp)
	lw	$a0, -12($sp)
	add	$at, $a0, $v1
	lw	$v1, 0($at)
	li	$a0, min_caml_diffuse_ray
	li	$a1, 0
	li	$a2, 0
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 0
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 0
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 1
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 1
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 2
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
beq_cont.30889:
	li	$v0, 2
	lw	$v1, -10($sp)
	lw	$a0, 2($v1)
	li	$a1, 0
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	sub	$at, $a1, $a0
	bgtz	$at, beq_else.30890
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	bne	$a0, $a1, beq_else.30892
	j	beq_cont.30893
beq_else.30892:
	lw	$a0, -5($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
beq_cont.30893:
	li	$v0, 3
	lw	$v1, -10($sp)
	lw	$a0, -4($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	j	beq_cont.30891
beq_else.30890:
beq_cont.30891:
	j	beq_cont.30887
beq_else.30886:
beq_cont.30887:
	j	beq_cont.30883
beq_else.30882:
beq_cont.30883:
	j	beq_cont.30881
beq_else.30880:
	li	$t3, 0
	add	$at, $a3, $a0
	lw	$t4, 0($at)
	li	$t5, 0
	lw	$t6, 2($t4)
	add	$at, $t6, $t3
	lw	$t6, 0($at)
	sub	$at, $t5, $t6
	bgtz	$at, beq_else.30894
	add	$at, $a3, $a0
	lw	$t5, 0($at)
	lw	$t5, 2($t5)
	add	$at, $t5, $t3
	lw	$t5, 0($at)
	add	$at, $a2, $a0
	lw	$t6, 0($at)
	lw	$t6, 2($t6)
	add	$at, $t6, $t3
	lw	$t6, 0($at)
	bne	$t6, $t5, beq_else.30896
	add	$at, $t0, $a0
	lw	$t6, 0($at)
	lw	$t6, 2($t6)
	add	$at, $t6, $t3
	lw	$t6, 0($at)
	bne	$t6, $t5, beq_else.30898
	li	$t6, 1
	sub	$t6, $a0, $t6
	add	$at, $a3, $t6
	lw	$t6, 0($at)
	lw	$t6, 2($t6)
	add	$at, $t6, $t3
	lw	$t6, 0($at)
	bne	$t6, $t5, beq_else.30900
	li	$t6, 1
	add	$t6, $a0, $t6
	add	$at, $a3, $t6
	lw	$t6, 0($at)
	lw	$t6, 2($t6)
	add	$at, $t6, $t3
	lw	$t6, 0($at)
	bne	$t6, $t5, beq_else.30902
	li	$t5, 1
	j	beq_cont.30903
beq_else.30902:
	li	$t5, 0
beq_cont.30903:
	j	beq_cont.30901
beq_else.30900:
	li	$t5, 0
beq_cont.30901:
	j	beq_cont.30899
beq_else.30898:
	li	$t5, 0
beq_cont.30899:
	j	beq_cont.30897
beq_else.30896:
	li	$t5, 0
beq_cont.30897:
	li	$t6, 0
	bne	$t5, $t6, beq_else.30904
	add	$at, $a3, $a0
	lw	$t4, 0($at)
	lw	$t5, 2($t4)
	li	$t6, 0
	add	$at, $t5, $t3
	lw	$t5, 0($at)
	sub	$at, $t6, $t5
	bgtz	$at, beq_else.30906
	lw	$t5, 3($t4)
	add	$at, $t5, $t3
	lw	$t5, 0($at)
	li	$t6, 0
	sw	$t4, -13($sp)
	bne	$t5, $t6, beq_else.30908
	j	beq_cont.30909
beq_else.30908:
	lw	$t5, 5($t4)
	lw	$t6, 7($t4)
	lw	$t7, 1($t4)
	lw	$s0, 4($t4)
	li	$s1, min_caml_diffuse_ray
	add	$at, $t5, $t3
	lw	$t5, 0($at)
	li	$s2, 0
	li	$s3, 0
	add	$at, $t5, $s3
	lwc1	$f2, 0($at)
	add	$at, $s1, $s2
	swc1	$f2, 0($at)
	li	$s2, 1
	li	$s3, 1
	add	$at, $t5, $s3
	lwc1	$f2, 0($at)
	add	$at, $s1, $s2
	swc1	$f2, 0($at)
	li	$s2, 2
	li	$s3, 2
	add	$at, $t5, $s3
	lwc1	$f2, 0($at)
	add	$at, $s1, $s2
	swc1	$f2, 0($at)
	lw	$t5, 6($t4)
	li	$s1, 0
	add	$at, $t5, $s1
	lw	$t5, 0($at)
	add	$at, $t6, $t3
	lw	$t6, 0($at)
	add	$at, $t7, $t3
	lw	$t7, 0($at)
	sw	$t3, -14($sp)
	sw	$s0, -15($sp)
	move	$t8, $ra
	move	$a2, $t7
	move	$a1, $t6
	move	$a0, $t5
	move	$gp, $v1
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	lw	$v1, -14($sp)
	lw	$a0, -15($sp)
	add	$at, $a0, $v1
	lw	$v1, 0($at)
	li	$a0, min_caml_diffuse_ray
	li	$a1, 0
	li	$a2, 0
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 0
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 0
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 1
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 1
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 2
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
beq_cont.30909:
	li	$v0, 1
	lw	$v1, -13($sp)
	lw	$a0, 2($v1)
	li	$a1, 0
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	sub	$at, $a1, $a0
	bgtz	$at, beq_else.30910
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	bne	$a0, $a1, beq_else.30912
	j	beq_cont.30913
beq_else.30912:
	lw	$a0, -5($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
beq_cont.30913:
	li	$v0, 2
	lw	$v1, -13($sp)
	lw	$a0, -4($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	j	beq_cont.30911
beq_else.30910:
beq_cont.30911:
	j	beq_cont.30907
beq_else.30906:
beq_cont.30907:
	j	beq_cont.30905
beq_else.30904:
	lw	$t4, 3($t4)
	add	$at, $t4, $t3
	lw	$t4, 0($at)
	li	$t5, 0
	bne	$t4, $t5, beq_else.30914
	j	beq_cont.30915
beq_else.30914:
	move	$t8, $ra
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $t0
	move	$t0, $t3
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	calc_diffuse_using_5points.2965
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
beq_cont.30915:
	li	$v0, 1
	lw	$v1, -9($sp)
	lw	$a0, -7($sp)
	lw	$a1, -2($sp)
	lw	$a2, -8($sp)
	lw	$a3, -1($sp)
	lw	$t0, -3($sp)
	move	$t8, $ra
	move	$t1, $v0
	move	$gp, $t0
	move	$t0, $a3
	move	$a3, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
beq_cont.30905:
	j	beq_cont.30895
beq_else.30894:
beq_cont.30895:
beq_cont.30881:
	li	$v0, min_caml_rgb
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_int_of_float
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 255
	sub	$at, $v0, $v1
	bgtz	$at, beq_else.30916
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.30918
	j	beq_cont.30919
beq_else.30918:
	li	$v0, 0
beq_cont.30919:
	j	beq_cont.30917
beq_else.30916:
	li	$v0, 255
beq_cont.30917:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_int
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, 32
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_char
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_int_of_float
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 255
	sub	$at, $v0, $v1
	bgtz	$at, beq_else.30920
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.30922
	j	beq_cont.30923
beq_else.30922:
	li	$v0, 0
beq_cont.30923:
	j	beq_cont.30921
beq_else.30920:
	li	$v0, 255
beq_cont.30921:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_int
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, 32
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_char
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_int_of_float
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 255
	sub	$at, $v0, $v1
	bgtz	$at, beq_else.30924
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.30926
	j	beq_cont.30927
beq_else.30926:
	li	$v0, 0
beq_cont.30927:
	j	beq_cont.30925
beq_else.30924:
	li	$v0, 255
beq_cont.30925:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_int
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, 10
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_char
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -9($sp)
	add	$v0, $v1, $v0
	li	$v1, min_caml_image_size
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.30928
	jr	$ra
ble_else.30928:
	li	$v1, min_caml_rgb
	lw	$a0, -8($sp)
	add	$at, $a0, $v0
	lw	$a1, 0($at)
	lw	$a1, 0($a1)
	li	$a2, 0
	li	$a3, 0
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	li	$a3, 2
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$v1, min_caml_image_size
	li	$a1, 1
	add	$at, $v1, $a1
	lw	$v1, 0($at)
	li	$a1, 1
	lw	$a2, -7($sp)
	add	$a1, $a2, $a1
	sub	$at, $v1, $a1
	bgtz	$at, beq_else.30930
	li	$v1, 0
	j	beq_cont.30931
beq_else.30930:
	li	$v1, 0
	sub	$at, $a2, $v1
	bgtz	$at, beq_else.30932
	li	$v1, 0
	j	beq_cont.30933
beq_else.30932:
	li	$v1, min_caml_image_size
	li	$a1, 0
	add	$at, $v1, $a1
	lw	$v1, 0($at)
	li	$a1, 1
	add	$a1, $v0, $a1
	sub	$at, $v1, $a1
	bgtz	$at, beq_else.30934
	li	$v1, 0
	j	beq_cont.30935
beq_else.30934:
	li	$v1, 0
	sub	$at, $v0, $v1
	bgtz	$at, beq_else.30936
	li	$v1, 0
	j	beq_cont.30937
beq_else.30936:
	li	$v1, 1
beq_cont.30937:
beq_cont.30935:
beq_cont.30933:
beq_cont.30931:
	li	$a1, 0
	sw	$v0, -16($sp)
	bne	$v1, $a1, beq_else.30938
	add	$at, $a0, $v0
	lw	$v1, 0($at)
	li	$a1, 0
	lw	$a3, 2($v1)
	li	$t0, 0
	add	$at, $a3, $a1
	lw	$a3, 0($at)
	sub	$at, $t0, $a3
	bgtz	$at, beq_else.30940
	lw	$a3, 3($v1)
	add	$at, $a3, $a1
	lw	$a3, 0($at)
	li	$t0, 0
	sw	$v1, -17($sp)
	bne	$a3, $t0, beq_else.30942
	j	beq_cont.30943
beq_else.30942:
	lw	$a3, 5($v1)
	lw	$t0, 7($v1)
	lw	$t1, 1($v1)
	lw	$t2, 4($v1)
	li	$t3, min_caml_diffuse_ray
	add	$at, $a3, $a1
	lw	$a3, 0($at)
	li	$t4, 0
	li	$t5, 0
	add	$at, $a3, $t5
	lwc1	$f2, 0($at)
	add	$at, $t3, $t4
	swc1	$f2, 0($at)
	li	$t4, 1
	li	$t5, 1
	add	$at, $a3, $t5
	lwc1	$f2, 0($at)
	add	$at, $t3, $t4
	swc1	$f2, 0($at)
	li	$t4, 2
	li	$t5, 2
	add	$at, $a3, $t5
	lwc1	$f2, 0($at)
	add	$at, $t3, $t4
	swc1	$f2, 0($at)
	lw	$a3, 6($v1)
	li	$t3, 0
	add	$at, $a3, $t3
	lw	$a3, 0($at)
	add	$at, $t0, $a1
	lw	$t0, 0($at)
	add	$at, $t1, $a1
	lw	$t1, 0($at)
	lw	$t3, -6($sp)
	sw	$a1, -18($sp)
	sw	$t2, -19($sp)
	move	$t8, $ra
	move	$a2, $t1
	move	$a1, $t0
	move	$a0, $a3
	move	$gp, $t3
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	lw	$v1, -18($sp)
	lw	$a0, -19($sp)
	add	$at, $a0, $v1
	lw	$v1, 0($at)
	li	$a0, min_caml_diffuse_ray
	li	$a1, 0
	li	$a2, 0
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 0
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 0
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 1
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 1
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 2
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
beq_cont.30943:
	li	$v0, 1
	lw	$v1, -17($sp)
	lw	$a0, 2($v1)
	li	$a1, 0
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	sub	$at, $a1, $a0
	bgtz	$at, beq_else.30944
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	bne	$a0, $a1, beq_else.30946
	j	beq_cont.30947
beq_else.30946:
	lw	$a0, -5($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
beq_cont.30947:
	li	$v0, 2
	lw	$v1, -17($sp)
	lw	$a0, -4($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	j	beq_cont.30945
beq_else.30944:
beq_cont.30945:
	j	beq_cont.30941
beq_else.30940:
beq_cont.30941:
	j	beq_cont.30939
beq_else.30938:
	li	$v1, 0
	lw	$a1, -2($sp)
	lw	$a3, -1($sp)
	lw	$t0, -3($sp)
	move	$t8, $ra
	move	$t1, $v1
	move	$gp, $t0
	move	$t0, $a3
	move	$a3, $a0
	move	$a0, $v0
	move	$at, $a2
	move	$a2, $a1
	move	$a1, $at
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
beq_cont.30939:
	li	$v0, min_caml_rgb
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_int_of_float
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 255
	sub	$at, $v0, $v1
	bgtz	$at, beq_else.30948
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.30950
	j	beq_cont.30951
beq_else.30950:
	li	$v0, 0
beq_cont.30951:
	j	beq_cont.30949
beq_else.30948:
	li	$v0, 255
beq_cont.30949:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_print_int
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 32
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_print_char
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_int_of_float
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 255
	sub	$at, $v0, $v1
	bgtz	$at, beq_else.30952
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.30954
	j	beq_cont.30955
beq_else.30954:
	li	$v0, 0
beq_cont.30955:
	j	beq_cont.30953
beq_else.30952:
	li	$v0, 255
beq_cont.30953:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_print_int
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 32
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_print_char
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_int_of_float
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 255
	sub	$at, $v0, $v1
	bgtz	$at, beq_else.30956
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.30958
	j	beq_cont.30959
beq_else.30958:
	li	$v0, 0
beq_cont.30959:
	j	beq_cont.30957
beq_else.30956:
	li	$v0, 255
beq_cont.30957:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_print_int
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 10
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_print_char
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -16($sp)
	add	$v0, $v1, $v0
	lw	$v1, -7($sp)
	lw	$a0, -2($sp)
	lw	$a1, -8($sp)
	lw	$a2, -1($sp)
	lw	$a3, 0($sp)
	move	$t0, $a2
	move	$gp, $a3
	move	$a3, $a1
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	lw	$t8, 0($gp)
	jr	$t8
scan_line.3020:
	lw	$v0, 6($gp)
	lw	$v1, 5($gp)
	lw	$t1, 4($gp)
	lw	$t2, 3($gp)
	lw	$t3, 2($gp)
	lw	$t4, 1($gp)
	li	$t5, min_caml_image_size
	li	$t6, 1
	add	$at, $t5, $t6
	lw	$t5, 0($at)
	sub	$at, $t5, $a0
	bgtz	$at, ble_else.30960
	jr	$ra
ble_else.30960:
	li	$t5, min_caml_image_size
	li	$t6, 1
	add	$at, $t5, $t6
	lw	$t5, 0($at)
	li	$t6, 1
	sub	$t5, $t5, $t6
	sw	$gp, 0($sp)
	sw	$t2, -1($sp)
	sw	$t0, -2($sp)
	sw	$t1, -3($sp)
	sw	$a3, -4($sp)
	sw	$a1, -5($sp)
	sw	$v0, -6($sp)
	sw	$t3, -7($sp)
	sw	$t4, -8($sp)
	sw	$v1, -9($sp)
	sw	$a0, -10($sp)
	sw	$a2, -11($sp)
	sub	$at, $t5, $a0
	bgtz	$at, beq_else.30962
	j	beq_cont.30963
beq_else.30962:
	li	$t5, 1
	add	$t5, $a0, $t5
	li	$t6, min_caml_scan_pitch
	li	$t7, 0
	add	$at, $t6, $t7
	lwc1	$f2, 0($at)
	li	$t6, min_caml_image_center
	li	$t7, 1
	add	$at, $t6, $t7
	lw	$t6, 0($at)
	sub	$t5, $t5, $t6
	swc1	$f2, -12($sp)
	move	$t8, $ra
	move	$a0, $t5
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_float_of_int
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -12($sp)
	mul.s	$f2, $f3, $f2
	li	$v0, min_caml_screeny_dir
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f2, $f3
	li	$v0, min_caml_screenz_dir
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	add.s	$f3, $f3, $f4
	li	$v0, min_caml_screeny_dir
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	li	$v0, min_caml_screenz_dir
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	add.s	$f4, $f4, $f5
	li	$v0, min_caml_screeny_dir
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	mul.s	$f2, $f2, $f5
	li	$v0, min_caml_screenz_dir
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	add.s	$f2, $f2, $f5
	li	$v0, min_caml_image_size
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, 1
	sub	$v0, $v0, $v1
	lw	$v1, -4($sp)
	lw	$a0, -2($sp)
	lw	$a1, -1($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$gp, $a1
	move	$a1, $v0
	move	$a0, $v1
	mov.s	$f14, $f2
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
beq_cont.30963:
	li	$v0, 0
	li	$v1, min_caml_image_size
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.30964
	j	beq_cont.30965
beq_else.30964:
	li	$v1, min_caml_rgb
	lw	$a0, -11($sp)
	add	$at, $a0, $v0
	lw	$a1, 0($at)
	lw	$a1, 0($a1)
	li	$a2, 0
	li	$a3, 0
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$a2, 1
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$a2, 2
	li	$a3, 2
	add	$at, $a1, $a3
	lwc1	$f2, 0($at)
	add	$at, $v1, $a2
	swc1	$f2, 0($at)
	li	$v1, min_caml_image_size
	li	$a1, 1
	add	$at, $v1, $a1
	lw	$v1, 0($at)
	li	$a1, 1
	lw	$a2, -10($sp)
	add	$a1, $a2, $a1
	sub	$at, $v1, $a1
	bgtz	$at, beq_else.30966
	li	$v1, 0
	j	beq_cont.30967
beq_else.30966:
	li	$v1, 0
	sub	$at, $a2, $v1
	bgtz	$at, beq_else.30968
	li	$v1, 0
	j	beq_cont.30969
beq_else.30968:
	li	$v1, min_caml_image_size
	li	$a1, 0
	add	$at, $v1, $a1
	lw	$v1, 0($at)
	li	$a1, 1
	sub	$at, $v1, $a1
	bgtz	$at, beq_else.30970
	li	$v1, 0
	j	beq_cont.30971
beq_else.30970:
	li	$v1, 0
beq_cont.30971:
beq_cont.30969:
beq_cont.30967:
	li	$a1, 0
	bne	$v1, $a1, beq_else.30972
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	li	$v1, 0
	lw	$a1, 2($v0)
	li	$a3, 0
	add	$at, $a1, $v1
	lw	$a1, 0($at)
	sub	$at, $a3, $a1
	bgtz	$at, beq_else.30974
	lw	$a1, 3($v0)
	add	$at, $a1, $v1
	lw	$a1, 0($at)
	li	$a3, 0
	sw	$v0, -13($sp)
	bne	$a1, $a3, beq_else.30976
	j	beq_cont.30977
beq_else.30976:
	lw	$a1, 5($v0)
	lw	$a3, 7($v0)
	lw	$t0, 1($v0)
	lw	$t1, 4($v0)
	li	$t2, min_caml_diffuse_ray
	add	$at, $a1, $v1
	lw	$a1, 0($at)
	li	$t3, 0
	li	$t4, 0
	add	$at, $a1, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t3, 1
	li	$t4, 1
	add	$at, $a1, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	li	$t3, 2
	li	$t4, 2
	add	$at, $a1, $t4
	lwc1	$f2, 0($at)
	add	$at, $t2, $t3
	swc1	$f2, 0($at)
	lw	$a1, 6($v0)
	li	$t2, 0
	add	$at, $a1, $t2
	lw	$a1, 0($at)
	add	$at, $a3, $v1
	lw	$a3, 0($at)
	add	$at, $t0, $v1
	lw	$t0, 0($at)
	lw	$t2, -9($sp)
	sw	$v1, -14($sp)
	sw	$t1, -15($sp)
	move	$t8, $ra
	move	$a2, $t0
	move	$a0, $a1
	move	$gp, $t2
	move	$a1, $a3
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	lw	$v1, -14($sp)
	lw	$a0, -15($sp)
	add	$at, $a0, $v1
	lw	$v1, 0($at)
	li	$a0, min_caml_diffuse_ray
	li	$a1, 0
	li	$a2, 0
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 0
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 0
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 1
	li	$a2, 1
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 1
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$a2, 1
	add	$at, $a0, $a2
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
	li	$a1, 2
	li	$a2, 2
	add	$at, $v0, $a2
	lwc1	$f2, 0($at)
	li	$a2, 2
	add	$at, $v1, $a2
	lwc1	$f3, 0($at)
	li	$v1, 2
	add	$at, $a0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	add	$at, $v0, $a1
	swc1	$f2, 0($at)
beq_cont.30977:
	li	$v0, 1
	lw	$v1, -13($sp)
	lw	$a0, 2($v1)
	li	$a1, 0
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	sub	$at, $a1, $a0
	bgtz	$at, beq_else.30978
	lw	$a0, 3($v1)
	add	$at, $a0, $v0
	lw	$a0, 0($at)
	li	$a1, 0
	bne	$a0, $a1, beq_else.30980
	j	beq_cont.30981
beq_else.30980:
	lw	$a0, -8($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
beq_cont.30981:
	li	$v0, 2
	lw	$v1, -13($sp)
	lw	$a0, -7($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$gp, $a0
	move	$a0, $v1
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	j	beq_cont.30979
beq_else.30978:
beq_cont.30979:
	j	beq_cont.30975
beq_else.30974:
beq_cont.30975:
	j	beq_cont.30973
beq_else.30972:
	li	$v1, 0
	lw	$a1, -5($sp)
	lw	$a3, -4($sp)
	lw	$t0, -6($sp)
	move	$t8, $ra
	move	$t1, $v1
	move	$gp, $t0
	move	$t0, $a3
	move	$a3, $a0
	move	$a0, $v0
	move	$at, $a2
	move	$a2, $a1
	move	$a1, $at
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
beq_cont.30973:
	li	$v0, min_caml_rgb
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_int_of_float
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 255
	sub	$at, $v0, $v1
	bgtz	$at, beq_else.30982
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.30984
	j	beq_cont.30985
beq_else.30984:
	li	$v0, 0
beq_cont.30985:
	j	beq_cont.30983
beq_else.30982:
	li	$v0, 255
beq_cont.30983:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_int
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, 32
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_char
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_int_of_float
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 255
	sub	$at, $v0, $v1
	bgtz	$at, beq_else.30986
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.30988
	j	beq_cont.30989
beq_else.30988:
	li	$v0, 0
beq_cont.30989:
	j	beq_cont.30987
beq_else.30986:
	li	$v0, 255
beq_cont.30987:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_int
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, 32
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_char
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, min_caml_rgb
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f2, 0($at)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_int_of_float
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 255
	sub	$at, $v0, $v1
	bgtz	$at, beq_else.30990
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.30992
	j	beq_cont.30993
beq_else.30992:
	li	$v0, 0
beq_cont.30993:
	j	beq_cont.30991
beq_else.30990:
	li	$v0, 255
beq_cont.30991:
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_int
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, 10
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_print_char
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -10($sp)
	lw	$a0, -5($sp)
	lw	$a1, -11($sp)
	lw	$a2, -4($sp)
	lw	$a3, -3($sp)
	move	$t8, $ra
	move	$t0, $a2
	move	$gp, $a3
	move	$a3, $a1
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
beq_cont.30965:
	li	$v0, 1
	lw	$v1, -10($sp)
	add	$v0, $v1, $v0
	li	$v1, 2
	lw	$a0, -2($sp)
	add	$v1, $a0, $v1
	li	$a0, 5
	sub	$at, $a0, $v1
	bgtz	$at, beq_else.30994
	li	$a0, 5
	sub	$v1, $v1, $a0
	j	beq_cont.30995
beq_else.30994:
beq_cont.30995:
	li	$a0, min_caml_image_size
	li	$a1, 1
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	sub	$at, $a0, $v0
	bgtz	$at, ble_else.30996
	jr	$ra
ble_else.30996:
	li	$a0, min_caml_image_size
	li	$a1, 1
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	sw	$v1, -16($sp)
	sw	$v0, -17($sp)
	sub	$at, $a0, $v0
	bgtz	$at, beq_else.30998
	j	beq_cont.30999
beq_else.30998:
	li	$a0, 1
	add	$a0, $v0, $a0
	li	$a1, min_caml_scan_pitch
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f2, 0($at)
	li	$a1, min_caml_image_center
	li	$a2, 1
	add	$at, $a1, $a2
	lw	$a1, 0($at)
	sub	$a0, $a0, $a1
	swc1	$f2, -18($sp)
	move	$t8, $ra
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_float_of_int
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -18($sp)
	mul.s	$f2, $f3, $f2
	li	$v0, min_caml_screeny_dir
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f2, $f3
	li	$v0, min_caml_screenz_dir
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	add.s	$f3, $f3, $f4
	li	$v0, min_caml_screeny_dir
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	li	$v0, min_caml_screenz_dir
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	add.s	$f4, $f4, $f5
	li	$v0, min_caml_screeny_dir
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	mul.s	$f2, $f2, $f5
	li	$v0, min_caml_screenz_dir
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	add.s	$f2, $f2, $f5
	li	$v0, min_caml_image_size
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, 1
	sub	$v0, $v0, $v1
	lw	$v1, -5($sp)
	lw	$a0, -16($sp)
	lw	$a1, -1($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$gp, $a1
	move	$a1, $v0
	move	$a0, $v1
	mov.s	$f14, $f2
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
beq_cont.30999:
	li	$v0, 0
	lw	$v1, -17($sp)
	lw	$a0, -11($sp)
	lw	$a1, -4($sp)
	lw	$a2, -5($sp)
	lw	$a3, -3($sp)
	move	$t8, $ra
	move	$t0, $a2
	move	$gp, $a3
	move	$a3, $a1
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -17($sp)
	add	$v0, $v1, $v0
	li	$v1, 2
	lw	$a0, -16($sp)
	add	$v1, $a0, $v1
	li	$a0, 5
	sub	$at, $a0, $v1
	bgtz	$at, beq_else.31000
	li	$a0, 5
	sub	$v1, $v1, $a0
	j	beq_cont.31001
beq_else.31000:
beq_cont.31001:
	lw	$a0, -4($sp)
	lw	$a1, -5($sp)
	lw	$a2, -11($sp)
	lw	$a3, 0($sp)
	move	$t0, $v1
	move	$gp, $a3
	move	$a3, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v0
	lw	$t8, 0($gp)
	jr	$t8
create_pixel.3028:
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, 0($sp)
	addi	$sp, $sp, -1
	jal	min_caml_create_float_array
	addi	$sp, $sp, 1
	lw	$t8, 0($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, 0($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	min_caml_create_float_array
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	min_caml_create_array
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -1($sp)
	sw	$v0, -2($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_create_float_array
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	lw	$v1, -1($sp)
	lw	$a0, -2($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -3($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_create_float_array
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	lw	$v1, -3($sp)
	lw	$a0, -2($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -4($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_create_float_array
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	lw	$v1, -4($sp)
	lw	$a0, -2($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -5($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_create_float_array
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	lw	$v1, -5($sp)
	lw	$a0, -2($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 5
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_create_array
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v1, 5
	li	$a0, 0
	sw	$v0, -6($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_create_array
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -7($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_create_float_array
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_create_array
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -8($sp)
	sw	$v0, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_create_float_array
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	lw	$v1, -8($sp)
	lw	$a0, -9($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -10($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_create_float_array
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	lw	$v1, -10($sp)
	lw	$a0, -9($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -11($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_create_float_array
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	lw	$v1, -11($sp)
	lw	$a0, -9($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -12($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_create_float_array
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	lw	$v1, -12($sp)
	lw	$a0, -9($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_create_float_array
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_create_array
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -13($sp)
	sw	$v0, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_create_float_array
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	lw	$v1, -13($sp)
	lw	$a0, -14($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -15($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_create_float_array
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	lw	$v1, -15($sp)
	lw	$a0, -14($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -16($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_create_float_array
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	lw	$v1, -16($sp)
	lw	$a0, -14($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -17($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_create_float_array
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	lw	$v1, -17($sp)
	lw	$a0, -14($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_create_array
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -18($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_create_float_array
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_create_array
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -19($sp)
	sw	$v0, -20($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_create_float_array
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	lw	$v1, -19($sp)
	lw	$a0, -20($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -21($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_create_float_array
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	lw	$v1, -21($sp)
	lw	$a0, -20($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -22($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_create_float_array
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	lw	$v1, -22($sp)
	lw	$a0, -20($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -23($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -24($sp)
	addi	$sp, $sp, -25
	jal	min_caml_create_float_array
	addi	$sp, $sp, 25
	lw	$t8, -24($sp)
	move	$ra, $t8
	lw	$v1, -23($sp)
	lw	$a0, -20($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	move	$v0, $hp
	addi	$hp, $hp, 8
	sw	$a0, 7($v0)
	lw	$v1, -18($sp)
	sw	$v1, 6($v0)
	lw	$v1, -14($sp)
	sw	$v1, 5($v0)
	lw	$v1, -9($sp)
	sw	$v1, 4($v0)
	lw	$v1, -7($sp)
	sw	$v1, 3($v0)
	lw	$v1, -6($sp)
	sw	$v1, 2($v0)
	lw	$v1, -2($sp)
	sw	$v1, 1($v0)
	lw	$v1, 0($sp)
	sw	$v1, 0($v0)
	jr	$ra
init_line_elements.3030:
	li	$v0, 0
	sub	$at, $v0, $a1
	bgtz	$at, ble_else.31002
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	sw	$a1, 0($sp)
	sw	$a0, -1($sp)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_create_float_array
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -2($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_create_float_array
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_create_array
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -3($sp)
	sw	$v0, -4($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_create_float_array
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	lw	$v1, -3($sp)
	lw	$a0, -4($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -5($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_create_float_array
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	lw	$v1, -5($sp)
	lw	$a0, -4($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -6($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_create_float_array
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	lw	$v1, -6($sp)
	lw	$a0, -4($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -7($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_create_float_array
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	lw	$v1, -7($sp)
	lw	$a0, -4($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 5
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_create_array
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, 5
	li	$a0, 0
	sw	$v0, -8($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_create_array
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -9($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_create_float_array
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_create_array
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -10($sp)
	sw	$v0, -11($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_create_float_array
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	lw	$v1, -10($sp)
	lw	$a0, -11($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -12($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_create_float_array
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	lw	$v1, -12($sp)
	lw	$a0, -11($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -13($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_create_float_array
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	lw	$v1, -13($sp)
	lw	$a0, -11($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -14($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_create_float_array
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	lw	$v1, -14($sp)
	lw	$a0, -11($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_create_float_array
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_create_array
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -15($sp)
	sw	$v0, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_create_float_array
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	lw	$v1, -15($sp)
	lw	$a0, -16($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -17($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_create_float_array
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	lw	$v1, -17($sp)
	lw	$a0, -16($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -18($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_create_float_array
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	lw	$v1, -18($sp)
	lw	$a0, -16($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -19($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_create_float_array
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	lw	$v1, -19($sp)
	lw	$a0, -16($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_create_array
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -20($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_create_float_array
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_create_array
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -21($sp)
	sw	$v0, -22($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_create_float_array
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	lw	$v1, -21($sp)
	lw	$a0, -22($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -23($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -24($sp)
	addi	$sp, $sp, -25
	jal	min_caml_create_float_array
	addi	$sp, $sp, 25
	lw	$t8, -24($sp)
	move	$ra, $t8
	lw	$v1, -23($sp)
	lw	$a0, -22($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -24($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_create_float_array
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	lw	$v1, -24($sp)
	lw	$a0, -22($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -25($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -26($sp)
	addi	$sp, $sp, -27
	jal	min_caml_create_float_array
	addi	$sp, $sp, 27
	lw	$t8, -26($sp)
	move	$ra, $t8
	lw	$v1, -25($sp)
	lw	$a0, -22($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	move	$v0, $hp
	addi	$hp, $hp, 8
	sw	$a0, 7($v0)
	lw	$v1, -20($sp)
	sw	$v1, 6($v0)
	lw	$v1, -16($sp)
	sw	$v1, 5($v0)
	lw	$v1, -11($sp)
	sw	$v1, 4($v0)
	lw	$v1, -9($sp)
	sw	$v1, 3($v0)
	lw	$v1, -8($sp)
	sw	$v1, 2($v0)
	lw	$v1, -4($sp)
	sw	$v1, 1($v0)
	lw	$v1, -2($sp)
	sw	$v1, 0($v0)
	lw	$v1, 0($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31003
	sw	$v0, -26($sp)
	move	$t8, $ra
	sw	$t8, -27($sp)
	addi	$sp, $sp, -28
	jal	create_pixel.3028
	addi	$sp, $sp, 28
	lw	$t8, -27($sp)
	move	$ra, $t8
	lw	$v1, -26($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31004
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -27($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_create_float_array
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -28($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_create_float_array
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_create_array
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -29($sp)
	sw	$v0, -30($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	jal	min_caml_create_float_array
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	lw	$v1, -29($sp)
	lw	$a0, -30($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -31($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_create_float_array
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	move	$ra, $t8
	lw	$v1, -31($sp)
	lw	$a0, -30($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -32($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_create_float_array
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	lw	$v1, -32($sp)
	lw	$a0, -30($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -33($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_create_float_array
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	lw	$v1, -33($sp)
	lw	$a0, -30($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 5
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_create_array
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	li	$v1, 5
	li	$a0, 0
	sw	$v0, -34($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -35($sp)
	addi	$sp, $sp, -36
	jal	min_caml_create_array
	addi	$sp, $sp, 36
	lw	$t8, -35($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -35($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	min_caml_create_float_array
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	min_caml_create_array
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -36($sp)
	sw	$v0, -37($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	min_caml_create_float_array
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	lw	$v1, -36($sp)
	lw	$a0, -37($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -38($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_create_float_array
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	lw	$v1, -38($sp)
	lw	$a0, -37($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -39($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -40($sp)
	addi	$sp, $sp, -41
	jal	min_caml_create_float_array
	addi	$sp, $sp, 41
	lw	$t8, -40($sp)
	move	$ra, $t8
	lw	$v1, -39($sp)
	lw	$a0, -37($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -40($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -41($sp)
	addi	$sp, $sp, -42
	jal	min_caml_create_float_array
	addi	$sp, $sp, 42
	lw	$t8, -41($sp)
	move	$ra, $t8
	lw	$v1, -40($sp)
	lw	$a0, -37($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -41($sp)
	addi	$sp, $sp, -42
	jal	min_caml_create_float_array
	addi	$sp, $sp, 42
	lw	$t8, -41($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -41($sp)
	addi	$sp, $sp, -42
	jal	min_caml_create_array
	addi	$sp, $sp, 42
	lw	$t8, -41($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -41($sp)
	sw	$v0, -42($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -43($sp)
	addi	$sp, $sp, -44
	jal	min_caml_create_float_array
	addi	$sp, $sp, 44
	lw	$t8, -43($sp)
	move	$ra, $t8
	lw	$v1, -41($sp)
	lw	$a0, -42($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -43($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -44($sp)
	addi	$sp, $sp, -45
	jal	min_caml_create_float_array
	addi	$sp, $sp, 45
	lw	$t8, -44($sp)
	move	$ra, $t8
	lw	$v1, -43($sp)
	lw	$a0, -42($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -44($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -45($sp)
	addi	$sp, $sp, -46
	jal	min_caml_create_float_array
	addi	$sp, $sp, 46
	lw	$t8, -45($sp)
	move	$ra, $t8
	lw	$v1, -44($sp)
	lw	$a0, -42($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -45($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -46($sp)
	addi	$sp, $sp, -47
	jal	min_caml_create_float_array
	addi	$sp, $sp, 47
	lw	$t8, -46($sp)
	move	$ra, $t8
	lw	$v1, -45($sp)
	lw	$a0, -42($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -46($sp)
	addi	$sp, $sp, -47
	jal	min_caml_create_array
	addi	$sp, $sp, 47
	lw	$t8, -46($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -46($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -47($sp)
	addi	$sp, $sp, -48
	jal	min_caml_create_float_array
	addi	$sp, $sp, 48
	lw	$t8, -47($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -47($sp)
	addi	$sp, $sp, -48
	jal	min_caml_create_array
	addi	$sp, $sp, 48
	lw	$t8, -47($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -47($sp)
	sw	$v0, -48($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -49($sp)
	addi	$sp, $sp, -50
	jal	min_caml_create_float_array
	addi	$sp, $sp, 50
	lw	$t8, -49($sp)
	move	$ra, $t8
	lw	$v1, -47($sp)
	lw	$a0, -48($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -49($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -50($sp)
	addi	$sp, $sp, -51
	jal	min_caml_create_float_array
	addi	$sp, $sp, 51
	lw	$t8, -50($sp)
	move	$ra, $t8
	lw	$v1, -49($sp)
	lw	$a0, -48($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -50($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -51($sp)
	addi	$sp, $sp, -52
	jal	min_caml_create_float_array
	addi	$sp, $sp, 52
	lw	$t8, -51($sp)
	move	$ra, $t8
	lw	$v1, -50($sp)
	lw	$a0, -48($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -51($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -52($sp)
	addi	$sp, $sp, -53
	jal	min_caml_create_float_array
	addi	$sp, $sp, 53
	lw	$t8, -52($sp)
	move	$ra, $t8
	lw	$v1, -51($sp)
	lw	$a0, -48($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	move	$v0, $hp
	addi	$hp, $hp, 8
	sw	$a0, 7($v0)
	lw	$v1, -46($sp)
	sw	$v1, 6($v0)
	lw	$v1, -42($sp)
	sw	$v1, 5($v0)
	lw	$v1, -37($sp)
	sw	$v1, 4($v0)
	lw	$v1, -35($sp)
	sw	$v1, 3($v0)
	lw	$v1, -34($sp)
	sw	$v1, 2($v0)
	lw	$v1, -30($sp)
	sw	$v1, 1($v0)
	lw	$v1, -28($sp)
	sw	$v1, 0($v0)
	lw	$v1, -27($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31005
	sw	$v0, -52($sp)
	move	$t8, $ra
	sw	$t8, -53($sp)
	addi	$sp, $sp, -54
	jal	create_pixel.3028
	addi	$sp, $sp, 54
	lw	$t8, -53($sp)
	move	$ra, $t8
	lw	$v1, -52($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	move	$a1, $v0
	j	init_line_elements.3030
ble_else.31005:
	move	$v0, $a0
	jr	$ra
ble_else.31004:
	move	$v0, $a0
	jr	$ra
ble_else.31003:
	move	$v0, $a0
	jr	$ra
ble_else.31002:
	move	$v0, $a0
	jr	$ra
calc_dirvec.3040:
	li	$v0, 5
	sub	$at, $v0, $a0
	bgtz	$at, ble_else.31006
	sw	$a2, 0($sp)
	sw	$a1, -1($sp)
	swc1	$f12, -2($sp)
	swc1	$f13, -3($sp)
	move	$t8, $ra
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_fsqr
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -3($sp)
	swc1	$f2, -4($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_fsqr
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -4($sp)
	add.s	$f2, $f3, $f2
	lwc1	$f3, 0(l.22725)
	add.s	$f2, $f2, $f3
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_sqrt
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -2($sp)
	inv.s	$f1, $f2
	mul.s	$f3, $f3, $f1
	lwc1	$f4, -3($sp)
	inv.s	$f1, $f2
	mul.s	$f4, $f4, $f1
	lwc1	$f5, 0(l.22725)
	inv.s	$f1, $f2
	mul.s	$f2, $f5, $f1
	li	$v0, min_caml_dirvecs
	lw	$v1, -1($sp)
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	lw	$v1, 0($sp)
	add	$at, $v0, $v1
	lw	$a0, 0($at)
	lw	$a0, 0($a0)
	li	$a1, 0
	add	$at, $a0, $a1
	swc1	$f3, 0($at)
	li	$a1, 1
	add	$at, $a0, $a1
	swc1	$f4, 0($at)
	li	$a1, 2
	add	$at, $a0, $a1
	swc1	$f2, 0($at)
	li	$a0, 40
	add	$a0, $v1, $a0
	add	$at, $v0, $a0
	lw	$a0, 0($at)
	lw	$a0, 0($a0)
	swc1	$f4, -5($sp)
	sw	$v0, -6($sp)
	swc1	$f2, -7($sp)
	sw	$a0, -8($sp)
	swc1	$f3, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_fneg
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 0
	lw	$v1, -8($sp)
	lwc1	$f3, -9($sp)
	add	$at, $v1, $v0
	swc1	$f3, 0($at)
	li	$v0, 1
	lwc1	$f4, -7($sp)
	add	$at, $v1, $v0
	swc1	$f4, 0($at)
	li	$v0, 2
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 80
	lw	$v1, 0($sp)
	add	$v0, $v1, $v0
	lw	$a0, -6($sp)
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	lw	$v0, 0($v0)
	sw	$v0, -10($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_fneg
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -5($sp)
	swc1	$f2, -11($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_fneg
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 0
	lw	$v1, -10($sp)
	lwc1	$f3, -7($sp)
	add	$at, $v1, $v0
	swc1	$f3, 0($at)
	li	$v0, 1
	lwc1	$f4, -11($sp)
	add	$at, $v1, $v0
	swc1	$f4, 0($at)
	li	$v0, 2
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	lw	$v1, 0($sp)
	add	$v0, $v1, $v0
	lw	$a0, -6($sp)
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	lw	$v0, 0($v0)
	lwc1	$f2, -9($sp)
	sw	$v0, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_fneg
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -5($sp)
	swc1	$f2, -13($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_fneg
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -7($sp)
	swc1	$f2, -14($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_fneg
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 0
	lw	$v1, -12($sp)
	lwc1	$f3, -13($sp)
	add	$at, $v1, $v0
	swc1	$f3, 0($at)
	li	$v0, 1
	lwc1	$f3, -14($sp)
	add	$at, $v1, $v0
	swc1	$f3, 0($at)
	li	$v0, 2
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 41
	lw	$v1, 0($sp)
	add	$v0, $v1, $v0
	lw	$a0, -6($sp)
	add	$at, $a0, $v0
	lw	$v0, 0($at)
	lw	$v0, 0($v0)
	lwc1	$f2, -9($sp)
	sw	$v0, -15($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_fneg
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -7($sp)
	swc1	$f2, -16($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_fneg
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 0
	lw	$v1, -15($sp)
	lwc1	$f3, -16($sp)
	add	$at, $v1, $v0
	swc1	$f3, 0($at)
	li	$v0, 1
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	lwc1	$f2, -5($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 81
	lw	$v1, 0($sp)
	add	$v0, $v1, $v0
	lw	$v1, -6($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	lw	$v0, 0($v0)
	lwc1	$f3, -7($sp)
	sw	$v0, -17($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_fneg
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 0
	lw	$v1, -17($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 1
	lwc1	$f2, -9($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, 2
	lwc1	$f2, -5($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	jr	$ra
ble_else.31006:
	mul.s	$f2, $f13, $f13
	lwc1	$f3, 0(l.24067)
	add.s	$f2, $f2, $f3
	sw	$a2, 0($sp)
	sw	$a1, -1($sp)
	swc1	$f15, -18($sp)
	sw	$a0, -19($sp)
	swc1	$f14, -20($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_sqrt
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.22725)
	inv.s	$f1, $f2
	mul.s	$f3, $f3, $f1
	swc1	$f2, -21($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_atan
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -20($sp)
	mul.s	$f2, $f2, $f3
	swc1	$f2, -22($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_sin
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -22($sp)
	swc1	$f2, -23($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -24($sp)
	addi	$sp, $sp, -25
	jal	min_caml_cos
	addi	$sp, $sp, 25
	lw	$t8, -24($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -23($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lwc1	$f3, -21($sp)
	mul.s	$f2, $f2, $f3
	li	$v0, 1
	lw	$v1, -19($sp)
	add	$v0, $v1, $v0
	mul.s	$f3, $f2, $f2
	lwc1	$f4, 0(l.24067)
	add.s	$f3, $f3, $f4
	swc1	$f2, -24($sp)
	sw	$v0, -25($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -26($sp)
	addi	$sp, $sp, -27
	jal	min_caml_sqrt
	addi	$sp, $sp, 27
	lw	$t8, -26($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.22725)
	inv.s	$f1, $f2
	mul.s	$f3, $f3, $f1
	swc1	$f2, -26($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -27($sp)
	addi	$sp, $sp, -28
	jal	min_caml_atan
	addi	$sp, $sp, 28
	lw	$t8, -27($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -18($sp)
	mul.s	$f2, $f2, $f3
	swc1	$f2, -27($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_sin
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -27($sp)
	swc1	$f2, -28($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_cos
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -28($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lwc1	$f3, -26($sp)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, -24($sp)
	lwc1	$f4, -20($sp)
	lwc1	$f5, -18($sp)
	lw	$v0, -25($sp)
	lw	$v1, -1($sp)
	lw	$a0, 0($sp)
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f15, $f5
	mov.s	$f14, $f4
	mov.s	$f13, $f2
	mov.s	$f12, $f3
	j	calc_dirvec.3040
calc_dirvecs.3048:
	li	$v0, 0
	sub	$at, $v0, $a0
	bgtz	$at, ble_else.31008
	sw	$a0, 0($sp)
	swc1	$f12, -1($sp)
	sw	$a2, -2($sp)
	sw	$a1, -3($sp)
	move	$t8, $ra
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_float_of_int
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.25148)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.25149)
	sub.s	$f2, $f2, $f3
	li	$v0, 0
	lwc1	$f3, 0(l.22664)
	lwc1	$f4, 0(l.22664)
	lwc1	$f5, -1($sp)
	lw	$v1, -3($sp)
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f15, $f5
	mov.s	$f14, $f2
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	calc_dirvec.3040
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	lw	$v0, 0($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_float_of_int
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.25148)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.24067)
	add.s	$f2, $f2, $f3
	li	$v0, 0
	lwc1	$f3, 0(l.22664)
	lwc1	$f4, 0(l.22664)
	li	$v1, 2
	lw	$a0, -2($sp)
	add	$v1, $a0, $v1
	lwc1	$f5, -1($sp)
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$a2, $v1
	move	$a0, $v0
	mov.s	$f15, $f5
	mov.s	$f14, $f2
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	calc_dirvec.3040
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, 0($sp)
	sub	$v0, $v1, $v0
	li	$v1, 1
	lw	$a0, -3($sp)
	add	$v1, $a0, $v1
	li	$a0, 5
	sub	$at, $a0, $v1
	bgtz	$at, beq_else.31009
	li	$a0, 5
	sub	$v1, $v1, $a0
	j	beq_cont.31010
beq_else.31009:
beq_cont.31010:
	li	$a0, 0
	sub	$at, $a0, $v0
	bgtz	$at, ble_else.31011
	sw	$v0, -4($sp)
	sw	$v1, -5($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_float_of_int
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.25148)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.25149)
	sub.s	$f2, $f2, $f3
	li	$v0, 0
	lwc1	$f3, 0(l.22664)
	lwc1	$f4, 0(l.22664)
	lwc1	$f5, -1($sp)
	lw	$v1, -5($sp)
	lw	$a0, -2($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f15, $f5
	mov.s	$f14, $f2
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	calc_dirvec.3040
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	lw	$v0, -4($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_float_of_int
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.25148)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.24067)
	add.s	$f2, $f2, $f3
	li	$v0, 0
	lwc1	$f3, 0(l.22664)
	lwc1	$f4, 0(l.22664)
	li	$v1, 2
	lw	$a0, -2($sp)
	add	$v1, $a0, $v1
	lwc1	$f5, -1($sp)
	lw	$a1, -5($sp)
	move	$t8, $ra
	move	$a2, $v1
	move	$a0, $v0
	mov.s	$f15, $f5
	mov.s	$f14, $f2
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	calc_dirvec.3040
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -4($sp)
	sub	$v0, $v1, $v0
	li	$v1, 1
	lw	$a0, -5($sp)
	add	$v1, $a0, $v1
	li	$a0, 5
	sub	$at, $a0, $v1
	bgtz	$at, beq_else.31012
	li	$a0, 5
	sub	$v1, $v1, $a0
	j	beq_cont.31013
beq_else.31012:
beq_cont.31013:
	lwc1	$f2, -1($sp)
	lw	$a0, -2($sp)
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f12, $f2
	j	calc_dirvecs.3048
ble_else.31011:
	jr	$ra
ble_else.31008:
	jr	$ra
calc_dirvec_rows.3053:
	li	$v0, 0
	sub	$at, $v0, $a0
	bgtz	$at, ble_else.31016
	sw	$a0, 0($sp)
	sw	$a2, -1($sp)
	sw	$a1, -2($sp)
	move	$t8, $ra
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_float_of_int
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.25148)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.25149)
	sub.s	$f2, $f2, $f3
	li	$v0, 4
	sw	$v0, -3($sp)
	swc1	$f2, -4($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_float_of_int
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.25148)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.25149)
	sub.s	$f2, $f2, $f3
	li	$v0, 0
	lwc1	$f3, 0(l.22664)
	lwc1	$f4, 0(l.22664)
	lwc1	$f5, -4($sp)
	lw	$v1, -2($sp)
	lw	$a0, -1($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f15, $f5
	mov.s	$f14, $f2
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	calc_dirvec.3040
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	lw	$v0, -3($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_float_of_int
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.25148)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.24067)
	add.s	$f2, $f2, $f3
	li	$v0, 0
	lwc1	$f3, 0(l.22664)
	lwc1	$f4, 0(l.22664)
	li	$v1, 2
	lw	$a0, -1($sp)
	add	$v1, $a0, $v1
	lwc1	$f5, -4($sp)
	lw	$a1, -2($sp)
	move	$t8, $ra
	move	$a2, $v1
	move	$a0, $v0
	mov.s	$f15, $f5
	mov.s	$f14, $f2
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	calc_dirvec.3040
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v0, 3
	li	$v1, 1
	lw	$a0, -2($sp)
	add	$v1, $a0, $v1
	li	$a1, 5
	sub	$at, $a1, $v1
	bgtz	$at, beq_else.31017
	li	$a1, 5
	sub	$v1, $v1, $a1
	j	beq_cont.31018
beq_else.31017:
beq_cont.31018:
	lwc1	$f2, -4($sp)
	lw	$a1, -1($sp)
	move	$t8, $ra
	move	$a2, $a1
	move	$a0, $v0
	move	$a1, $v1
	mov.s	$f12, $f2
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	calc_dirvecs.3048
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, 0($sp)
	sub	$v0, $v1, $v0
	li	$v1, 2
	lw	$a0, -2($sp)
	add	$v1, $a0, $v1
	li	$a0, 5
	sub	$at, $a0, $v1
	bgtz	$at, beq_else.31019
	li	$a0, 5
	sub	$v1, $v1, $a0
	j	beq_cont.31020
beq_else.31019:
beq_cont.31020:
	li	$a0, 4
	lw	$a1, -1($sp)
	add	$a0, $a1, $a0
	li	$a1, 0
	sub	$at, $a1, $v0
	bgtz	$at, ble_else.31021
	sw	$v0, -5($sp)
	sw	$a0, -6($sp)
	sw	$v1, -7($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_float_of_int
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.25148)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.25149)
	sub.s	$f2, $f2, $f3
	li	$v0, 4
	lw	$v1, -7($sp)
	lw	$a0, -6($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	calc_dirvecs.3048
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -5($sp)
	sub	$v0, $v1, $v0
	li	$v1, 2
	lw	$a0, -7($sp)
	add	$v1, $a0, $v1
	li	$a0, 5
	sub	$at, $a0, $v1
	bgtz	$at, beq_else.31022
	li	$a0, 5
	sub	$v1, $v1, $a0
	j	beq_cont.31023
beq_else.31022:
beq_cont.31023:
	li	$a0, 4
	lw	$a1, -6($sp)
	add	$a0, $a1, $a0
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	j	calc_dirvec_rows.3053
ble_else.31021:
	jr	$ra
ble_else.31016:
	jr	$ra
create_dirvec_elements.3059:
	li	$v0, 0
	sub	$at, $v0, $a1
	bgtz	$at, ble_else.31026
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	sw	$a1, 0($sp)
	sw	$a0, -1($sp)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_create_float_array
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -2($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_create_array
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -2($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, 0($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31027
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -3($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_create_float_array
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -4($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_create_array
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -4($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -3($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31028
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -5($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_create_float_array
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -6($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_create_array
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -6($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -5($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31029
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -7($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_create_float_array
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -8($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_create_array
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -8($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -7($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31030
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -9($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_create_float_array
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -10($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_create_array
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -10($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -9($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31031
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -11($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_create_float_array
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -12($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_create_array
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -12($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -11($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31032
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -13($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_create_float_array
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -14($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_create_array
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -14($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -13($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31033
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -15($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_create_float_array
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -16($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_create_array
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -16($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -15($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	move	$a1, $v0
	j	create_dirvec_elements.3059
ble_else.31033:
	jr	$ra
ble_else.31032:
	jr	$ra
ble_else.31031:
	jr	$ra
ble_else.31030:
	jr	$ra
ble_else.31029:
	jr	$ra
ble_else.31028:
	jr	$ra
ble_else.31027:
	jr	$ra
ble_else.31026:
	jr	$ra
create_dirvecs.3062:
	li	$v0, 0
	sub	$at, $v0, $a0
	bgtz	$at, ble_else.31042
	li	$v0, min_caml_dirvecs
	li	$v1, 120
	li	$a1, 3
	lwc1	$f2, 0(l.22664)
	sw	$a0, 0($sp)
	sw	$v0, -1($sp)
	sw	$v1, -2($sp)
	move	$t8, $ra
	move	$a0, $a1
	mov.s	$f12, $f2
	sw	$t8, -3($sp)
	addi	$sp, $sp, -4
	jal	min_caml_create_float_array
	addi	$sp, $sp, 4
	lw	$t8, -3($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -3($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_create_array
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -3($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -2($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -4($sp)
	addi	$sp, $sp, -5
	jal	min_caml_create_array
	addi	$sp, $sp, 5
	lw	$t8, -4($sp)
	move	$ra, $t8
	lw	$v1, 0($sp)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, min_caml_dirvecs
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$a0, 118
	li	$a1, 3
	lwc1	$f2, 0(l.22664)
	sw	$a0, -4($sp)
	sw	$v0, -5($sp)
	move	$t8, $ra
	move	$a0, $a1
	mov.s	$f12, $f2
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_create_float_array
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -6($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_create_array
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -6($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -4($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 117
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -7($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	min_caml_create_float_array
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -8($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_create_array
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -8($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -7($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 116
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -9($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_create_float_array
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -10($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_create_array
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -10($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -9($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 115
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -11($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	min_caml_create_float_array
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -12($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_create_array
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -12($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -11($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 114
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -13($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_create_float_array
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -14($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_create_array
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -14($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -13($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 113
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -15($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_create_float_array
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -16($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_create_array
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -16($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -15($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 112
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -17($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_create_float_array
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -18($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	min_caml_create_array
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -18($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -17($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 111
	move	$t8, $ra
	move	$a1, $v0
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	create_dirvec_elements.3059
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, 0($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31043
	li	$v1, min_caml_dirvecs
	li	$a0, 120
	li	$a1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -19($sp)
	sw	$v1, -20($sp)
	sw	$a0, -21($sp)
	move	$t8, $ra
	move	$a0, $a1
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_create_float_array
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -22($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_create_array
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -22($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -21($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_create_array
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	lw	$v1, -19($sp)
	lw	$a0, -20($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, min_caml_dirvecs
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$a0, 118
	li	$a1, 3
	lwc1	$f2, 0(l.22664)
	sw	$a0, -23($sp)
	sw	$v0, -24($sp)
	move	$t8, $ra
	move	$a0, $a1
	mov.s	$f12, $f2
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_create_float_array
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -25($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -26($sp)
	addi	$sp, $sp, -27
	jal	min_caml_create_array
	addi	$sp, $sp, 27
	lw	$t8, -26($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -25($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -23($sp)
	lw	$a0, -24($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 117
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -26($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -27($sp)
	addi	$sp, $sp, -28
	jal	min_caml_create_float_array
	addi	$sp, $sp, 28
	lw	$t8, -27($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -27($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_create_array
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -27($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -26($sp)
	lw	$a0, -24($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 116
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -28($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_create_float_array
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -29($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -30($sp)
	addi	$sp, $sp, -31
	jal	min_caml_create_array
	addi	$sp, $sp, 31
	lw	$t8, -30($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -29($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -28($sp)
	lw	$a0, -24($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 115
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -30($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	jal	min_caml_create_float_array
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -31($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_create_array
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -31($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -30($sp)
	lw	$a0, -24($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 114
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -32($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_create_float_array
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -33($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_create_array
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -33($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -32($sp)
	lw	$a0, -24($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 113
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -34($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -35($sp)
	addi	$sp, $sp, -36
	jal	min_caml_create_float_array
	addi	$sp, $sp, 36
	lw	$t8, -35($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -35($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	min_caml_create_array
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -35($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -34($sp)
	lw	$a0, -24($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 112
	move	$t8, $ra
	move	$a1, $v0
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	create_dirvec_elements.3059
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -19($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31044
	li	$v1, min_caml_dirvecs
	li	$a0, 120
	li	$a1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -36($sp)
	sw	$v1, -37($sp)
	sw	$a0, -38($sp)
	move	$t8, $ra
	move	$a0, $a1
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_create_float_array
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -39($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -40($sp)
	addi	$sp, $sp, -41
	jal	min_caml_create_array
	addi	$sp, $sp, 41
	lw	$t8, -40($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -39($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -38($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -40($sp)
	addi	$sp, $sp, -41
	jal	min_caml_create_array
	addi	$sp, $sp, 41
	lw	$t8, -40($sp)
	move	$ra, $t8
	lw	$v1, -36($sp)
	lw	$a0, -37($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, min_caml_dirvecs
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$a0, 118
	li	$a1, 3
	lwc1	$f2, 0(l.22664)
	sw	$a0, -40($sp)
	sw	$v0, -41($sp)
	move	$t8, $ra
	move	$a0, $a1
	mov.s	$f12, $f2
	sw	$t8, -42($sp)
	addi	$sp, $sp, -43
	jal	min_caml_create_float_array
	addi	$sp, $sp, 43
	lw	$t8, -42($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -42($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -43($sp)
	addi	$sp, $sp, -44
	jal	min_caml_create_array
	addi	$sp, $sp, 44
	lw	$t8, -43($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -42($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -40($sp)
	lw	$a0, -41($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 117
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -43($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -44($sp)
	addi	$sp, $sp, -45
	jal	min_caml_create_float_array
	addi	$sp, $sp, 45
	lw	$t8, -44($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -44($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -45($sp)
	addi	$sp, $sp, -46
	jal	min_caml_create_array
	addi	$sp, $sp, 46
	lw	$t8, -45($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -44($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -43($sp)
	lw	$a0, -41($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 116
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -45($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -46($sp)
	addi	$sp, $sp, -47
	jal	min_caml_create_float_array
	addi	$sp, $sp, 47
	lw	$t8, -46($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -46($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -47($sp)
	addi	$sp, $sp, -48
	jal	min_caml_create_array
	addi	$sp, $sp, 48
	lw	$t8, -47($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -46($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -45($sp)
	lw	$a0, -41($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 115
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -47($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -48($sp)
	addi	$sp, $sp, -49
	jal	min_caml_create_float_array
	addi	$sp, $sp, 49
	lw	$t8, -48($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -48($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -49($sp)
	addi	$sp, $sp, -50
	jal	min_caml_create_array
	addi	$sp, $sp, 50
	lw	$t8, -49($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -48($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -47($sp)
	lw	$a0, -41($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 114
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -49($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -50($sp)
	addi	$sp, $sp, -51
	jal	min_caml_create_float_array
	addi	$sp, $sp, 51
	lw	$t8, -50($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -50($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -51($sp)
	addi	$sp, $sp, -52
	jal	min_caml_create_array
	addi	$sp, $sp, 52
	lw	$t8, -51($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -50($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -49($sp)
	lw	$a0, -41($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 113
	move	$t8, $ra
	move	$a1, $v0
	sw	$t8, -51($sp)
	addi	$sp, $sp, -52
	jal	create_dirvec_elements.3059
	addi	$sp, $sp, 52
	lw	$t8, -51($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -36($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31045
	li	$v1, min_caml_dirvecs
	li	$a0, 120
	li	$a1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -51($sp)
	sw	$v1, -52($sp)
	sw	$a0, -53($sp)
	move	$t8, $ra
	move	$a0, $a1
	mov.s	$f12, $f2
	sw	$t8, -54($sp)
	addi	$sp, $sp, -55
	jal	min_caml_create_float_array
	addi	$sp, $sp, 55
	lw	$t8, -54($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -54($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -55($sp)
	addi	$sp, $sp, -56
	jal	min_caml_create_array
	addi	$sp, $sp, 56
	lw	$t8, -55($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -54($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -53($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -55($sp)
	addi	$sp, $sp, -56
	jal	min_caml_create_array
	addi	$sp, $sp, 56
	lw	$t8, -55($sp)
	move	$ra, $t8
	lw	$v1, -51($sp)
	lw	$a0, -52($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, min_caml_dirvecs
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$a0, 118
	li	$a1, 3
	lwc1	$f2, 0(l.22664)
	sw	$a0, -55($sp)
	sw	$v0, -56($sp)
	move	$t8, $ra
	move	$a0, $a1
	mov.s	$f12, $f2
	sw	$t8, -57($sp)
	addi	$sp, $sp, -58
	jal	min_caml_create_float_array
	addi	$sp, $sp, 58
	lw	$t8, -57($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -57($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -58($sp)
	addi	$sp, $sp, -59
	jal	min_caml_create_array
	addi	$sp, $sp, 59
	lw	$t8, -58($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -57($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -55($sp)
	lw	$a0, -56($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 117
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -58($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -59($sp)
	addi	$sp, $sp, -60
	jal	min_caml_create_float_array
	addi	$sp, $sp, 60
	lw	$t8, -59($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -59($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -60($sp)
	addi	$sp, $sp, -61
	jal	min_caml_create_array
	addi	$sp, $sp, 61
	lw	$t8, -60($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -59($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -58($sp)
	lw	$a0, -56($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 116
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -60($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -61($sp)
	addi	$sp, $sp, -62
	jal	min_caml_create_float_array
	addi	$sp, $sp, 62
	lw	$t8, -61($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -61($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -62($sp)
	addi	$sp, $sp, -63
	jal	min_caml_create_array
	addi	$sp, $sp, 63
	lw	$t8, -62($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -61($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -60($sp)
	lw	$a0, -56($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 115
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -62($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -63($sp)
	addi	$sp, $sp, -64
	jal	min_caml_create_float_array
	addi	$sp, $sp, 64
	lw	$t8, -63($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -63($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -64($sp)
	addi	$sp, $sp, -65
	jal	min_caml_create_array
	addi	$sp, $sp, 65
	lw	$t8, -64($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -63($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -62($sp)
	lw	$a0, -56($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 114
	move	$t8, $ra
	move	$a1, $v0
	sw	$t8, -64($sp)
	addi	$sp, $sp, -65
	jal	create_dirvec_elements.3059
	addi	$sp, $sp, 65
	lw	$t8, -64($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -51($sp)
	sub	$v0, $v1, $v0
	move	$a0, $v0
	j	create_dirvecs.3062
ble_else.31045:
	jr	$ra
ble_else.31044:
	jr	$ra
ble_else.31043:
	jr	$ra
ble_else.31042:
	jr	$ra
init_dirvec_constants.3064:
	li	$v0, 0
	sub	$at, $v0, $a1
	bgtz	$at, ble_else.31050
	add	$at, $a0, $a1
	lw	$v0, 0($at)
	li	$v1, min_caml_n_objects
	li	$a2, 0
	add	$at, $v1, $a2
	lw	$v1, 0($at)
	li	$a2, 1
	sub	$v1, $v1, $a2
	sw	$a0, 0($sp)
	sw	$a1, -1($sp)
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -1($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31051
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, min_caml_n_objects
	li	$a2, 0
	add	$at, $a1, $a2
	lw	$a1, 0($at)
	li	$a2, 1
	sub	$a1, $a1, $a2
	li	$a2, 0
	sw	$v0, -2($sp)
	sub	$at, $a2, $a1
	bgtz	$at, beq_else.31052
	li	$a2, min_caml_objects
	add	$at, $a2, $a1
	lw	$a2, 0($at)
	lw	$a3, 1($a0)
	lw	$t0, 0($a0)
	lw	$t1, 1($a2)
	li	$t2, 1
	sw	$a0, -3($sp)
	bne	$t1, $t2, beq_else.31054
	sw	$a1, -4($sp)
	sw	$a3, -5($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	setup_rect_table.2837
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	lw	$v1, -4($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31055
beq_else.31054:
	li	$t2, 2
	bne	$t1, $t2, beq_else.31056
	sw	$a1, -4($sp)
	sw	$a3, -5($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	setup_surface_table.2840
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	lw	$v1, -4($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31057
beq_else.31056:
	sw	$a1, -4($sp)
	sw	$a3, -5($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	setup_second_table.2843
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	lw	$v1, -4($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
beq_cont.31057:
beq_cont.31055:
	li	$v0, 1
	sub	$v0, $v1, $v0
	lw	$v1, -3($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	move	$ra, $t8
	j	beq_cont.31053
beq_else.31052:
beq_cont.31053:
	li	$v0, 1
	lw	$v1, -2($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31058
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, min_caml_n_objects
	li	$a2, 0
	add	$at, $a1, $a2
	lw	$a1, 0($at)
	li	$a2, 1
	sub	$a1, $a1, $a2
	sw	$v0, -6($sp)
	move	$t8, $ra
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -6($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31059
	lw	$v1, 0($sp)
	add	$at, $v1, $v0
	lw	$a0, 0($at)
	li	$a1, min_caml_n_objects
	li	$a2, 0
	add	$at, $a1, $a2
	lw	$a1, 0($at)
	li	$a2, 1
	sub	$a1, $a1, $a2
	li	$a2, 0
	sw	$v0, -7($sp)
	sub	$at, $a2, $a1
	bgtz	$at, beq_else.31060
	li	$a2, min_caml_objects
	add	$at, $a2, $a1
	lw	$a2, 0($at)
	lw	$a3, 1($a0)
	lw	$t0, 0($a0)
	lw	$t1, 1($a2)
	li	$t2, 1
	sw	$a0, -8($sp)
	bne	$t1, $t2, beq_else.31062
	sw	$a1, -9($sp)
	sw	$a3, -10($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	setup_rect_table.2837
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	lw	$v1, -9($sp)
	lw	$a0, -10($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31063
beq_else.31062:
	li	$t2, 2
	bne	$t1, $t2, beq_else.31064
	sw	$a1, -9($sp)
	sw	$a3, -10($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	setup_surface_table.2840
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	lw	$v1, -9($sp)
	lw	$a0, -10($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31065
beq_else.31064:
	sw	$a1, -9($sp)
	sw	$a3, -10($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	setup_second_table.2843
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	lw	$v1, -9($sp)
	lw	$a0, -10($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
beq_cont.31065:
beq_cont.31063:
	li	$v0, 1
	sub	$v0, $v1, $v0
	lw	$v1, -8($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	j	beq_cont.31061
beq_else.31060:
beq_cont.31061:
	li	$v0, 1
	lw	$v1, -7($sp)
	sub	$v0, $v1, $v0
	lw	$v1, 0($sp)
	move	$a1, $v0
	move	$a0, $v1
	j	init_dirvec_constants.3064
ble_else.31059:
	jr	$ra
ble_else.31058:
	jr	$ra
ble_else.31051:
	jr	$ra
ble_else.31050:
	jr	$ra
init_vecset_constants.3067:
	li	$v0, 0
	sub	$at, $v0, $a0
	bgtz	$at, ble_else.31070
	li	$v0, min_caml_dirvecs
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$v1, 119
	add	$at, $v0, $v1
	lw	$v1, 0($at)
	li	$a1, min_caml_n_objects
	li	$a2, 0
	add	$at, $a1, $a2
	lw	$a1, 0($at)
	li	$a2, 1
	sub	$a1, $a1, $a2
	li	$a2, 0
	sw	$a0, 0($sp)
	sw	$v0, -1($sp)
	sub	$at, $a2, $a1
	bgtz	$at, beq_else.31071
	li	$a2, min_caml_objects
	add	$at, $a2, $a1
	lw	$a2, 0($at)
	lw	$a3, 1($v1)
	lw	$t0, 0($v1)
	lw	$t1, 1($a2)
	li	$t2, 1
	sw	$v1, -2($sp)
	bne	$t1, $t2, beq_else.31073
	sw	$a1, -3($sp)
	sw	$a3, -4($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	setup_rect_table.2837
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	lw	$v1, -3($sp)
	lw	$a0, -4($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31074
beq_else.31073:
	li	$t2, 2
	bne	$t1, $t2, beq_else.31075
	sw	$a1, -3($sp)
	sw	$a3, -4($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	setup_surface_table.2840
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	lw	$v1, -3($sp)
	lw	$a0, -4($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31076
beq_else.31075:
	sw	$a1, -3($sp)
	sw	$a3, -4($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	setup_second_table.2843
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	lw	$v1, -3($sp)
	lw	$a0, -4($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
beq_cont.31076:
beq_cont.31074:
	li	$v0, 1
	sub	$v0, $v1, $v0
	lw	$v1, -2($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	j	beq_cont.31072
beq_else.31071:
beq_cont.31072:
	li	$v0, 118
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $v0
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	move	$ra, $t8
	li	$v0, 117
	lw	$v1, -1($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	li	$a1, 0
	sub	$at, $a1, $a0
	bgtz	$at, beq_else.31077
	li	$a1, min_caml_objects
	add	$at, $a1, $a0
	lw	$a1, 0($at)
	lw	$a2, 1($v0)
	lw	$a3, 0($v0)
	lw	$t0, 1($a1)
	li	$t1, 1
	sw	$v0, -5($sp)
	bne	$t0, $t1, beq_else.31079
	sw	$a0, -6($sp)
	sw	$a2, -7($sp)
	move	$t8, $ra
	move	$a0, $a3
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	setup_rect_table.2837
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	lw	$v1, -6($sp)
	lw	$a0, -7($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31080
beq_else.31079:
	li	$t1, 2
	bne	$t0, $t1, beq_else.31081
	sw	$a0, -6($sp)
	sw	$a2, -7($sp)
	move	$t8, $ra
	move	$a0, $a3
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	setup_surface_table.2840
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	lw	$v1, -6($sp)
	lw	$a0, -7($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31082
beq_else.31081:
	sw	$a0, -6($sp)
	sw	$a2, -7($sp)
	move	$t8, $ra
	move	$a0, $a3
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	setup_second_table.2843
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	lw	$v1, -6($sp)
	lw	$a0, -7($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
beq_cont.31082:
beq_cont.31080:
	li	$v0, 1
	sub	$v0, $v1, $v0
	lw	$v1, -5($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	j	beq_cont.31078
beq_else.31077:
beq_cont.31078:
	li	$v0, 116
	lw	$v1, -1($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -8($sp)
	addi	$sp, $sp, -9
	jal	init_dirvec_constants.3064
	addi	$sp, $sp, 9
	lw	$t8, -8($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, 0($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31083
	li	$v1, min_caml_dirvecs
	add	$at, $v1, $v0
	lw	$v1, 0($at)
	li	$a0, 119
	add	$at, $v1, $a0
	lw	$a0, 0($at)
	li	$a1, min_caml_n_objects
	li	$a2, 0
	add	$at, $a1, $a2
	lw	$a1, 0($at)
	li	$a2, 1
	sub	$a1, $a1, $a2
	sw	$v0, -8($sp)
	sw	$v1, -9($sp)
	move	$t8, $ra
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v0, 118
	lw	$v1, -9($sp)
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$a0, min_caml_n_objects
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	li	$a1, 1
	sub	$a0, $a0, $a1
	li	$a1, 0
	sub	$at, $a1, $a0
	bgtz	$at, beq_else.31084
	li	$a1, min_caml_objects
	add	$at, $a1, $a0
	lw	$a1, 0($at)
	lw	$a2, 1($v0)
	lw	$a3, 0($v0)
	lw	$t0, 1($a1)
	li	$t1, 1
	sw	$v0, -10($sp)
	bne	$t0, $t1, beq_else.31086
	sw	$a0, -11($sp)
	sw	$a2, -12($sp)
	move	$t8, $ra
	move	$a0, $a3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	setup_rect_table.2837
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	lw	$v1, -11($sp)
	lw	$a0, -12($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31087
beq_else.31086:
	li	$t1, 2
	bne	$t0, $t1, beq_else.31088
	sw	$a0, -11($sp)
	sw	$a2, -12($sp)
	move	$t8, $ra
	move	$a0, $a3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	setup_surface_table.2840
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	lw	$v1, -11($sp)
	lw	$a0, -12($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31089
beq_else.31088:
	sw	$a0, -11($sp)
	sw	$a2, -12($sp)
	move	$t8, $ra
	move	$a0, $a3
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	setup_second_table.2843
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	lw	$v1, -11($sp)
	lw	$a0, -12($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
beq_cont.31089:
beq_cont.31087:
	li	$v0, 1
	sub	$v0, $v1, $v0
	lw	$v1, -10($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	j	beq_cont.31085
beq_else.31084:
beq_cont.31085:
	li	$v0, 117
	lw	$v1, -9($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	init_dirvec_constants.3064
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -8($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31090
	li	$v1, min_caml_dirvecs
	add	$at, $v1, $v0
	lw	$v1, 0($at)
	li	$a0, 119
	add	$at, $v1, $a0
	lw	$a0, 0($at)
	li	$a1, min_caml_n_objects
	li	$a2, 0
	add	$at, $a1, $a2
	lw	$a1, 0($at)
	li	$a2, 1
	sub	$a1, $a1, $a2
	li	$a2, 0
	sw	$v0, -13($sp)
	sw	$v1, -14($sp)
	sub	$at, $a2, $a1
	bgtz	$at, beq_else.31091
	li	$a2, min_caml_objects
	add	$at, $a2, $a1
	lw	$a2, 0($at)
	lw	$a3, 1($a0)
	lw	$t0, 0($a0)
	lw	$t1, 1($a2)
	li	$t2, 1
	sw	$a0, -15($sp)
	bne	$t1, $t2, beq_else.31093
	sw	$a1, -16($sp)
	sw	$a3, -17($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	setup_rect_table.2837
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	lw	$v1, -16($sp)
	lw	$a0, -17($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31094
beq_else.31093:
	li	$t2, 2
	bne	$t1, $t2, beq_else.31095
	sw	$a1, -16($sp)
	sw	$a3, -17($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	setup_surface_table.2840
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	lw	$v1, -16($sp)
	lw	$a0, -17($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31096
beq_else.31095:
	sw	$a1, -16($sp)
	sw	$a3, -17($sp)
	move	$t8, $ra
	move	$a1, $a2
	move	$a0, $t0
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	setup_second_table.2843
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	lw	$v1, -16($sp)
	lw	$a0, -17($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
beq_cont.31096:
beq_cont.31094:
	li	$v0, 1
	sub	$v0, $v1, $v0
	lw	$v1, -15($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	j	beq_cont.31092
beq_else.31091:
beq_cont.31092:
	li	$v0, 118
	lw	$v1, -14($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	init_dirvec_constants.3064
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -13($sp)
	sub	$v0, $v1, $v0
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, ble_else.31097
	li	$v1, min_caml_dirvecs
	add	$at, $v1, $v0
	lw	$v1, 0($at)
	li	$a0, 119
	sw	$v0, -18($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -19($sp)
	addi	$sp, $sp, -20
	jal	init_dirvec_constants.3064
	addi	$sp, $sp, 20
	lw	$t8, -19($sp)
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -18($sp)
	sub	$v0, $v1, $v0
	move	$a0, $v0
	j	init_vecset_constants.3067
ble_else.31097:
	jr	$ra
ble_else.31090:
	jr	$ra
ble_else.31083:
	jr	$ra
ble_else.31070:
	jr	$ra
setup_reflections.3084:
	li	$v0, 0
	sub	$at, $v0, $a0
	bgtz	$at, ble_else.31102
	li	$v0, min_caml_objects
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	lw	$v1, 2($v0)
	li	$a1, 2
	bne	$v1, $a1, beq_else.31103
	lw	$v1, 7($v0)
	li	$a1, 0
	add	$at, $v1, $a1
	lwc1	$f2, 0($at)
	lwc1	$f3, 0(l.22725)
	sw	$a0, 0($sp)
	sw	$v0, -1($sp)
	move	$t8, $ra
	mov.s	$f13, $f3
	mov.s	$f12, $f2
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_fless
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	li	$v1, 0
	bne	$v0, $v1, beq_else.31104
	jr	$ra
beq_else.31104:
	lw	$v0, -1($sp)
	lw	$v1, 1($v0)
	li	$a0, 1
	bne	$v1, $a0, beq_else.31106
	li	$v1, 4
	lw	$a0, 0($sp)
	sll	$v1, $a0, 2
	li	$a0, min_caml_n_reflections
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	lwc1	$f2, 0(l.22725)
	lw	$v0, 7($v0)
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	li	$v0, min_caml_light
	li	$a1, 0
	add	$at, $v0, $a1
	lwc1	$f3, 0($at)
	sw	$a0, -2($sp)
	swc1	$f2, -3($sp)
	sw	$v1, -4($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -5($sp)
	addi	$sp, $sp, -6
	jal	min_caml_fneg
	addi	$sp, $sp, 6
	lw	$t8, -5($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, min_caml_light
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	swc1	$f2, -5($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -6($sp)
	addi	$sp, $sp, -7
	jal	min_caml_fneg
	addi	$sp, $sp, 7
	lw	$t8, -6($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, min_caml_light
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	swc1	$f2, -6($sp)
	move	$t8, $ra
	mov.s	$f12, $f3
	sw	$t8, -7($sp)
	addi	$sp, $sp, -8
	jal	min_caml_fneg
	addi	$sp, $sp, 8
	lw	$t8, -7($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	li	$v0, 1
	lw	$v1, -4($sp)
	add	$v0, $v1, $v0
	li	$a0, min_caml_light
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f3, 0($at)
	li	$a0, 3
	lwc1	$f4, 0(l.22664)
	sw	$v0, -7($sp)
	swc1	$f2, -8($sp)
	swc1	$f3, -9($sp)
	move	$t8, $ra
	mov.s	$f12, $f4
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_create_float_array
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -10($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_create_array
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -10($sp)
	sw	$v0, 0($v1)
	li	$a0, 0
	lwc1	$f2, -9($sp)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	lwc1	$f2, -6($sp)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	lwc1	$f3, -8($sp)
	add	$at, $v0, $a0
	swc1	$f3, 0($at)
	li	$v0, min_caml_n_objects
	li	$a0, 0
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, 1
	sub	$v0, $v0, $a0
	sw	$v1, -11($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -12($sp)
	addi	$sp, $sp, -13
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 13
	lw	$t8, -12($sp)
	move	$ra, $t8
	li	$v0, min_caml_reflections
	move	$v1, $hp
	addi	$hp, $hp, 3
	lwc1	$f2, -3($sp)
	swc1	$f2, 2($v1)
	lw	$a0, -11($sp)
	sw	$a0, 1($v1)
	lw	$a0, -7($sp)
	sw	$a0, 0($v1)
	lw	$a0, -2($sp)
	add	$at, $v0, $a0
	sw	$v1, 0($at)
	li	$v0, 1
	add	$v0, $a0, $v0
	li	$v1, 2
	lw	$a1, -4($sp)
	add	$v1, $a1, $v1
	li	$a2, min_caml_light
	li	$a3, 1
	add	$at, $a2, $a3
	lwc1	$f3, 0($at)
	li	$a2, 3
	lwc1	$f4, 0(l.22664)
	sw	$v0, -12($sp)
	sw	$v1, -13($sp)
	swc1	$f3, -14($sp)
	move	$t8, $ra
	move	$a0, $a2
	mov.s	$f12, $f4
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_create_float_array
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -15($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_create_array
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -15($sp)
	sw	$v0, 0($v1)
	li	$a0, 0
	lwc1	$f2, -5($sp)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	lwc1	$f3, -14($sp)
	add	$at, $v0, $a0
	swc1	$f3, 0($at)
	li	$a0, 2
	lwc1	$f3, -8($sp)
	add	$at, $v0, $a0
	swc1	$f3, 0($at)
	li	$v0, min_caml_n_objects
	li	$a0, 0
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, 1
	sub	$v0, $v0, $a0
	sw	$v1, -16($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v0, min_caml_reflections
	move	$v1, $hp
	addi	$hp, $hp, 3
	lwc1	$f2, -3($sp)
	swc1	$f2, 2($v1)
	lw	$a0, -16($sp)
	sw	$a0, 1($v1)
	lw	$a0, -13($sp)
	sw	$a0, 0($v1)
	lw	$a0, -12($sp)
	add	$at, $v0, $a0
	sw	$v1, 0($at)
	li	$v0, 2
	lw	$v1, -2($sp)
	add	$v0, $v1, $v0
	li	$a0, 3
	lw	$a1, -4($sp)
	add	$a0, $a1, $a0
	li	$a1, min_caml_light
	li	$a2, 2
	add	$at, $a1, $a2
	lwc1	$f3, 0($at)
	li	$a1, 3
	lwc1	$f4, 0(l.22664)
	sw	$v0, -17($sp)
	sw	$a0, -18($sp)
	swc1	$f3, -19($sp)
	move	$t8, $ra
	move	$a0, $a1
	mov.s	$f12, $f4
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_create_float_array
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -20($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_create_array
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -20($sp)
	sw	$v0, 0($v1)
	li	$a0, 0
	lwc1	$f2, -5($sp)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	lwc1	$f2, -6($sp)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	lwc1	$f2, -19($sp)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$v0, min_caml_n_objects
	li	$a0, 0
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, 1
	sub	$v0, $v0, $a0
	sw	$v1, -21($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	li	$v0, min_caml_reflections
	move	$v1, $hp
	addi	$hp, $hp, 3
	lwc1	$f2, -3($sp)
	swc1	$f2, 2($v1)
	lw	$a0, -21($sp)
	sw	$a0, 1($v1)
	lw	$a0, -18($sp)
	sw	$a0, 0($v1)
	lw	$a0, -17($sp)
	add	$at, $v0, $a0
	sw	$v1, 0($at)
	li	$v0, min_caml_n_reflections
	li	$v1, 0
	li	$a0, 3
	lw	$a1, -2($sp)
	add	$a0, $a1, $a0
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
beq_else.31106:
	li	$a0, 2
	bne	$v1, $a0, beq_else.31108
	li	$v1, 4
	lw	$a0, 0($sp)
	sll	$v1, $a0, 2
	li	$a0, 1
	add	$v1, $v1, $a0
	li	$a0, min_caml_n_reflections
	li	$a1, 0
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	lwc1	$f2, 0(l.22725)
	lw	$a1, 7($v0)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	li	$a1, min_caml_light
	lw	$a2, 4($v0)
	li	$a3, 0
	add	$at, $a1, $a3
	lwc1	$f3, 0($at)
	li	$a3, 0
	add	$at, $a2, $a3
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	li	$a3, 1
	add	$at, $a1, $a3
	lwc1	$f4, 0($at)
	li	$a3, 1
	add	$at, $a2, $a3
	lwc1	$f5, 0($at)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	li	$a3, 2
	add	$at, $a1, $a3
	lwc1	$f4, 0($at)
	li	$a1, 2
	add	$at, $a2, $a1
	lwc1	$f5, 0($at)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwc1	$f4, 0(l.22691)
	lw	$a1, 4($v0)
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f5, 0($at)
	mul.s	$f4, $f4, $f5
	mul.s	$f4, $f4, $f3
	li	$a1, min_caml_light
	li	$a2, 0
	add	$at, $a1, $a2
	lwc1	$f5, 0($at)
	sub.s	$f4, $f4, $f5
	lwc1	$f5, 0(l.22691)
	lw	$a1, 4($v0)
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	mul.s	$f5, $f5, $f3
	li	$a1, min_caml_light
	li	$a2, 1
	add	$at, $a1, $a2
	lwc1	$f6, 0($at)
	sub.s	$f5, $f5, $f6
	lwc1	$f6, 0(l.22691)
	lw	$v0, 4($v0)
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	mul.s	$f3, $f6, $f3
	li	$v0, min_caml_light
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f6, 0($at)
	sub.s	$f3, $f3, $f6
	li	$v0, 3
	lwc1	$f6, 0(l.22664)
	sw	$a0, -22($sp)
	sw	$v1, -23($sp)
	swc1	$f2, -24($sp)
	swc1	$f3, -25($sp)
	swc1	$f5, -26($sp)
	swc1	$f4, -27($sp)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f6
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_create_float_array
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -28($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_create_array
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -28($sp)
	sw	$v0, 0($v1)
	li	$a0, 0
	lwc1	$f2, -27($sp)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 1
	lwc1	$f2, -26($sp)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$a0, 2
	lwc1	$f2, -25($sp)
	add	$at, $v0, $a0
	swc1	$f2, 0($at)
	li	$v0, min_caml_n_objects
	li	$a0, 0
	add	$at, $v0, $a0
	lw	$v0, 0($at)
	li	$a0, 1
	sub	$v0, $v0, $a0
	sw	$v1, -29($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -30($sp)
	addi	$sp, $sp, -31
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 31
	lw	$t8, -30($sp)
	move	$ra, $t8
	li	$v0, min_caml_reflections
	move	$v1, $hp
	addi	$hp, $hp, 3
	lwc1	$f2, -24($sp)
	swc1	$f2, 2($v1)
	lw	$a0, -29($sp)
	sw	$a0, 1($v1)
	lw	$a0, -23($sp)
	sw	$a0, 0($v1)
	lw	$a0, -22($sp)
	add	$at, $v0, $a0
	sw	$v1, 0($at)
	li	$v0, min_caml_n_reflections
	li	$v1, 0
	li	$a1, 1
	add	$a0, $a0, $a1
	add	$at, $v0, $v1
	sw	$a0, 0($at)
	jr	$ra
beq_else.31108:
	jr	$ra
beq_else.31103:
	jr	$ra
ble_else.31102:
	jr	$ra
_min_caml_start: # main entry point
   # main program start
	li	$v0, 0
	lwc1	$f2, 0(l.22664)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, 0($sp)
	addi	$sp, $sp, -1
	jal	min_caml_create_float_array
	addi	$sp, $sp, 1
	lw	$t8, 0($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, 0($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -1($sp)
	addi	$sp, $sp, -2
	jal	min_caml_create_float_array
	addi	$sp, $sp, 2
	lw	$t8, -1($sp)
	move	$ra, $t8
	li	$v1, 60
	lw	$a0, 0($sp)
	sw	$v0, -1($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -2($sp)
	addi	$sp, $sp, -3
	jal	min_caml_create_array
	addi	$sp, $sp, 3
	lw	$t8, -2($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$a0, -1($sp)
	sw	$a0, 0($v1)
	move	$a1, $hp
	addi	$hp, $hp, 3
	li	$a2, shadow_check_and_group.2882
	sw	$a2, 0($a1)
	sw	$a0, 2($a1)
	sw	$v0, 1($a1)
	move	$a2, $hp
	addi	$hp, $hp, 2
	li	$a3, shadow_check_one_or_group.2885
	sw	$a3, 0($a2)
	sw	$a1, 1($a2)
	move	$a3, $hp
	addi	$hp, $hp, 6
	li	$t0, shadow_check_one_or_matrix.2888
	sw	$t0, 0($a3)
	sw	$a0, 5($a3)
	sw	$a2, 4($a3)
	sw	$a1, 3($a3)
	sw	$v1, 2($a3)
	sw	$v0, 1($a3)
	move	$t0, $hp
	addi	$hp, $hp, 5
	li	$t1, trace_reflections.2935
	sw	$t1, 0($t0)
	sw	$a3, 4($t0)
	sw	$a2, 3($t0)
	sw	$a1, 2($t0)
	sw	$v1, 1($t0)
	move	$t1, $hp
	addi	$hp, $hp, 6
	li	$t2, trace_ray.2940
	sw	$t2, 0($t1)
	sw	$t0, 5($t1)
	sw	$a3, 4($t1)
	sw	$a2, 3($t1)
	sw	$a1, 2($t1)
	sw	$v1, 1($t1)
	move	$t0, $hp
	addi	$hp, $hp, 5
	li	$t2, trace_diffuse_ray.2946
	sw	$t2, 0($t0)
	sw	$a3, 4($t0)
	sw	$a2, 3($t0)
	sw	$a1, 2($t0)
	sw	$v1, 1($t0)
	move	$a1, $hp
	addi	$hp, $hp, 3
	li	$a2, iter_trace_diffuse_rays.2949
	sw	$a2, 0($a1)
	sw	$t0, 2($a1)
	sw	$a3, 1($a1)
	move	$a2, $hp
	addi	$hp, $hp, 2
	li	$a3, trace_diffuse_ray_80percent.2958
	sw	$a3, 0($a2)
	sw	$a1, 1($a2)
	move	$a3, $hp
	addi	$hp, $hp, 3
	li	$t2, calc_diffuse_using_1point.2962
	sw	$t2, 0($a3)
	sw	$t0, 2($a3)
	sw	$a1, 1($a3)
	move	$t2, $hp
	addi	$hp, $hp, 4
	li	$t3, do_without_neighbors.2971
	sw	$t3, 0($t2)
	sw	$a2, 3($t2)
	sw	$a1, 2($t2)
	sw	$a3, 1($t2)
	move	$t3, $hp
	addi	$hp, $hp, 4
	li	$t4, try_exploit_neighbors.2987
	sw	$t4, 0($t3)
	sw	$a2, 3($t3)
	sw	$t2, 2($t3)
	sw	$a3, 1($t3)
	move	$t4, $hp
	addi	$hp, $hp, 3
	li	$t5, pretrace_diffuse_rays.3000
	sw	$t5, 0($t4)
	sw	$t0, 2($t4)
	sw	$a1, 1($t4)
	move	$t5, $hp
	addi	$hp, $hp, 5
	li	$t6, pretrace_pixels.3003
	sw	$t6, 0($t5)
	sw	$t1, 4($t5)
	sw	$t0, 3($t5)
	sw	$t4, 2($t5)
	sw	$a1, 1($t5)
	move	$a1, $hp
	addi	$hp, $hp, 5
	li	$t0, scan_pixel.3014
	sw	$t0, 0($a1)
	sw	$t3, 4($a1)
	sw	$a2, 3($a1)
	sw	$t2, 2($a1)
	sw	$a3, 1($a1)
	move	$t0, $hp
	addi	$hp, $hp, 7
	li	$t1, scan_line.3020
	sw	$t1, 0($t0)
	sw	$t3, 6($t0)
	sw	$a2, 5($t0)
	sw	$a1, 4($t0)
	sw	$t5, 3($t0)
	sw	$t2, 2($t0)
	sw	$a3, 1($t0)
	li	$a1, 128
	li	$a2, 128
	li	$a3, min_caml_image_size
	li	$t1, 0
	add	$at, $a3, $t1
	sw	$a1, 0($at)
	li	$a3, min_caml_image_size
	li	$t1, 1
	add	$at, $a3, $t1
	sw	$a2, 0($at)
	li	$a3, min_caml_image_center
	li	$t1, 0
	li	$t2, 2
	srl	$t2, $a1, 1
	add	$at, $a3, $t1
	sw	$t2, 0($at)
	li	$a3, min_caml_image_center
	li	$t1, 1
	li	$t2, 2
	srl	$a2, $a2, 1
	add	$at, $a3, $t1
	sw	$a2, 0($at)
	li	$a2, min_caml_scan_pitch
	li	$a3, 0
	lwc1	$f2, 0(l.25457)
	sw	$t0, -2($sp)
	sw	$t5, -3($sp)
	sw	$v1, -4($sp)
	sw	$v0, -5($sp)
	sw	$a3, -6($sp)
	sw	$a2, -7($sp)
	swc1	$f2, -8($sp)
	move	$t8, $ra
	move	$a0, $a1
	sw	$t8, -9($sp)
	addi	$sp, $sp, -10
	jal	min_caml_float_of_int
	addi	$sp, $sp, 10
	lw	$t8, -9($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -8($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$v0, -6($sp)
	lw	$v1, -7($sp)
	add	$at, $v1, $v0
	swc1	$f2, 0($at)
	li	$v0, min_caml_image_size
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -9($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -10($sp)
	addi	$sp, $sp, -11
	jal	min_caml_create_float_array
	addi	$sp, $sp, 11
	lw	$t8, -10($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -10($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_create_float_array
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -11($sp)
	addi	$sp, $sp, -12
	jal	min_caml_create_array
	addi	$sp, $sp, 12
	lw	$t8, -11($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -11($sp)
	sw	$v0, -12($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -13($sp)
	addi	$sp, $sp, -14
	jal	min_caml_create_float_array
	addi	$sp, $sp, 14
	lw	$t8, -13($sp)
	move	$ra, $t8
	lw	$v1, -11($sp)
	lw	$a0, -12($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -13($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -14($sp)
	addi	$sp, $sp, -15
	jal	min_caml_create_float_array
	addi	$sp, $sp, 15
	lw	$t8, -14($sp)
	move	$ra, $t8
	lw	$v1, -13($sp)
	lw	$a0, -12($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -14($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -15($sp)
	addi	$sp, $sp, -16
	jal	min_caml_create_float_array
	addi	$sp, $sp, 16
	lw	$t8, -15($sp)
	move	$ra, $t8
	lw	$v1, -14($sp)
	lw	$a0, -12($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -15($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_create_float_array
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	lw	$v1, -15($sp)
	lw	$a0, -12($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 5
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -16($sp)
	addi	$sp, $sp, -17
	jal	min_caml_create_array
	addi	$sp, $sp, 17
	lw	$t8, -16($sp)
	move	$ra, $t8
	li	$v1, 5
	li	$a0, 0
	sw	$v0, -16($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -17($sp)
	addi	$sp, $sp, -18
	jal	min_caml_create_array
	addi	$sp, $sp, 18
	lw	$t8, -17($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -17($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_create_float_array
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -18($sp)
	addi	$sp, $sp, -19
	jal	min_caml_create_array
	addi	$sp, $sp, 19
	lw	$t8, -18($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -18($sp)
	sw	$v0, -19($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -20($sp)
	addi	$sp, $sp, -21
	jal	min_caml_create_float_array
	addi	$sp, $sp, 21
	lw	$t8, -20($sp)
	move	$ra, $t8
	lw	$v1, -18($sp)
	lw	$a0, -19($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -20($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -21($sp)
	addi	$sp, $sp, -22
	jal	min_caml_create_float_array
	addi	$sp, $sp, 22
	lw	$t8, -21($sp)
	move	$ra, $t8
	lw	$v1, -20($sp)
	lw	$a0, -19($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -21($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -22($sp)
	addi	$sp, $sp, -23
	jal	min_caml_create_float_array
	addi	$sp, $sp, 23
	lw	$t8, -22($sp)
	move	$ra, $t8
	lw	$v1, -21($sp)
	lw	$a0, -19($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -22($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_create_float_array
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	lw	$v1, -22($sp)
	lw	$a0, -19($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_create_float_array
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -23($sp)
	addi	$sp, $sp, -24
	jal	min_caml_create_array
	addi	$sp, $sp, 24
	lw	$t8, -23($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -23($sp)
	sw	$v0, -24($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -25($sp)
	addi	$sp, $sp, -26
	jal	min_caml_create_float_array
	addi	$sp, $sp, 26
	lw	$t8, -25($sp)
	move	$ra, $t8
	lw	$v1, -23($sp)
	lw	$a0, -24($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -25($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -26($sp)
	addi	$sp, $sp, -27
	jal	min_caml_create_float_array
	addi	$sp, $sp, 27
	lw	$t8, -26($sp)
	move	$ra, $t8
	lw	$v1, -25($sp)
	lw	$a0, -24($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -26($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -27($sp)
	addi	$sp, $sp, -28
	jal	min_caml_create_float_array
	addi	$sp, $sp, 28
	lw	$t8, -27($sp)
	move	$ra, $t8
	lw	$v1, -26($sp)
	lw	$a0, -24($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -27($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_create_float_array
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	lw	$v1, -27($sp)
	lw	$a0, -24($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -28($sp)
	addi	$sp, $sp, -29
	jal	min_caml_create_array
	addi	$sp, $sp, 29
	lw	$t8, -28($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -28($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_create_float_array
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -29($sp)
	addi	$sp, $sp, -30
	jal	min_caml_create_array
	addi	$sp, $sp, 30
	lw	$t8, -29($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -29($sp)
	sw	$v0, -30($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -31($sp)
	addi	$sp, $sp, -32
	jal	min_caml_create_float_array
	addi	$sp, $sp, 32
	lw	$t8, -31($sp)
	move	$ra, $t8
	lw	$v1, -29($sp)
	lw	$a0, -30($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -31($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -32($sp)
	addi	$sp, $sp, -33
	jal	min_caml_create_float_array
	addi	$sp, $sp, 33
	lw	$t8, -32($sp)
	move	$ra, $t8
	lw	$v1, -31($sp)
	lw	$a0, -30($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -32($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -33($sp)
	addi	$sp, $sp, -34
	jal	min_caml_create_float_array
	addi	$sp, $sp, 34
	lw	$t8, -33($sp)
	move	$ra, $t8
	lw	$v1, -32($sp)
	lw	$a0, -30($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -33($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_create_float_array
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	lw	$v1, -33($sp)
	lw	$a0, -30($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	move	$v0, $hp
	addi	$hp, $hp, 8
	sw	$a0, 7($v0)
	lw	$v1, -28($sp)
	sw	$v1, 6($v0)
	lw	$v1, -24($sp)
	sw	$v1, 5($v0)
	lw	$v1, -19($sp)
	sw	$v1, 4($v0)
	lw	$v1, -17($sp)
	sw	$v1, 3($v0)
	lw	$v1, -16($sp)
	sw	$v1, 2($v0)
	lw	$v1, -12($sp)
	sw	$v1, 1($v0)
	lw	$v1, -10($sp)
	sw	$v1, 0($v0)
	lw	$v1, -9($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -34($sp)
	addi	$sp, $sp, -35
	jal	min_caml_create_array
	addi	$sp, $sp, 35
	lw	$t8, -34($sp)
	move	$ra, $t8
	li	$v1, min_caml_image_size
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a0, 2
	sub	$v1, $v1, $a0
	li	$a0, 0
	sub	$at, $a0, $v1
	bgtz	$at, beq_else.31113
	sw	$v1, -34($sp)
	sw	$v0, -35($sp)
	move	$t8, $ra
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	create_pixel.3028
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	lw	$v1, -34($sp)
	lw	$a0, -35($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	move	$t8, $ra
	move	$a1, $v0
	sw	$t8, -36($sp)
	addi	$sp, $sp, -37
	jal	init_line_elements.3030
	addi	$sp, $sp, 37
	lw	$t8, -36($sp)
	move	$ra, $t8
	j	beq_cont.31114
beq_else.31113:
beq_cont.31114:
	li	$v1, min_caml_image_size
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -36($sp)
	sw	$v1, -37($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -38($sp)
	addi	$sp, $sp, -39
	jal	min_caml_create_float_array
	addi	$sp, $sp, 39
	lw	$t8, -38($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -38($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_create_float_array
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -39($sp)
	addi	$sp, $sp, -40
	jal	min_caml_create_array
	addi	$sp, $sp, 40
	lw	$t8, -39($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -39($sp)
	sw	$v0, -40($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -41($sp)
	addi	$sp, $sp, -42
	jal	min_caml_create_float_array
	addi	$sp, $sp, 42
	lw	$t8, -41($sp)
	move	$ra, $t8
	lw	$v1, -39($sp)
	lw	$a0, -40($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -41($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -42($sp)
	addi	$sp, $sp, -43
	jal	min_caml_create_float_array
	addi	$sp, $sp, 43
	lw	$t8, -42($sp)
	move	$ra, $t8
	lw	$v1, -41($sp)
	lw	$a0, -40($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -42($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -43($sp)
	addi	$sp, $sp, -44
	jal	min_caml_create_float_array
	addi	$sp, $sp, 44
	lw	$t8, -43($sp)
	move	$ra, $t8
	lw	$v1, -42($sp)
	lw	$a0, -40($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -43($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -44($sp)
	addi	$sp, $sp, -45
	jal	min_caml_create_float_array
	addi	$sp, $sp, 45
	lw	$t8, -44($sp)
	move	$ra, $t8
	lw	$v1, -43($sp)
	lw	$a0, -40($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 5
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -44($sp)
	addi	$sp, $sp, -45
	jal	min_caml_create_array
	addi	$sp, $sp, 45
	lw	$t8, -44($sp)
	move	$ra, $t8
	li	$v1, 5
	li	$a0, 0
	sw	$v0, -44($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -45($sp)
	addi	$sp, $sp, -46
	jal	min_caml_create_array
	addi	$sp, $sp, 46
	lw	$t8, -45($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -45($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -46($sp)
	addi	$sp, $sp, -47
	jal	min_caml_create_float_array
	addi	$sp, $sp, 47
	lw	$t8, -46($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -46($sp)
	addi	$sp, $sp, -47
	jal	min_caml_create_array
	addi	$sp, $sp, 47
	lw	$t8, -46($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -46($sp)
	sw	$v0, -47($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -48($sp)
	addi	$sp, $sp, -49
	jal	min_caml_create_float_array
	addi	$sp, $sp, 49
	lw	$t8, -48($sp)
	move	$ra, $t8
	lw	$v1, -46($sp)
	lw	$a0, -47($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -48($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -49($sp)
	addi	$sp, $sp, -50
	jal	min_caml_create_float_array
	addi	$sp, $sp, 50
	lw	$t8, -49($sp)
	move	$ra, $t8
	lw	$v1, -48($sp)
	lw	$a0, -47($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -49($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -50($sp)
	addi	$sp, $sp, -51
	jal	min_caml_create_float_array
	addi	$sp, $sp, 51
	lw	$t8, -50($sp)
	move	$ra, $t8
	lw	$v1, -49($sp)
	lw	$a0, -47($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -50($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -51($sp)
	addi	$sp, $sp, -52
	jal	min_caml_create_float_array
	addi	$sp, $sp, 52
	lw	$t8, -51($sp)
	move	$ra, $t8
	lw	$v1, -50($sp)
	lw	$a0, -47($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -51($sp)
	addi	$sp, $sp, -52
	jal	min_caml_create_float_array
	addi	$sp, $sp, 52
	lw	$t8, -51($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -51($sp)
	addi	$sp, $sp, -52
	jal	min_caml_create_array
	addi	$sp, $sp, 52
	lw	$t8, -51($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -51($sp)
	sw	$v0, -52($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -53($sp)
	addi	$sp, $sp, -54
	jal	min_caml_create_float_array
	addi	$sp, $sp, 54
	lw	$t8, -53($sp)
	move	$ra, $t8
	lw	$v1, -51($sp)
	lw	$a0, -52($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -53($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -54($sp)
	addi	$sp, $sp, -55
	jal	min_caml_create_float_array
	addi	$sp, $sp, 55
	lw	$t8, -54($sp)
	move	$ra, $t8
	lw	$v1, -53($sp)
	lw	$a0, -52($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -54($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -55($sp)
	addi	$sp, $sp, -56
	jal	min_caml_create_float_array
	addi	$sp, $sp, 56
	lw	$t8, -55($sp)
	move	$ra, $t8
	lw	$v1, -54($sp)
	lw	$a0, -52($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -55($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -56($sp)
	addi	$sp, $sp, -57
	jal	min_caml_create_float_array
	addi	$sp, $sp, 57
	lw	$t8, -56($sp)
	move	$ra, $t8
	lw	$v1, -55($sp)
	lw	$a0, -52($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -56($sp)
	addi	$sp, $sp, -57
	jal	min_caml_create_array
	addi	$sp, $sp, 57
	lw	$t8, -56($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -56($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -57($sp)
	addi	$sp, $sp, -58
	jal	min_caml_create_float_array
	addi	$sp, $sp, 58
	lw	$t8, -57($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -57($sp)
	addi	$sp, $sp, -58
	jal	min_caml_create_array
	addi	$sp, $sp, 58
	lw	$t8, -57($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -57($sp)
	sw	$v0, -58($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -59($sp)
	addi	$sp, $sp, -60
	jal	min_caml_create_float_array
	addi	$sp, $sp, 60
	lw	$t8, -59($sp)
	move	$ra, $t8
	lw	$v1, -57($sp)
	lw	$a0, -58($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -59($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -60($sp)
	addi	$sp, $sp, -61
	jal	min_caml_create_float_array
	addi	$sp, $sp, 61
	lw	$t8, -60($sp)
	move	$ra, $t8
	lw	$v1, -59($sp)
	lw	$a0, -58($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -60($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -61($sp)
	addi	$sp, $sp, -62
	jal	min_caml_create_float_array
	addi	$sp, $sp, 62
	lw	$t8, -61($sp)
	move	$ra, $t8
	lw	$v1, -60($sp)
	lw	$a0, -58($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -61($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -62($sp)
	addi	$sp, $sp, -63
	jal	min_caml_create_float_array
	addi	$sp, $sp, 63
	lw	$t8, -62($sp)
	move	$ra, $t8
	lw	$v1, -61($sp)
	lw	$a0, -58($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	move	$v0, $hp
	addi	$hp, $hp, 8
	sw	$a0, 7($v0)
	lw	$v1, -56($sp)
	sw	$v1, 6($v0)
	lw	$v1, -52($sp)
	sw	$v1, 5($v0)
	lw	$v1, -47($sp)
	sw	$v1, 4($v0)
	lw	$v1, -45($sp)
	sw	$v1, 3($v0)
	lw	$v1, -44($sp)
	sw	$v1, 2($v0)
	lw	$v1, -40($sp)
	sw	$v1, 1($v0)
	lw	$v1, -38($sp)
	sw	$v1, 0($v0)
	lw	$v1, -37($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -62($sp)
	addi	$sp, $sp, -63
	jal	min_caml_create_array
	addi	$sp, $sp, 63
	lw	$t8, -62($sp)
	move	$ra, $t8
	li	$v1, min_caml_image_size
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a0, 2
	sub	$v1, $v1, $a0
	li	$a0, 0
	sub	$at, $a0, $v1
	bgtz	$at, beq_else.31115
	sw	$v1, -62($sp)
	sw	$v0, -63($sp)
	move	$t8, $ra
	sw	$t8, -64($sp)
	addi	$sp, $sp, -65
	jal	create_pixel.3028
	addi	$sp, $sp, 65
	lw	$t8, -64($sp)
	move	$ra, $t8
	lw	$v1, -62($sp)
	lw	$a0, -63($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	move	$t8, $ra
	move	$a1, $v0
	sw	$t8, -64($sp)
	addi	$sp, $sp, -65
	jal	init_line_elements.3030
	addi	$sp, $sp, 65
	lw	$t8, -64($sp)
	move	$ra, $t8
	j	beq_cont.31116
beq_else.31115:
beq_cont.31116:
	li	$v1, min_caml_image_size
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -64($sp)
	sw	$v1, -65($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -66($sp)
	addi	$sp, $sp, -67
	jal	min_caml_create_float_array
	addi	$sp, $sp, 67
	lw	$t8, -66($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -66($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -67($sp)
	addi	$sp, $sp, -68
	jal	min_caml_create_float_array
	addi	$sp, $sp, 68
	lw	$t8, -67($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -67($sp)
	addi	$sp, $sp, -68
	jal	min_caml_create_array
	addi	$sp, $sp, 68
	lw	$t8, -67($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -67($sp)
	sw	$v0, -68($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -69($sp)
	addi	$sp, $sp, -70
	jal	min_caml_create_float_array
	addi	$sp, $sp, 70
	lw	$t8, -69($sp)
	move	$ra, $t8
	lw	$v1, -67($sp)
	lw	$a0, -68($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -69($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -70($sp)
	addi	$sp, $sp, -71
	jal	min_caml_create_float_array
	addi	$sp, $sp, 71
	lw	$t8, -70($sp)
	move	$ra, $t8
	lw	$v1, -69($sp)
	lw	$a0, -68($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -70($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -71($sp)
	addi	$sp, $sp, -72
	jal	min_caml_create_float_array
	addi	$sp, $sp, 72
	lw	$t8, -71($sp)
	move	$ra, $t8
	lw	$v1, -70($sp)
	lw	$a0, -68($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -71($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -72($sp)
	addi	$sp, $sp, -73
	jal	min_caml_create_float_array
	addi	$sp, $sp, 73
	lw	$t8, -72($sp)
	move	$ra, $t8
	lw	$v1, -71($sp)
	lw	$a0, -68($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 5
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -72($sp)
	addi	$sp, $sp, -73
	jal	min_caml_create_array
	addi	$sp, $sp, 73
	lw	$t8, -72($sp)
	move	$ra, $t8
	li	$v1, 5
	li	$a0, 0
	sw	$v0, -72($sp)
	move	$t8, $ra
	move	$a1, $a0
	move	$a0, $v1
	sw	$t8, -73($sp)
	addi	$sp, $sp, -74
	jal	min_caml_create_array
	addi	$sp, $sp, 74
	lw	$t8, -73($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -73($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -74($sp)
	addi	$sp, $sp, -75
	jal	min_caml_create_float_array
	addi	$sp, $sp, 75
	lw	$t8, -74($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -74($sp)
	addi	$sp, $sp, -75
	jal	min_caml_create_array
	addi	$sp, $sp, 75
	lw	$t8, -74($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -74($sp)
	sw	$v0, -75($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -76($sp)
	addi	$sp, $sp, -77
	jal	min_caml_create_float_array
	addi	$sp, $sp, 77
	lw	$t8, -76($sp)
	move	$ra, $t8
	lw	$v1, -74($sp)
	lw	$a0, -75($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -76($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -77($sp)
	addi	$sp, $sp, -78
	jal	min_caml_create_float_array
	addi	$sp, $sp, 78
	lw	$t8, -77($sp)
	move	$ra, $t8
	lw	$v1, -76($sp)
	lw	$a0, -75($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -77($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -78($sp)
	addi	$sp, $sp, -79
	jal	min_caml_create_float_array
	addi	$sp, $sp, 79
	lw	$t8, -78($sp)
	move	$ra, $t8
	lw	$v1, -77($sp)
	lw	$a0, -75($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -78($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -79($sp)
	addi	$sp, $sp, -80
	jal	min_caml_create_float_array
	addi	$sp, $sp, 80
	lw	$t8, -79($sp)
	move	$ra, $t8
	lw	$v1, -78($sp)
	lw	$a0, -75($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	lwc1	$f2, 0(l.22664)
	move	$t8, $ra
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -79($sp)
	addi	$sp, $sp, -80
	jal	min_caml_create_float_array
	addi	$sp, $sp, 80
	lw	$t8, -79($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -79($sp)
	addi	$sp, $sp, -80
	jal	min_caml_create_array
	addi	$sp, $sp, 80
	lw	$t8, -79($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -79($sp)
	sw	$v0, -80($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -81($sp)
	addi	$sp, $sp, -82
	jal	min_caml_create_float_array
	addi	$sp, $sp, 82
	lw	$t8, -81($sp)
	move	$ra, $t8
	lw	$v1, -79($sp)
	lw	$a0, -80($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -81($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -82($sp)
	addi	$sp, $sp, -83
	jal	min_caml_create_float_array
	addi	$sp, $sp, 83
	lw	$t8, -82($sp)
	move	$ra, $t8
	lw	$v1, -81($sp)
	lw	$a0, -80($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -82($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -83($sp)
	addi	$sp, $sp, -84
	jal	min_caml_create_float_array
	addi	$sp, $sp, 84
	lw	$t8, -83($sp)
	move	$ra, $t8
	lw	$v1, -82($sp)
	lw	$a0, -80($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -83($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -84($sp)
	addi	$sp, $sp, -85
	jal	min_caml_create_float_array
	addi	$sp, $sp, 85
	lw	$t8, -84($sp)
	move	$ra, $t8
	lw	$v1, -83($sp)
	lw	$a0, -80($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	li	$v1, 0
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -84($sp)
	addi	$sp, $sp, -85
	jal	min_caml_create_array
	addi	$sp, $sp, 85
	lw	$t8, -84($sp)
	move	$ra, $t8
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -84($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -85($sp)
	addi	$sp, $sp, -86
	jal	min_caml_create_float_array
	addi	$sp, $sp, 86
	lw	$t8, -85($sp)
	move	$ra, $t8
	li	$v1, 5
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -85($sp)
	addi	$sp, $sp, -86
	jal	min_caml_create_array
	addi	$sp, $sp, 86
	lw	$t8, -85($sp)
	move	$ra, $t8
	li	$v1, 1
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -85($sp)
	sw	$v0, -86($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -87($sp)
	addi	$sp, $sp, -88
	jal	min_caml_create_float_array
	addi	$sp, $sp, 88
	lw	$t8, -87($sp)
	move	$ra, $t8
	lw	$v1, -85($sp)
	lw	$a0, -86($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 2
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -87($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -88($sp)
	addi	$sp, $sp, -89
	jal	min_caml_create_float_array
	addi	$sp, $sp, 89
	lw	$t8, -88($sp)
	move	$ra, $t8
	lw	$v1, -87($sp)
	lw	$a0, -86($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 3
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -88($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -89($sp)
	addi	$sp, $sp, -90
	jal	min_caml_create_float_array
	addi	$sp, $sp, 90
	lw	$t8, -89($sp)
	move	$ra, $t8
	lw	$v1, -88($sp)
	lw	$a0, -86($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 4
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -89($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -90($sp)
	addi	$sp, $sp, -91
	jal	min_caml_create_float_array
	addi	$sp, $sp, 91
	lw	$t8, -90($sp)
	move	$ra, $t8
	lw	$v1, -89($sp)
	lw	$a0, -86($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	move	$v0, $hp
	addi	$hp, $hp, 8
	sw	$a0, 7($v0)
	lw	$v1, -84($sp)
	sw	$v1, 6($v0)
	lw	$v1, -80($sp)
	sw	$v1, 5($v0)
	lw	$v1, -75($sp)
	sw	$v1, 4($v0)
	lw	$v1, -73($sp)
	sw	$v1, 3($v0)
	lw	$v1, -72($sp)
	sw	$v1, 2($v0)
	lw	$v1, -68($sp)
	sw	$v1, 1($v0)
	lw	$v1, -66($sp)
	sw	$v1, 0($v0)
	lw	$v1, -65($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -90($sp)
	addi	$sp, $sp, -91
	jal	min_caml_create_array
	addi	$sp, $sp, 91
	lw	$t8, -90($sp)
	move	$ra, $t8
	li	$v1, min_caml_image_size
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	li	$a0, 2
	sub	$v1, $v1, $a0
	li	$a0, 0
	sub	$at, $a0, $v1
	bgtz	$at, beq_else.31117
	sw	$v1, -90($sp)
	sw	$v0, -91($sp)
	move	$t8, $ra
	sw	$t8, -92($sp)
	addi	$sp, $sp, -93
	jal	create_pixel.3028
	addi	$sp, $sp, 93
	lw	$t8, -92($sp)
	move	$ra, $t8
	lw	$v1, -90($sp)
	lw	$a0, -91($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 1
	sub	$v0, $v1, $v0
	move	$t8, $ra
	move	$a1, $v0
	sw	$t8, -92($sp)
	addi	$sp, $sp, -93
	jal	init_line_elements.3030
	addi	$sp, $sp, 93
	lw	$t8, -92($sp)
	move	$ra, $t8
	j	beq_cont.31118
beq_else.31117:
beq_cont.31118:
	sw	$v0, -92($sp)
	move	$t8, $ra
	sw	$t8, -93($sp)
	addi	$sp, $sp, -94
	jal	read_parameter.2751
	addi	$sp, $sp, 94
	lw	$t8, -93($sp)
	move	$ra, $t8
	li	$v0, 80
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -93($sp)
	addi	$sp, $sp, -94
	jal	min_caml_print_char
	addi	$sp, $sp, 94
	lw	$t8, -93($sp)
	move	$ra, $t8
	li	$v0, 51
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -93($sp)
	addi	$sp, $sp, -94
	jal	min_caml_print_char
	addi	$sp, $sp, 94
	lw	$t8, -93($sp)
	move	$ra, $t8
	li	$v0, 10
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -93($sp)
	addi	$sp, $sp, -94
	jal	min_caml_print_char
	addi	$sp, $sp, 94
	lw	$t8, -93($sp)
	move	$ra, $t8
	li	$v0, min_caml_image_size
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -93($sp)
	addi	$sp, $sp, -94
	jal	min_caml_print_int
	addi	$sp, $sp, 94
	lw	$t8, -93($sp)
	move	$ra, $t8
	li	$v0, 32
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -93($sp)
	addi	$sp, $sp, -94
	jal	min_caml_print_char
	addi	$sp, $sp, 94
	lw	$t8, -93($sp)
	move	$ra, $t8
	li	$v0, min_caml_image_size
	li	$v1, 1
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -93($sp)
	addi	$sp, $sp, -94
	jal	min_caml_print_int
	addi	$sp, $sp, 94
	lw	$t8, -93($sp)
	move	$ra, $t8
	li	$v0, 32
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -93($sp)
	addi	$sp, $sp, -94
	jal	min_caml_print_char
	addi	$sp, $sp, 94
	lw	$t8, -93($sp)
	move	$ra, $t8
	li	$v0, 255
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -93($sp)
	addi	$sp, $sp, -94
	jal	min_caml_print_int
	addi	$sp, $sp, 94
	lw	$t8, -93($sp)
	move	$ra, $t8
	li	$v0, 10
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -93($sp)
	addi	$sp, $sp, -94
	jal	min_caml_print_char
	addi	$sp, $sp, 94
	lw	$t8, -93($sp)
	move	$ra, $t8
	li	$v0, 4
	li	$v1, min_caml_dirvecs
	li	$a0, 120
	li	$a1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -93($sp)
	sw	$v1, -94($sp)
	sw	$a0, -95($sp)
	move	$t8, $ra
	move	$a0, $a1
	mov.s	$f12, $f2
	sw	$t8, -96($sp)
	addi	$sp, $sp, -97
	jal	min_caml_create_float_array
	addi	$sp, $sp, 97
	lw	$t8, -96($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -96($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -97($sp)
	addi	$sp, $sp, -98
	jal	min_caml_create_array
	addi	$sp, $sp, 98
	lw	$t8, -97($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -96($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -95($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -97($sp)
	addi	$sp, $sp, -98
	jal	min_caml_create_array
	addi	$sp, $sp, 98
	lw	$t8, -97($sp)
	move	$ra, $t8
	lw	$v1, -93($sp)
	lw	$a0, -94($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, min_caml_dirvecs
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, 118
	li	$a0, 3
	lwc1	$f2, 0(l.22664)
	sw	$v1, -97($sp)
	sw	$v0, -98($sp)
	move	$t8, $ra
	mov.s	$f12, $f2
	sw	$t8, -99($sp)
	addi	$sp, $sp, -100
	jal	min_caml_create_float_array
	addi	$sp, $sp, 100
	lw	$t8, -99($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -99($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -100($sp)
	addi	$sp, $sp, -101
	jal	min_caml_create_array
	addi	$sp, $sp, 101
	lw	$t8, -100($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -99($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -97($sp)
	lw	$a0, -98($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 117
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -100($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -101($sp)
	addi	$sp, $sp, -102
	jal	min_caml_create_float_array
	addi	$sp, $sp, 102
	lw	$t8, -101($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -101($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -102($sp)
	addi	$sp, $sp, -103
	jal	min_caml_create_array
	addi	$sp, $sp, 103
	lw	$t8, -102($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -101($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -100($sp)
	lw	$a0, -98($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 116
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -102($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -103($sp)
	addi	$sp, $sp, -104
	jal	min_caml_create_float_array
	addi	$sp, $sp, 104
	lw	$t8, -103($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -103($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -104($sp)
	addi	$sp, $sp, -105
	jal	min_caml_create_array
	addi	$sp, $sp, 105
	lw	$t8, -104($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -103($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -102($sp)
	lw	$a0, -98($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 115
	li	$v1, 3
	lwc1	$f2, 0(l.22664)
	sw	$v0, -104($sp)
	move	$t8, $ra
	move	$a0, $v1
	mov.s	$f12, $f2
	sw	$t8, -105($sp)
	addi	$sp, $sp, -106
	jal	min_caml_create_float_array
	addi	$sp, $sp, 106
	lw	$t8, -105($sp)
	move	$ra, $t8
	li	$v1, min_caml_n_objects
	li	$a0, 0
	add	$at, $v1, $a0
	lw	$v1, 0($at)
	sw	$v0, -105($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -106($sp)
	addi	$sp, $sp, -107
	jal	min_caml_create_array
	addi	$sp, $sp, 107
	lw	$t8, -106($sp)
	move	$ra, $t8
	move	$v1, $hp
	addi	$hp, $hp, 2
	sw	$v0, 1($v1)
	lw	$v0, -105($sp)
	sw	$v0, 0($v1)
	move	$v0, $v1
	lw	$v1, -104($sp)
	lw	$a0, -98($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	li	$v0, 114
	move	$t8, $ra
	move	$a1, $v0
	sw	$t8, -106($sp)
	addi	$sp, $sp, -107
	jal	create_dirvec_elements.3059
	addi	$sp, $sp, 107
	lw	$t8, -106($sp)
	move	$ra, $t8
	li	$v0, 3
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -106($sp)
	addi	$sp, $sp, -107
	jal	create_dirvecs.3062
	addi	$sp, $sp, 107
	lw	$t8, -106($sp)
	move	$ra, $t8
	li	$v0, 9
	li	$v1, 0
	li	$a0, 0
	sw	$a0, -106($sp)
	sw	$v1, -107($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -108($sp)
	addi	$sp, $sp, -109
	jal	min_caml_float_of_int
	addi	$sp, $sp, 109
	lw	$t8, -108($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, 0(l.25148)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0(l.25149)
	sub.s	$f2, $f2, $f3
	li	$v0, 4
	lw	$v1, -107($sp)
	lw	$a0, -106($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	mov.s	$f12, $f2
	sw	$t8, -108($sp)
	addi	$sp, $sp, -109
	jal	calc_dirvecs.3048
	addi	$sp, $sp, 109
	lw	$t8, -108($sp)
	move	$ra, $t8
	li	$v0, 8
	li	$v1, 2
	li	$a0, 4
	move	$t8, $ra
	move	$a2, $a0
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -108($sp)
	addi	$sp, $sp, -109
	jal	calc_dirvec_rows.3053
	addi	$sp, $sp, 109
	lw	$t8, -108($sp)
	move	$ra, $t8
	li	$v0, 4
	li	$v1, min_caml_dirvecs
	add	$at, $v1, $v0
	lw	$v0, 0($at)
	li	$v1, 119
	move	$t8, $ra
	move	$a1, $v1
	move	$a0, $v0
	sw	$t8, -108($sp)
	addi	$sp, $sp, -109
	jal	init_dirvec_constants.3064
	addi	$sp, $sp, 109
	lw	$t8, -108($sp)
	move	$ra, $t8
	li	$v0, 3
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -108($sp)
	addi	$sp, $sp, -109
	jal	init_vecset_constants.3067
	addi	$sp, $sp, 109
	lw	$t8, -108($sp)
	move	$ra, $t8
	li	$v0, min_caml_light
	li	$v1, 0
	li	$a0, 0
	add	$at, $v0, $a0
	lwc1	$f2, 0($at)
	lw	$a0, -1($sp)
	add	$at, $a0, $v1
	swc1	$f2, 0($at)
	li	$v1, 1
	li	$a1, 1
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	add	$at, $a0, $v1
	swc1	$f2, 0($at)
	li	$v1, 2
	li	$a1, 2
	add	$at, $v0, $a1
	lwc1	$f2, 0($at)
	add	$at, $a0, $v1
	swc1	$f2, 0($at)
	li	$v0, min_caml_n_objects
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, 1
	sub	$v0, $v0, $v1
	li	$v1, 0
	sub	$at, $v1, $v0
	bgtz	$at, beq_else.31119
	li	$v1, min_caml_objects
	add	$at, $v1, $v0
	lw	$v1, 0($at)
	lw	$a1, 1($v1)
	li	$a2, 1
	bne	$a1, $a2, beq_else.31121
	sw	$v0, -108($sp)
	move	$t8, $ra
	move	$a1, $v1
	sw	$t8, -109($sp)
	addi	$sp, $sp, -110
	jal	setup_rect_table.2837
	addi	$sp, $sp, 110
	lw	$t8, -109($sp)
	move	$ra, $t8
	lw	$v1, -108($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31122
beq_else.31121:
	li	$a2, 2
	bne	$a1, $a2, beq_else.31123
	sw	$v0, -108($sp)
	move	$t8, $ra
	move	$a1, $v1
	sw	$t8, -109($sp)
	addi	$sp, $sp, -110
	jal	setup_surface_table.2840
	addi	$sp, $sp, 110
	lw	$t8, -109($sp)
	move	$ra, $t8
	lw	$v1, -108($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
	j	beq_cont.31124
beq_else.31123:
	sw	$v0, -108($sp)
	move	$t8, $ra
	move	$a1, $v1
	sw	$t8, -109($sp)
	addi	$sp, $sp, -110
	jal	setup_second_table.2843
	addi	$sp, $sp, 110
	lw	$t8, -109($sp)
	move	$ra, $t8
	lw	$v1, -108($sp)
	lw	$a0, -5($sp)
	add	$at, $a0, $v1
	sw	$v0, 0($at)
beq_cont.31124:
beq_cont.31122:
	li	$v0, 1
	sub	$v0, $v1, $v0
	lw	$v1, -4($sp)
	move	$t8, $ra
	move	$a1, $v0
	move	$a0, $v1
	sw	$t8, -109($sp)
	addi	$sp, $sp, -110
	jal	iter_setup_dirvec_constants.2846
	addi	$sp, $sp, 110
	lw	$t8, -109($sp)
	move	$ra, $t8
	j	beq_cont.31120
beq_else.31119:
beq_cont.31120:
	li	$v0, min_caml_n_objects
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, 1
	sub	$v0, $v0, $v1
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -109($sp)
	addi	$sp, $sp, -110
	jal	setup_reflections.3084
	addi	$sp, $sp, 110
	lw	$t8, -109($sp)
	move	$ra, $t8
	li	$v0, 0
	li	$v1, 0
	li	$a0, min_caml_scan_pitch
	li	$a1, 0
	add	$at, $a0, $a1
	lwc1	$f2, 0($at)
	li	$a0, min_caml_image_center
	li	$a1, 1
	add	$at, $a0, $a1
	lw	$a0, 0($at)
	sub	$v0, $v0, $a0
	sw	$v1, -109($sp)
	swc1	$f2, -110($sp)
	move	$t8, $ra
	move	$a0, $v0
	sw	$t8, -111($sp)
	addi	$sp, $sp, -112
	jal	min_caml_float_of_int
	addi	$sp, $sp, 112
	lw	$t8, -111($sp)
	mov.s	$f2, $f0
	move	$ra, $t8
	lwc1	$f3, -110($sp)
	mul.s	$f2, $f3, $f2
	li	$v0, min_caml_screeny_dir
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f3, 0($at)
	mul.s	$f3, $f2, $f3
	li	$v0, min_caml_screenz_dir
	li	$v1, 0
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	add.s	$f3, $f3, $f4
	li	$v0, min_caml_screeny_dir
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f4, 0($at)
	mul.s	$f4, $f2, $f4
	li	$v0, min_caml_screenz_dir
	li	$v1, 1
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	add.s	$f4, $f4, $f5
	li	$v0, min_caml_screeny_dir
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	mul.s	$f2, $f2, $f5
	li	$v0, min_caml_screenz_dir
	li	$v1, 2
	add	$at, $v0, $v1
	lwc1	$f5, 0($at)
	add.s	$f2, $f2, $f5
	li	$v0, min_caml_image_size
	li	$v1, 0
	add	$at, $v0, $v1
	lw	$v0, 0($at)
	li	$v1, 1
	sub	$v0, $v0, $v1
	lw	$v1, -64($sp)
	lw	$a0, -109($sp)
	lw	$a1, -3($sp)
	move	$t8, $ra
	move	$a2, $a0
	move	$gp, $a1
	move	$a1, $v0
	move	$a0, $v1
	mov.s	$f14, $f2
	mov.s	$f13, $f4
	mov.s	$f12, $f3
	sw	$t8, -111($sp)
	addi	$sp, $sp, -112
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 112
	lw	$t8, -111($sp)
	move	$ra, $t8
	li	$v0, 0
	li	$v1, 2
	lw	$a0, -36($sp)
	lw	$a1, -64($sp)
	lw	$a2, -92($sp)
	lw	$a3, -2($sp)
	move	$t8, $ra
	move	$t0, $v1
	move	$gp, $a3
	move	$a3, $a2
	move	$a2, $a1
	move	$a1, $a0
	move	$a0, $v0
	sw	$t8, -111($sp)
	addi	$sp, $sp, -112
	lw	$t8, 0($gp)
	jalr	$ra, $t8
	addi	$sp, $sp, 112
	lw	$t8, -111($sp)
	move	$ra, $t8
	li	$v0, 0
   # main program end
	jr	$ra
