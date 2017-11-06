%{
	int count=0;
%}

%%

printf		{count++;
			 printf("writef");
			}

scanf		{count++;
			 printf("readf");
			}

.			ECHO;
\n			ECHO;

%%

int main()
{
	yylex();
	printf("Occurences:%d\n",count);

}