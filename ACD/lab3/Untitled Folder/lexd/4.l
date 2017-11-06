%{
	int count_comm=0,count_iden=0;
%}

op [+-*/]
letter [a-zA-Z]
digit [0-9]
id {letter}*|({letter}{digit})+
notid ({digit}{letter})+

%%

\/\/.*	{ 
		count_comm++; }
\/\*(.*\n)*.*\*\/	{ 
					count_comm++; }

[\t\n]+	ECHO;

("main")|("stdio.h")|("include")|("int")|("float")|("char")|("case")|("default")|("if")|("else")|("for")|("while")|("printf")|("scanf")  ECHO; 

{id}	{count_iden++;}
{notid}|{digit}+	ECHO;



%%

main()
{
	yylex();
	printf("\n\nNumber of comments:%d\n",count_comm);
	printf("\n\nNumber of identifiers:%d\n",count_iden);
}
