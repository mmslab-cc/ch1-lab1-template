a.out:
	gcc source/Main.c

test: a.out
	bash test.sh
