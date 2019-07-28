%{
#include "language1.h"
#include "y.tab.h"
%}
%%
"(" {return Left_Paren;}
")" {return Right_Paren;}
"{" {return Left_Curly;}
"}" {return Right_Curly;}
"[" {return Left_Bracket;}
"]" {return Right_Bracket;}
main {yylval.strval = strdup(yytext); return m;}
args {yylval.strval = strdup(yytext); return a;}
static {yylval.strval = strdup(yytext); return s1;}
String {yylval.strval = strdup(yytext); return s2;}
public {yylval.strval = strdup(yytext); return p;}
void {yylval.strval = strdup(yytext); return v;}
[ \n\t]+ {return space;}   
%%
int yywrap(void)
{ 
return 1;
}



