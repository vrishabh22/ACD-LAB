%{
	#include<stdio.h>
	#include<string.h>
	#include<ctype.h>
	FILE *ff,*fr;
	char p[20],q[20],r[20],fname[20];
%}

word [a-zA-Z]+
eol \n

%%
{word} {
	   		if(strcmp(p,tolower(yytext))==0)
	   			fprintf(fr,q);
	   		else
	   			fprintf(fr,yytext);
	   }

{eol}	{
			fprintf(fr,yytext);
		}

.		{
			fprintf(fr,yytext);
		}

%%	

int main()
{
	printf("Enter filename: ");
	scanf("%s",&fname);
	printf("\nEnter string to be replaced: ");
	scanf("%s",&p);
	printf("\nEnter new string:");
	scanf("%s",&q);
	ff=fopen(fname,"r+");
	fr=fopen("op9.txt","w");
	yyin=ff;
	yylex();
	return 0;
}

