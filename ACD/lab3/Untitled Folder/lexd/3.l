%{
	int rep;
%}

%%

[a-z]	{
			rep=yytext[0]+5;
			
			if(rep>122)
				printf("%c",(char)(rep-122+96));
			else
				printf("%c",rep);
		}

[A-Z]	{
			rep=yytext[0]+5;
			
			if(rep>90)
				printf("%c",(char)(rep-90+64));
			else
				printf("%c",rep);
		}

.		ECHO;
\n		ECHO;

%%

int main()
{
	yylex();
}