%{
#include "language1.h"
#include "y.tab.h"
#include<string.h>
%}
%%
"(" {return Left_Paren;}
")" {return Right_Paren;}
"{" {return Left_Curly;}
"}" {return Right_Curly;}
"[" {return Left_Bracket;}
"]" {return Right_Bracket;}
";" {return Semicolon_token;}
main {yylval.strval = strdup(yytext);return mn;}
String {yylval.strval = strdup(yytext);return Strng;}
args {yylval.strval = strdup(yytext);return args;}
class {yylval.strval = strdup(yytext);return class;}
static {yylval.strval = strdup(yytext);return stat;}
public {yylval.strval = strdup(yytext);return public;}
void {yylval.strval = strdup(yytext);return voi;}
[A-Z]+[A-Za-z0-9]* {yylval.strval = strdup(yytext);return Class_name;}
[A-Za-z0-9_]+ {yylval.strval = strdup(yytext);return Name_token;}
[ \n\t]+ {return s;}   
%%
int yywrap(void)
{ 
return 1;
}



