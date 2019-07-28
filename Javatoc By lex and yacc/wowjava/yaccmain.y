%{ 
#include<stdlib.h>
#include<string.h>
#include<stdio.h>
#include "language1.h"
CLASS *c;
extern FILE *yyin;
int yyerror(char *str);
int yylex();
FILE *coutfile;
extern char yytext[];
void print_C_program(CLASS *c);
%}
%union {
        char charval;
        char *strval;
        CLASS *CLASSP;
        Name *NameP;
}
%start c

%token Left_Paren Right_Paren Left_Curly Right_Curly Left_Bracket Right_Bracket s Semicolon_token
%token <strval> Class_name object mn Strng args class stat public voi Name_token
%type <CLASSP> c p
%type <NameP> Main Body
%%
c: p s class s Class_name s Left_Curly s Main s Left_Curly s Body s Right_Curly s Right_Curly {
   CLASS *class1;//*classes;
   //Name *name;
  // class1 = (CLASS *) malloc(sizeof(CLASS));
   //class1->classes = (CLASS *) malloc(sizeof(CLASS));
   //class1->name = (Name *) malloc(sizeof(Name));
   class1 = $1;
   while(class1->next != NULL)
		class1 = class1->next;
   class1->next->name = $9;
   class1->next->prev = class1;
   c = $1;
   };
p: p s class s Class_name s Left_Curly s Body s Right_Curly {
   CLASS *class1;
  // class1 = (CLASS *) malloc(sizeof(CLASS));
   char *id;
   class1->name->id = (char *) malloc(sizeof(char)*(strlen($3)+1)); 
   class1 = $1;
   while(class1->next != NULL)
		class1 = class1->next;
   class1->next->name->id = $5;
   class1->next->prev = class1;
   $$ = $1;
   }
   | class s Class_name s Left_Curly s Body s Right_Curly {
   CLASS *class1;
   class1 = (CLASS *) malloc(sizeof(CLASS));
   char *id;
   class1->name->id = (char *) malloc(sizeof(char)*(strlen($3)+1)); 
   class1->name->id=$3;
   class1->prev = NULL;
   $$ = $1;
   };
Main: public s stat s voi s mn Left_Paren Strng s args Left_Bracket Right_Bracket Right_Paren {
   Name *name1;
   name1 = (Name *) malloc(sizeof(Name));
   char *type,*id;
   name1->type =(char *)malloc(sizeof(char)*(strlen($5)+1));
   name1->id = (char *)malloc(sizeof(char)*(strlen($7)+1));
   strcpy(name1->type,$5);
   strcpy(name1->id,$7);
   $$ = name1;
   };
Body: Name_token s Name_token Semicolon_token {
   char *type,*id;
   Name *body;
   body = (Name *)malloc(sizeof(Name));
   body->type=(char *)malloc(sizeof(char)*(strlen($1)+1));
   body->id =(char *)malloc(sizeof(char)*(strlen($3)+1)); 
   body->type = $1;
   body->id = $3;  
   $$ = body; 
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

void print_C_program(CLASS *c)
{ 

  while(1) {
           if(c->next == NULL) {
                    fprintf(coutfile,"%s()\n",c->name->id);
                    fprintf(coutfile,"{\n");
                    fprintf(coutfile,"}\n");
                    break;
           }
           fprintf(coutfile,"struct %s\n",c->name->id);
           fprintf(coutfile,"{\n");
           fprintf(coutfile,"};\n");
           c = c->next; 
} 
}

