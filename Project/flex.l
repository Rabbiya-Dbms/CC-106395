%{                                                               /* Literal block */
#include "scanner.h"                                             /* Scanner header file */

#define ID 1
#define Keywords 10
#define SP 10
#define PRE_ID 4
#define LITERAL 5

int line = 1;                                                   /* Current line number */
int pos = 0;                                                    /* Start position of token */
int epos = 1;                                                   /* End position of token */
OpType op;                                                      /* Last operator scanned */
void lex_err(char*, char*);                                     /* Reports lexical errors */
%}


letter [A-Za-z_]                                                 /* letter can be underscore */
digit [0-9]
blank_str [ \t]+
identifier {letter}({letter}|{digit})*
int_literal {digit}+
str_literal \"([^\"\n])*\"
open_string \"([^\"\n])*$

%%
[a-z]|[A-Z]|[0-9]|"_"*           printf("%d %s\n",ID,yytext);
"+"|"-"|"*"|"="|"<>"|"<"|">"|"<="|">="|"("|")"|"["|"]"|":="|"."|","|";"|":"|".."|"div"|"or"|"and"|"not"|"if"|"then"|"else"|"of"|"while"|"reprat"|"until"|"end"|"read"|"write"|"var"|"array"|"procedure"|"program"	printf("%d %s\n",SYMBOL,yytext);
integer|Boolean|true|false	printf("%d %s\n",PR,yytext);

['a-zA-Z'|"a-zA-Z]*|[0-9]*|[[a-z]|[A-Z]|[0-9]]*	 printf("%d %s\n",C,yytext);

%%

%% /* Second section */
\n {line++; epos = 1;}
{blank_str} {epos += yyleng;}
[Ii][Ff] {pos = epos; epos += 2; return IF_TK;}
[Tt][Hh][Ee][Nn] {pos = epos; epos += 4; return THEN_TK;}
[Ee][Ll][Ss][Ee] {pos = epos; epos += 4; return ELSE_TK;}
[Ee][Nn][Dd] {pos = epos; epos += 3; return END_TK;}
[Ww][Hh][Ii][Ll][Ee] {pos = epos; epos += 5; return WHILE_TK;}
[Dd][Oo] {pos = epos; epos += 2; return DO_TK;}
[Rr][Ee][Aa][Dd] {pos = epos; epos += 4; return READ_TK;}
[Ww][Rr][Ii][Tt][Ee] {pos = epos; epos += 5; return WRITE_TK;}
{identifier} {pos = epos; epos += yyleng;
return ID;}
{str_literal} {pos = epos; epos += yyleng;
return STRLIT;}
{int_literal} {pos = epos; epos += yyleng;
return INTLIT;}

%%

int yywrap(){}

int main(){

yylex();

printf("\nNumber of Capital Letters")
