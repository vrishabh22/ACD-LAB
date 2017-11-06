%{
#include<stdio.h>
#include<stdlib.h>
int count=0;
%}

%token IF RELOP S NUMBER ID NL

%%
stmt: if_stmt NL {printf("No. of nested if statements are=%d\n",count);exit(0);}
;
if_stmt : IF'('cond')''{'if_stmt'}' {count++;}
          |S
;
cond: x RELOP x 
;
x:ID | NUMBER
;
%%

#include "lex.yy.c"
main()
{
printf("enter\n");
yyparse();
}
yyerror()
{
printf(" Invalid\n"); exit(0);
}
