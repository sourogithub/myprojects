%{
#include "language1.h"
#include "y.tab.h"
#include<string.h>
%}
%%
[A-Za-z]+ {yylval.strval=strdup(yytext);return p;}
%%
int yywrap(void)
{ 
return 1;
}



