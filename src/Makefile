default: ../bin/trim_whitespace

../bin/trim_whitespace: trim_whitespace.fl
	flex $^
	cc -o $@ lex.yy.c -O2 -lfl
