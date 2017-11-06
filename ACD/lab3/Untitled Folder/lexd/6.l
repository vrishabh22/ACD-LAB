%{

int c=0;

%}

%%

(""[aA][nN][dD]"")|(""[oO][rR]"")|(""[bB][uU][tT]"") {c=1;}

%%

int main()

{

printf("Enter the sentence\n");

yylex();

if(c==1) 

printf("\nCompound sentence\n");

else 

printf("\nSimple sentence\n");

return 0;

}