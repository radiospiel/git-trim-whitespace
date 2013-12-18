default: ../bin/trim_whitespace

../bin/trim_whitespace: trim_whitespace.fl
	flex -o $^.c $^ 
	cc -o $@ $^.c -O2 -lfl
