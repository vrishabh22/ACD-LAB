%{
	int counter = 0;
%}
letter	[a-zA-Z]

%%
{letter}+	{printf("a word\n"); counter++;}

%%
int main() {
	yylex();
	printf("There are total %d words\n", counter);
	return 0;
}
