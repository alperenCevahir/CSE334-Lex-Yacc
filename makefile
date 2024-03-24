myprog: quizlang.l
	lex quizlang.l
	gcc -o quizlang lex.yy.c -ll

clean:
	rm quizlang lex.yy.c
