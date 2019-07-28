%{ 
#include<stdlib.h>
#include<string.h>
#include<stdio.h>
#include "language1.h"
Name *c;
extern FILE *yyin;
int yyerror(char *str);
int yylex();
FILE *coutfile;
extern char yytext[];
void print_C_program(Name *n);
%}
%union {
        char *strval;
        char charval;
        Name *NameP;
}
%start c
%token Left_Paren Right_Paren Left_Curly Right_Curly Left_Bracket Right_Bracket space
%token <charval> 
%token <strval> p m s1 s2 a v 
%type <NameP> c 
%%
c: p space s1 space v space m Left_Paren s2 space a Left_Bracket Right_Bracket Right_Paren {
   Name *name1;
   name1 = (Name *) malloc(sizeof(Name));
   char *string,*type,*id;
   name1->string = (char *)malloc(sizeof(char)*(strlen($1)+1));
   name1->type = (char *)malloc(sizeof(char)*(strlen($5)+1)); 
   name1->id = (char *)malloc(sizeof(char)*(strlen($7)+1));
   name1->type = $5;
   name1->id = $7;
   strcpy(name1->string,$1);
   c = name1;
   };   
%%
   
int yyerror(char *str) {
     fprintf(stderr,"%s\n",str);
     return 0;
} 
int main(int argc, char *argv[]) {
    int i;
    char errorMessage[MSG_LENGTH];
    if(argc < 3) {
      fprintf(stderr, "usage: %s -JavatoC <java file>.\n",argv[0]);
      exit(1);
    }
    for(i = 1; i<argc && strcmp(argv[i], "-JavatoC") != 0; i++);
    if (i >= argc-1) {
            fprintf(stderr, "usage: %s -JavatoC <java file>.\n",argv[0]);
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

void print_C_program(Name *n)
{ 
  fprintf(coutfile,"%s ",n->string);
  fprintf(coutfile,"%s()\n",n->id);
  fprintf(coutfile,"{\n");
  fprintf(coutfile,"}\n");
                          
}

