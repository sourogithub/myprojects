%{ 
#include<stdlib.h>
#include<string.h>
#include<stdio.h>
#include "language1.h"
int yydebug = 1;
name *c;
extern FILE *yyin;
extern char *yytext;
int yyerror(char *str);
int yylex();
FILE *coutfile;
void print_C_program(name *c);
%}
%union {
        char charval;
        char* strval;
        name *nameP;
}
%start c
%token p
%type <strval> p
%type <nameP> c
%%
c: p {
   name *n;
   n = (name *)malloc(sizeof(name));
   char* id; 
   n->id = malloc(sizeof(char)*(strlen($1)+1)); 
   strcpy(n->id,$1);
   c = n;
   };   
%%
   
int yyerror(char *str) {
     fprintf(stderr,"%s",str);
     return 0;
} 
int main(int argc, char *argv[]) {
    int i;
    char errorMessage[MSG_LENGTH];
    if(argc < 3) {
      fprintf(stderr, "usage: %s -JavatoC <java file>.",argv[0]);
      exit(1);
    }
    for(i = 1; i<argc && strcmp(argv[i], "-JavatoC") != 0; i++);
    if (i >= argc-1) {
            fprintf(stderr, "usage: %s -JavatoC <java file>.",argv[0]);
            exit(1);
    }
    yyin = fopen(argv[i+1], "r");
    if (yyin == NULL) {
        sprintf(errorMessage, "cannot open file %s ",argv[i+1]);
        perror(errorMessage);
    }
    if(argc == 4) {
        coutfile = fopen(argv[3],"w+");
        if(coutfile == NULL) {
          sprintf(errorMessage, "cannot open file %s", argv[3]);
          perror(errorMessage);
          printf("printing the grammer to stdout");
          coutfile = stdout;
        }
    }
    else
          coutfile = stdout;
    yyparse();
    fclose(yyin);
    print_C_program(c);
    fclose(coutfile);
    return 0;
}      

void print_C_program(name *c)
{ 
  fprintf(coutfile,"%s\n",c->id);                        
}
     



