%{
	#include<stdio.h>
	int i;
%}

keyword1 scanf
keyword2 printf
%%
{keyword1} {
	//strcpy(yytext,"readf");
	yytext="readf";
	ECHO;
}
{keyword2} {
	//strcpy(yytext,"readf");
	yytext="writef";
	ECHO;
}

%%	

main()
{
//yyin=fopen("test.c","w");
yylex();
}

int yywrap()
{
return 1;
}
