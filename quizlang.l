%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
 
#define QUESTION 1
#define ANSWER 2
#define FEEDBACK 3
#define IF 4
#define ELSE 5
#define ENDIF 6
#define WHILE 7
#define ENDWHILE 8
#define STRING 9
#define NUMBER 10
#define BOOLEAN 11
#define AND 12
#define OR 13
#define EQUAL_OP 14
#define SUM_OP 15
#define SUB_OP 16
#define MULT_OP 17
#define DIV_OP 18
#define NOTEQUAL_COMPARATOR 19
#define EQUAL_COMPARATOR 20
#define GREATERTHAN_COMPARATOR 21
#define LESSTHAN_COMPARATOR 22
#define GREATEREQUAL_COMPARATOR 23
#define LESSEQUAL_COMPARATOR 24
#define LEFT_PAR 25
#define RIGHT_PAR 26
#define COMMA 27
#define DOT 28
#define COLON 29
#define SEMICOLON 30
#define PRINT 31
#define ARRAY 32
#define FUNC 33
#define ENDFUNC 34
#define CALLFUNC 35
#define RETURN 36
#define TRUE 37
#define FALSE 38
#define COMMENT_LINE 39
#define FUNCTION_NAME 40
 
/* Declare yylval union */
typedef union {
    int num;
    char id[256];
} YYSTYPE;
 
extern YYSTYPE yylval;
 
%}
