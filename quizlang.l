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

digit [0-9]
letter [A-Za-z]
 
%%
 
"QUESTION"          { return QUESTION; }
"ANSWER"            { return ANSWER; }
"FEEDBACK"          { return FEEDBACK; }
"IF"                { return IF; }
"ELSE"              { return ELSE; }
"ENDIF"             { return ENDIF; }
"WHILE"             { return WHILE; }
"ENDWHILE"          { return ENDWHILE; }
"true"              { return TRUE; }
"false"             { return FALSE; }
"&&"                { return AND; }
"||"                { return OR; }
"="                 { return EQUAL_OP; }
"+"                 { return SUM_OP; }
"-"                 { return SUB_OP; }
"*"                 { return MULT_OP; }
"/"                 { return DIV_OP; }
"!="                { return NOTEQUAL_COMPARATOR; }
"=="                { return EQUAL_COMPARATOR; }
">"                 { return GREATERTHAN_COMPARATOR; }
"<"                 { return LESSTHAN_COMPARATOR; }
">="                { return GREATEREQUAL_COMPARATOR; }
"<="                { return LESSEQUAL_COMPARATOR; }
"("                 { return LEFT_PAR; }
")"                 { return RIGHT_PAR; }
","                 { return COMMA; }
"."                 { return DOT; }
":"                 { return COLON; }
";"                 { return SEMICOLON; }
"print"             { return PRINT; }
"array"             { return ARRAY; }
"func"              { return FUNC; }
"endfunc"           { return ENDFUNC; }
"call"              { return CALLFUNC; }
"return"            { return RETURN; }
\/\/.*              { return COMMENT_LINE; }
\".*\"              { yylval.id[0] = strdup(yytext); return STRING; }
{digit}+ { yylval.num = strtol(yytext, NULL, 10); return NUMBER; }
{digit}+\.{digit}+ { yylval.num = atof(yytext); return NUMBER; }
{letter}+({letter}*|{digit}*)  { strcpy(yylval.id, yytext); return FUNCTION_NAME; }
 
%%
 
int yywrap() {
    return 1;
}
 
void yyerror(char *s) {
    fprintf(stderr, "%s on line %d\n", s, yylineno);
}
