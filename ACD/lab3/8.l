%{ #include<stdio.h>
int k=0;
%}

%%
[a-zA-Z]*(ab) { k++;}
%%

int main(int argc[],char **argv[])
{
 yyin=fopen("abc.txt","r");
 yylex(); 
 printf("NUmber of ending with 'ab': %d",k);
 printf("\n");
 return 0;
}