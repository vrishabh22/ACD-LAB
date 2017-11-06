%{
/* 4a.y Yacc Program to check the validity of an arithmetic Expression that uses operators +, -, *, /
*/
#include<stdio.h>
#include<stdlib.h>
%}
%token NUM  ID
%left '+' '-'
%left '*' '/'
%%
e : e '+' e
|   e '-' e
|   e '*' e
|   e '/' e
|   '('e')'
| NUM
| ID         ;
%%

#include "lex.yy.c"

main()
{
printf(" Type the Expression & Press Enter key\n");
yyparse();
printf(" Valid Expression \n");
}
yyerror()
{
printf(" Invalid Expresion!!!!\n"); exit(0);
}
