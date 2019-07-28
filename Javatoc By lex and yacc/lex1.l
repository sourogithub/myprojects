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
"=" {return Equal_token;}
"." {return Period_token;}
"," {return Comma_token;}
"\"" {return quote;}
new {yylval.strval = strdup(yytext);return new;}
main {yylval.strval = strdup(yytext);return mn;}
String {yylval.strval = strdup(yytext);return Strng;}
args {yylval.strval = strdup(yytext);return args;}
class {yylval.strval = strdup(yytext);return class;}
static {yylval.strval = strdup(yytext);return stat;}
public {yylval.strval = strdup(yytext);return public;}
out {yylval.strval = strdup(yytext);return out;}
system {yylval.strval = strdup(yytext);return sys;}
print {yylval.strval = strdup(yytext);return prnt;}
println {yylval.strval = strdup(yytext);return prntln;}
[A-Z]+[A-Za-z0-9_]* {yylval.strval = strdup(yytext);return Class_name;}
[A-Za-z0-9_]+ {yylval.strval = strdup(yytext);return Name_token;}
[ \n\t]* {return s;}   
%%
int yywrap(void)
{ 
return 1;
}



