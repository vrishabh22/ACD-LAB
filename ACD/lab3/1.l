%{ #include<stdio.h>
int k=0;
int countid=0;
%}

%%
[a-zA-Z]+ {countid++;
if(yyleng>k)
{  k= yyleng;
}
}
%%

int main(int argc[],char **argv[])
{
 yyin=fopen("abc.txt","r");
 yylex(); 
 printf("largest: %d",k);
 printf("largest1111: %d",countid);

 printf("\n");
 return 0;
}