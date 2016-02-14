# Sumii's Makefile for Min-Caml (for GNU Make)
#
# ack.mlなどのテストプログラムをtest/に用意してmake do_testを実行すると、
# min-camlとocamlでコンパイル・実行した結果を自動で比較します。

RESULT = unicaml
NCSUFFIX = .opt
ASM = ./suiteki
SIM = ./sim

default: debug-code top $(RESULT) do_test
$(RESULT): debug-code top
clean:: nobackup

# ↓もし実装を改造したら、それに合わせて変える
SOURCES = float.c type.ml id.ml m.ml s.ml \
					syntax.ml parser.mly lexer.mll typing.mli typing.ml kNormal.mli kNormal.ml \
					alpha.mli alpha.ml beta.mli beta.ml assoc.mli assoc.ml \
					inline.mli inline.ml constFold.mli constFold.ml elim.mli elim.ml \
					closure.mli closure.ml asm.mli asm.ml virtual.mli virtual.ml \
					simm.mli simm.ml regAlloc.mli regAlloc.ml emit.mli emit.ml \
					main.mli main.ml

# ↓テストプログラムが増えたら、これも増やす
TESTS = print sum-tail gcd sum fib ack even-odd \
				adder funcomp cls-rec cls-bug cls-bug2 \
				shuffle spill spill2 spill3 join-stack join-stack2 join-stack3 \
				join-reg join-reg2 non-tail-if non-tail-if2 \
				inprod inprod-rec inprod-loop matmul matmul-flat non-tail-int branch array mul div

do_test: $(TESTS:%=test/%.cmp)

.PRECIOUS: test/%.s test/% test/%.res test/%.ans test/%.cmp
TRASH = $(TESTS:%=test/%.s) $(TESTS:%=test/%) $(TESTS:%=test/%.res) $(TESTS:%=test/%.ans) $(TESTS:%=test/%.cmp) $(TESTS:%=test/%.s.log) $(TESTS:%=test/%.res.log)

test/%.s: $(RESULT) test/%.ml
	./$(RESULT) test/$* 2> $@.log
test/%: test/%.s
	$(ASM) $^ -o $@
test/%.res: test/%
	$(SIM) $< > $@ 2> $@.log
test/%.ans: test/%.ml
	ocaml $< > $@ 2> /dev/null
test/%.cmp: test/%.res test/%.ans
	diff $^ > $@

min-caml.html: main.mli main.ml id.ml m.ml s.ml \
	syntax.ml type.ml parser.mly lexer.mll typing.mli typing.ml kNormal.mli kNormal.ml \
	alpha.mli alpha.ml beta.mli beta.ml assoc.mli assoc.ml \
	inline.mli inline.ml constFold.mli constFold.ml elim.mli elim.ml \
	closure.mli closure.ml asm.mli asm.ml virtual.mli virtual.ml \
	simm.mli simm.ml regAlloc.mli regAlloc.ml emit.mli emit.ml
	./to_sparc
	caml2html -o min-caml.html $^
	sed 's/.*<\/title>/MinCaml Source Code<\/title>/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	sed 's/charset=iso-8859-1/charset=euc-jp/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	ocaml str.cma anchor.ml < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html

release: min-caml.html
	rm -fr tmp ; mkdir tmp ; cd tmp ; cvs -d:ext:sumii@min-caml.cvs.sf.net://cvsroot/min-caml export -Dtomorrow min-caml ; tar cvzf ../min-caml.tar.gz min-caml ; cd .. ; rm -fr tmp
	cp Makefile stub.c SPARC/libmincaml.S min-caml.html min-caml.tar.gz ../htdocs/

include OCamlMakefile
