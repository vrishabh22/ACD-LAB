%{
	int longest=0;
	char longword[100];
%}

%%

[a-zA-Z]+	{if (yyleng > longest) 
				{
					longest=yyleng;
					strcpy(longword,yytext);
				}
			}
.			|
\n			;

%%

int main()
{
	yylex();
	char rlongword[60];
	int i;
	for(i=0;i<longest;i++)
	{
		rlongword[i]=longword[longest-i-1];
	}
	printf("The longest word was \"%s\" of length %d\nThe reverse is \"%s\"\n",longword,longest,rlongword);
	return 0;
}