	.text
_min_caml_start:
	ori 	$r3, $r0, 1
	ori	$r4, $r0, 2
	mtc1	$f0, $r3
	mtc1	$f1, $r4
	add.s	$f3, $f0, $f1
	mov.s	$r2, $f3
