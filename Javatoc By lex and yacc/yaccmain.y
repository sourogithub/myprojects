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
void print_C_body(Body *b);
void print_instances(Instance *i);
void print_rest(Rest *r);
void print_assignments(Assign *a);
void print_methods(Method *m);
void print_C_methods(Method *m);
void print_parameters(Actualparam *p);
void print_others(Other *o);
void print_lines(Line *l);
%}
%union {
        char charval;
        char *strval;
        CLASS *CLASSP;
        Name *NameP;
        Body *BodyP;
        Instance *InstanceP;
        Tins *TinsP;
        Cins *CinsP;
        Assign *AssignP;
        Method *MethodP;
        Prototype *PrototypeP;
        Other *OtherP;
        Funcbody *FuncbodyP;
        Line *LineP;
        Rest *RestP;
        Actualparam *ActualparamP;
}
%start c
%token Left_Paren Right_Paren Left_Curly Right_Curly Left_Bracket Right_Bracket s Semicolon_token Equal_token Period_token Comma_token sys out quote
%type <charval> Semicolon_token Comma_token 
%token <strval> Class_name mn Strng args class stat public Name_token new prnt prntln
%type <CLASSP> c p
%type <NameP> Main
%type <BodyP> Body 
%type <InstanceP> Instances Instanceslist
%type <TinsP> type_ins
%type <CinsP> class_ins
%type <AssignP> Assignments Assignmentslist
%type <MethodP> Methods Methodslist
%type <PrototypeP> func_name
%type <OtherP> Others
%type <FuncbodyP> func_body
%type <LineP> line l
%type <RestP> type_rest class_rest
%type <ActualparamP> func_rest 
%%
c: class s Class_name s Left_Curly s Body s p {
   CLASS *class1,*classes;
   class1 = (CLASS *) malloc(sizeof(CLASS));
   class1->classes = (CLASS *) malloc(sizeof(CLASS));
   Name *name;
   class1->name = (Name *) malloc(sizeof(Name));
   char *id;
   class1->body = $7;
   class1->name->id = (char *) malloc(sizeof(char)*(strlen($3)+1)); 
   class1->name->id = $3;
   class1->classes = $9;
   c = class1;
   } 
   | class s Class_name s Left_Curly s Main s Left_Curly s Body s Right_Curly {
   CLASS *class1;
   class1 = (CLASS *) malloc(sizeof(CLASS));
   class1->body = $11;
   class1->name = $7;
   class1->classes = NULL;
   c = class1;
   };
p: class s Class_name s Left_Curly s Main s Left_Curly s Body s Right_Curly {
   CLASS *class1;
   class1 = (CLASS *) malloc(sizeof(CLASS));
   class1->body = $11;
   class1->name = $7;
   class1->classes = NULL;
   $$ = class1;
   }
   | class s Class_name s Left_Curly s Body s p {
   CLASS *class1,*classes;
   class1 = (CLASS *) malloc(sizeof(CLASS));
   class1->classes = (CLASS *) malloc(sizeof(CLASS));
   Name *name;
   class1->name = (Name *) malloc(sizeof(Name));
   char *id;
   class1->name->id = (char *) malloc(sizeof(char)*(strlen($3)+1)); 
   class1->name->id=$3;
   class1->body = $7;
   class1->classes = $9;
   $$ = class1;
   };
Main: public s stat s Name_token s mn Left_Paren Strng s args Left_Bracket Right_Bracket Right_Paren {
   Name *name1;
   name1 = (Name *) malloc(sizeof(Name));
   char *type,*id;
   name1->type =(char *)malloc(sizeof(char)*(strlen($5)+1));
   name1->id = (char *)malloc(sizeof(char)*(strlen($7)+1));
   strcpy(name1->type,$5);
   strcpy(name1->id,$7);
   $$ = name1;
   }; 
Body: Instanceslist s Assignmentslist s Methodslist s Others s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = $1;
   body->assign = $3;
   body->method = $5;
   body->other = $7;
   $$ = body;
} 
   | Instanceslist s Assignmentslist s Methodslist s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = $1;
   body->assign = $3;
   body->method = $5;
   body->other = NULL;
   $$ = body;
}
   | Assignmentslist s Methodslist s Others s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = $1;
   body->method = $3;
   body->other = $5;
   $$ = body;
}
   | Assignmentslist s Methodslist s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = $1;
   body->method = $3;
   body->other = NULL;
   $$ = body;
}
   | Instanceslist s Methodslist s Others s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = $1;
   body->assign = NULL;
   body->method = $3;
   body->other = $5;
   $$ = body;
}
   | Instanceslist s Methodslist s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = $1;
   body->assign = NULL;
   body->method = $3;
   body->other = NULL;
   $$ = body;
}
   | Instanceslist s Assignmentslist s Others s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = $1;
   body->assign = $3;
   body->method = NULL;
   body->other = $5;
   $$ = body;
}
   | Instanceslist s Assignmentslist s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = $1;
   body->assign = $3;
   body->method = NULL;
   body->other = NULL;
   $$ = body;
} 
   | Instanceslist s Others s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = $1;
   body->assign = NULL;
   body->method = NULL;
   body->other = $3;
   $$ = body;
}  
   | Assignmentslist s Others s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = $1;
   body->method = NULL;
   body->other = $3;
   $$ = body;
}  
   | Methodslist s Others s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = NULL;
   body->method = $1;
   body->other = $3;
   $$ = body;
}
  | Instanceslist s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = $1;
   body->assign = NULL;
   body->method = NULL;
   body->other = NULL;
   $$ = body;
}  
   | Assignmentslist s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = $1;
   body->method = NULL;
   body->other = NULL;
   $$ = body;
}  
   | Methodslist s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = NULL;
   body->method = $1;
   body->other = NULL;
   $$ = body;
} 
  | Others s Right_Curly {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = NULL;
   body->method = NULL;
   body->other = $1;
   $$ = body;
};
Instanceslist: Instances {
       $$ = $1;
   }
   | Instanceslist s Instances {
   Instance *temp;
   temp = (Instance *) malloc(sizeof(Instance));
	temp = $1;
	while(temp->instances != NULL)
		temp = temp->instances;
	temp->instances = $3;
	$3->prev = temp;
	$$ = $1;
};
Instances: type_ins {
   Instance *instance;
   instance = (Instance *) malloc(sizeof(Instance));
   instance->tins = $1;
   instance->cins = NULL;
   instance->instances = NULL;
   instance->prev = NULL;
   $$ = instance;
}
| class_ins {
   Instance *instance;
   instance = (Instance *) malloc(sizeof(Instance));
   instance->tins = NULL;
   instance->cins = $1;
   instance->instances = NULL;
   instance->prev = NULL;
   $$ = instance; 
}; 
type_ins: Name_token s Name_token type_rest {
   char *type,*id;
   Tins *tins;
   tins = (Tins *)malloc(sizeof(Body));
   tins->type=(char *)malloc(sizeof(char)*(strlen($1)+1));
   tins->id =(char *)malloc(sizeof(char)*(strlen($3)+1)); 
   tins->type = $1;
   tins->id = $3;
   tins->rest = $4;  
   $$ = tins; 
}  
   | Name_token s Class_name type_rest {
   char *type,*id;
   Tins *tins;
   tins = (Tins *)malloc(sizeof(Body));
   tins->type=(char *)malloc(sizeof(char)*(strlen($1)+1));
   tins->id =(char *)malloc(sizeof(char)*(strlen($3)+1)); 
   tins->type = $1;
   tins->id = $3;
   tins->rest = $4;  
   $$ = tins; 
}  
   | Right_Paren {
   Tins *tins;
   tins = (Tins *)malloc(sizeof(Body));
   tins = NULL;
   $$ = tins;
}; 
type_rest: Comma_token Name_token type_rest {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($2)+1));
   strcpy(rest->id,$2);
   rest->rest1 = $3;
   $$ = rest;
   }
   | Comma_token Class_name type_rest {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($2)+1));
   strcpy(rest->id,$2);
   rest->rest1 = $3;
   $$ = rest;
   }
   | Semicolon_token {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->end = $1;
   rest->rest1 = NULL;
   $$ = rest;
   }
   | Comma_token Name_token s Name_token type_rest {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($4)+1));
   rest->type = malloc(sizeof(char)*(strlen($2)+1));
   rest->start = $1;
   strcpy(rest->type,$2);
   strcpy(rest->id,$4);
   rest->rest1 = $5;
   $$ = rest;
   }
   | Comma_token Name_token s Class_name type_rest {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($4)+1));
   rest->type = malloc(sizeof(char)*(strlen($2)+1));
   rest->start = $1;
   strcpy(rest->type,$2);
   strcpy(rest->id,$4);
   rest->rest1 = $5;
   $$ = rest;
   }
   | Comma_token Class_name s Name_token type_rest {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($4)+1));
   rest->type = malloc(sizeof(char)*(strlen($2)+1));
   rest->start = $1;
   strcpy(rest->type,$2);
   strcpy(rest->id,$4);
   rest->rest1 = $5;
   $$ = rest;
}
   | Comma_token Class_name s Class_name type_rest {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($4)+1));
   rest->type = malloc(sizeof(char)*(strlen($2)+1));
   rest->start = $1;
   strcpy(rest->type,$2);
   strcpy(rest->id,$4);
   rest->rest1 = $5;
   $$ = rest;
}
   | Right_Paren {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->rest1 = NULL;
   $$ = rest;   
 };
class_ins: Class_name s Name_token class_rest {
   Cins *cins;
   char *id,*obj;
   cins = (Cins *) malloc(sizeof(Cins));
   cins->id = malloc(sizeof(char)*(strlen($1)+1));
   cins->obj = malloc(sizeof(char)*(strlen($3)+1));
   cins->id = $1;
   cins->obj = $3;
   cins->rest = $4;
   cins->param = NULL;
   $$ = cins;
}
| Class_name s Class_name class_rest {
   Cins *cins;
   char *id,*obj;
   cins = (Cins *) malloc(sizeof(Cins));
   cins->id = malloc(sizeof(char)*(strlen($1)+1));
   cins->obj = malloc(sizeof(char)*(strlen($3)+1));
   cins->id = $1;
   cins->obj = $3;
   cins->rest = $4;
   cins->param = NULL;
   $$ = cins;
}
| Class_name s Class_name s Equal_token s new s Class_name Left_Paren func_rest {
   Cins *cins;
   char *id,*obj;
   cins = (Cins *) malloc(sizeof(Cins));
   cins->id = malloc(sizeof(char)*(strlen($1)+1));
   cins->obj = malloc(sizeof(char)*(strlen($3)+1));
   strcpy(cins->id,$1);
   strcpy(cins->obj,$3);
   cins->rest = NULL;
   cins->param = $11;
   $$ = cins;
}
 
| Class_name s Name_token s Equal_token s new s Class_name Left_Paren func_rest {
   Cins *cins;
   char *id,*obj;
   cins = (Cins *) malloc(sizeof(Cins));
   cins->id = malloc(sizeof(char)*(strlen($1)+1));
   cins->obj = malloc(sizeof(char)*(strlen($3)+1));
   strcpy(cins->id,$1);
   strcpy(cins->obj,$3);
   cins->rest = NULL;
   cins->param = $11;
   $$ = cins;
};

class_rest: Comma_token Name_token class_rest {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($2)+1));
   strcpy(rest->id,$2);
   rest->rest1 = $3;
   $$ = rest;
   }
   | Comma_token Class_name class_rest {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($2)+1));
   strcpy(rest->id,$2);
   rest->rest1 = $3;
   $$ = rest;
   }
   | Semicolon_token {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->end = $1;
   rest->rest1 = NULL;
   $$ = rest;
   }
   | Comma_token Name_token s Name_token class_rest {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($4)+1));
   rest->type = malloc(sizeof(char)*(strlen($2)+1));
   rest->start = $1;
   strcpy(rest->type,$2);
   strcpy(rest->id,$4);
   rest->rest1 = $5;
   $$ = rest;
   }
   | Comma_token Name_token s Class_name class_rest {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($4)+1));
   rest->type = malloc(sizeof(char)*(strlen($2)+1));
   rest->start = $1;
   strcpy(rest->type,$2);
   strcpy(rest->id,$4);
   rest->rest1 = $5;
   $$ = rest;
   }
   | Comma_token Class_name s Name_token class_rest {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($4)+1));
   rest->type = malloc(sizeof(char)*(strlen($2)+1));
   rest->start = $1;
   strcpy(rest->type,$2);
   strcpy(rest->id,$4);
   rest->rest1 = $5;
   $$ = rest;  
 } 
   | Comma_token Class_name s Class_name class_rest {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen($4)+1));
   rest->type = malloc(sizeof(char)*(strlen($2)+1));
   rest->start = $1;
   strcpy(rest->type,$2);
   strcpy(rest->id,$4);
   rest->rest1 = $5;
   $$ = rest;  
 }
   | Right_Paren {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->rest1 = NULL;
   $$ = rest;   
 };

Assignmentslist: Assignments {
   $$ = $1;
}
| Assignmentslist s Assignments {
   Assign *temp;
   temp = (Assign *) malloc(sizeof(Assign));
	temp = $1;
	while(temp->assign1 != NULL)
		temp = temp->assign1;
	temp->assign1 = $3;
	$3->prev = temp;
	$$ = $1;
};
Assignments: Name_token Period_token Name_token s Equal_token s Name_token Semicolon_token {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen($1)+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen($3)+1));
   assign->value = (char *) malloc(sizeof(char)*(strlen($7)+1));
   strcpy(assign->obj,$1);
   strcpy(assign->var,$3);
   strcpy(assign->value,$7);
   assign->func = NULL;
   assign->prev = NULL;
   assign->assign1 = NULL;
   $$ = assign;
}
| Class_name Period_token Name_token s Equal_token s Name_token Semicolon_token {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen($1)+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen($3)+1));
   assign->value = (char *) malloc(sizeof(char)*(strlen($7)+1));
   strcpy(assign->obj,$1);
   strcpy(assign->var,$3);
   strcpy(assign->value,$7);
   assign->func = NULL;
   assign->prev = NULL;
   assign->assign1 = NULL;
   $$ = assign;
}
| Name_token Period_token Class_name s Equal_token s Name_token Semicolon_token {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen($1)+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen($3)+1));
   assign->value = (char *) malloc(sizeof(char)*(strlen($7)+1));
   strcpy(assign->obj,$1);
   strcpy(assign->var,$3);
   strcpy(assign->value,$7);
   assign->func = NULL;
   assign->prev = NULL;
   assign->assign1 = NULL;
   $$ = assign;
}
| Class_name Period_token Class_name s Equal_token s Name_token Semicolon_token {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen($1)+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen($3)+1));
   assign->value = (char *) malloc(sizeof(char)*(strlen($7)+1));
   strcpy(assign->obj,$1);
   strcpy(assign->var,$3);
   strcpy(assign->value,$7);
   assign->func = NULL;
   assign->prev = NULL;
   assign->assign1 = NULL;
   $$ = assign;
}
|  Name_token Period_token func_name {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen($1)+1));
   strcpy(assign->obj,$1);
   assign->var = NULL;
   assign->value = NULL;
   assign->func = $3;
   assign->prev = NULL;
   assign->assign1 = NULL;
   $$ = assign;
}
|  Class_name Period_token func_name {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen($1)+1));
   strcpy(assign->obj,$1);
   assign->func = $3;
   assign->var = NULL;
   assign->value = NULL;
   assign->prev = NULL;
   assign->assign1 = NULL;
   $$ = assign;
}
| Name_token s Equal_token s Name_token Period_token func_name {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen($5)+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen($1)+1)); 
   strcpy(assign->obj,$5); 
   strcpy(assign->var,$1);
   assign->value = NULL;
   assign->func = $7;
   assign->prev = NULL;
   assign->assign1 = NULL;
   $$ = assign;
}
| Class_name s Equal_token s Name_token Period_token func_name {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen($5)+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen($1)+1)); 
   strcpy(assign->obj,$5); 
   strcpy(assign->var,$1);
   assign->value = NULL;
   assign->func = $7;
   assign->prev = NULL;
   assign->assign1 = NULL;
   $$ = assign;
}
| Name_token s Equal_token s Class_name Period_token func_name {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen($5)+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen($1)+1)); 
   strcpy(assign->obj,$5); 
   strcpy(assign->var,$1);
   assign->value = NULL;
   assign->func = $7;
   assign->prev = NULL;
   assign->assign1 = NULL;
   $$ = assign;
}
| Class_name s Equal_token s Class_name Period_token func_name {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen($5)+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen($1)+1)); 
   strcpy(assign->obj,$5); 
   strcpy(assign->var,$1);
   assign->value = NULL;
   assign->func = $7;
   assign->prev = NULL;
   assign->assign1 = NULL;
   $$ = assign;
};
Methodslist: Methods {
   $$ = $1;
}
| Methodslist s Methods {
   Method *temp;
   temp = (Method *) malloc(sizeof(Method));
	temp = $1;
	while(temp->method1 != NULL)
		temp = temp->method1;
	temp->method1 = $3;
	$3->prev = temp;
	$$ = $1;
};  
Methods: Name_token s func_name s Left_Curly s func_body s Right_Curly {
   Method *method;
   char *type;
   method = (Method *) malloc(sizeof(Method));
   method->type = malloc(sizeof(char)*(strlen($1)+1));
   strcpy(method->type,$1);
   method->proto = $3;
   method->func_body = $7;
   method->method1 = NULL;
   $$ = method;
   };
 
func_name: Name_token Left_Paren class_ins {
   Prototype *proto;
   char *id;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen($1)+1));
   strcpy(proto->id,$1);
   proto->cins = $3;
   proto->tins = NULL;
   proto->actualparam = NULL;
   $$ = proto;
   }
   | Name_token Left_Paren type_ins {
   Prototype *proto;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen($1)+1));
   strcpy(proto->id,$1);
   proto->cins = NULL;
   proto->tins = $3;
   proto->actualparam = NULL;
   $$ = proto;
   }
   | Name_token Left_Paren func_rest {
   Prototype *proto;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen($1)+1));
   strcpy(proto->id,$1);
   proto->cins = NULL;
   proto->tins = NULL;
   proto->actualparam = $3;
   $$ = proto;
   }
   | Class_name Left_Paren class_ins {
   Prototype *proto;
   char *id;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen($1)+1));
   strcpy(proto->id,$1);
   proto->cins = $3;
   proto->tins = NULL;
   proto->actualparam = NULL;
   $$ = proto;
   }
   | Class_name Left_Paren type_ins {
   Prototype *proto;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen($1)+1));
   strcpy(proto->id,$1);
   proto->cins = NULL;
   proto->tins = $3;
   proto->actualparam = NULL;
   $$ = proto;
   }
   | Class_name Left_Paren func_rest {
   Prototype *proto;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen($1)+1));
   strcpy(proto->id,$1);
   proto->cins = NULL;
   proto->tins = NULL;
   proto->actualparam = $3;
   $$ = proto;
   };
func_rest: Right_Paren Semicolon_token {
    Actualparam *temp;
   temp = (Actualparam *) malloc(sizeof(Actualparam));
   temp->param1 = NULL;
   temp->value = NULL;
   $$ = temp;
   }
   | Name_token Right_Paren Semicolon_token {
   char *value;
   Actualparam *temp;
   temp = (Actualparam *) malloc(sizeof(Actualparam)); 
   temp->value = malloc(sizeof(char)*(strlen($1)+1));
   temp->value = $1;
   temp->param1 = NULL;
   $$ = temp;
   }
   | Name_token Comma_token func_rest {
   char *value;
   Actualparam *temp;
   temp = (Actualparam *) malloc(sizeof(Actualparam)); 
   temp->value = malloc(sizeof(char)*(strlen($1)+1));
   temp->value = $1;
   temp->param1 = $3;
   $$ = temp;	
   }; 
func_body: Others {
   Funcbody *funcbody;
   funcbody = (Funcbody *) malloc(sizeof(Funcbody));
   funcbody->other = $1;
   $$ = funcbody;	 
};
Others: line Semicolon_token {
   Other *other;
   other = (Other *) malloc(sizeof(Other));
   other->line = $1;
   other->other1 = NULL;
   $$ = other;
   };

line: l {
       $$ = $1;
   }
   | line s l {
   Line *temp;
   temp = (Line *) malloc(sizeof(Line));
	temp = $1;
	while(temp->line1 != NULL)
		temp = temp->line1;
	temp->line1 = $3;
	$3->prev = temp;
	$$ = $1;
   } 
   | sys Period_token out Period_token prntln Left_Paren line Right_Paren {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->prints = malloc(sizeof(char)*(strlen($5)+1));;
   strcpy(line->prints,$5);
   line->line1 = $7;
   $$ = line;
   }
   | sys Period_token out Period_token prnt Left_Paren line Right_Paren {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->prints = malloc(sizeof(char)*(strlen($5)+1));
   strcpy(line->prints,$5);
   line->line1 = $7;
   $$ = line;
   }
   | sys Period_token out Period_token prntln Left_Paren quote line quote Right_Paren {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->prints = malloc(sizeof(char)*(strlen($5)+1));;
   strcpy(line->prints,$5);
   line->line1 = $8;
   $$ = line;
   }
   | sys Period_token out Period_token prnt Left_Paren quote line quote Right_Paren {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->prints = malloc(sizeof(char)*(strlen($5)+1));
   strcpy(line->prints,$5);
   line->line1 = $8;
   $$ = line;
   };  
l: Name_token {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->chars = malloc(sizeof(char)*(strlen($1)+1));
   strcpy(line->chars,$1);
   line->line1 = NULL;
   line->prev = NULL;
   $$ = line;
   }
   | Class_name {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->chars = malloc(sizeof(char)*(strlen($1)+1));
   strcpy(line->chars,$1);
   line->line1 = NULL;
   line->prev = NULL;
   $$ = line;
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
{ Body *b;
  while(1) {
           if(c->classes == NULL) {
                    fprintf(coutfile,"%s %s()\n",c->name->type,c->name->id);
                    fprintf(coutfile,"{\n");
                    b = c->body;
                    print_C_body(b);
                    fprintf(coutfile,"}\n");
                    break;
           }
           fprintf(coutfile,"struct %s\n",c->name->id);
           fprintf(coutfile,"{\n");
           b = c->body;
           print_C_body(b);
           fprintf(coutfile,"};\n");
           Method *m = c->body->method;
           print_C_methods(m);
           fprintf(coutfile,"\n");
           c = c->classes; 
} 
}
void print_C_body(Body *b)
{
   Instance *i;
   Assign *a;
   Method *m;
   Other *o;
   
   i = b->instance;
   a = b->assign;
   m = b->method;
   o = b->other;
   if(i != NULL){print_instances(i);}
   if(a != NULL){print_assignments(a);}
   if(m != NULL){print_methods(m);}
   if(o != NULL){print_others(o);}
   fprintf(coutfile,"\n");
  
}
void print_instances(Instance *i)
{
  while(1){	
   if(i->instances == NULL){
          if(i->tins == NULL){
                  fprintf(coutfile,"struct %s %s",i->cins->id,i->cins->obj);
                  Actualparam *p = i->cins->param;
                  if(i->cins->param->value)
                  {
                    fprintf(coutfile,";\n");
                    fprintf(coutfile,"%s.%s=%s1;\n%s1(",i->cins->obj,i->cins->id,i->cins->id,i->cins->id);
                    print_parameters(p);
                    fprintf(coutfile,")");
                  }
                   else{}
                   fprintf(coutfile,";\n");                              
               }
          else {
                  fprintf(coutfile,"%s %s",i->tins->type,i->tins->id);
                  Rest *r = i->tins->rest;
                  print_rest(r);
                  fprintf(coutfile,";\n");
               }
   break; 
   }  
   if(i->tins == NULL){
     fprintf(coutfile,"struct %s %s",i->cins->id,i->cins->obj);
      Actualparam *p = i->cins->param;
      if(i->cins->param->value)
         {
         fprintf(coutfile,";\n");
         fprintf(coutfile,"%s.%s=%s1;\n%s1(",i->cins->obj,i->cins->id,i->cins->id,i->cins->id);
         print_parameters(p);
         fprintf(coutfile,")");
         }
         else{}
       fprintf(coutfile,";\n");
     i = i->instances;
   }
   else {
    fprintf(coutfile,"%s %s",i->tins->type,i->tins->id);
    Rest *r = i->tins->rest;
    print_rest(r);
    fprintf(coutfile,";\n");
    i = i->instances;
    }
}
}

void print_rest(Rest *r)
{
  while(1){
   if(r->rest1 == NULL){
     if(r->type == NULL){
     
     }
     else
     {
     fprintf(coutfile,",%s %s",r->type,r->id);
     } 
     break;
   }
   if(r->type == NULL)
   {
   fprintf(coutfile,",%s",r->id);
   }
   else
   {
   fprintf(coutfile,",%s %s",r->type,r->id);
   }
   r = r->rest1;
}
}	 
       
void print_assignments(Assign *a)
{  
  while(1)
  {
   if(a->assign1 == NULL){
      if(a->func == NULL){
         fprintf(coutfile,"%s.%s=%s;\n",a->obj,a->var,a->value);
      }
      else if(a->var == NULL && a->value == NULL){
         fprintf(coutfile,"%s.%s=%s1;\n%s1(",a->obj,a->func->id,a->func->id,a->func->id);
         Actualparam *p = a->func->actualparam;
         if(a->func->actualparam->value)
         {
         print_parameters(p);
         }
         else{}
         fprintf(coutfile,");\n");
      }
      else if(a->value == NULL && a->var != NULL){
         fprintf(coutfile,"%s.%s=%s1;\n%s=%s1(",a->obj,a->func->id,a->func->id,a->var,a->func->id);
         Actualparam *p = a->func->actualparam;
         if(a->func->actualparam->value)
         {
         print_parameters(p);
         }
         else{}
         fprintf(coutfile,");\n");
      }
      
      else {
      }
      break;
      }
       if(a->func == NULL){
         fprintf(coutfile,"%s.%s=%s;\n",a->obj,a->var,a->value);
         a = a->assign1;
      }
      else if(a->value == NULL && a->var != NULL){
         fprintf(coutfile,"%s.%s=%s1;\n%s=%s1(",a->obj,a->func->id,a->func->id,a->var,a->func->id);
         Actualparam *p = a->func->actualparam;
         if(a->func->actualparam->value)
         {
         print_parameters(p);
         }
         else{}
         fprintf(coutfile,");\n");
         a = a->assign1;
      }
      else if(a->var == NULL && a->value == NULL){
         fprintf(coutfile,"%s.%s=%s1;\n%s1(",a->obj,a->func->id,a->func->id,a->func->id);
         Actualparam *p = a->func->actualparam;
         if(a->func->actualparam->value)
         {
         print_parameters(p);
         }
         else{}
         fprintf(coutfile,");\n");
         a = a->assign1;
      }
      else{
     }
      
     }          
}

void print_methods(Method *m)
{
  while(1)
  {
   if(m->method1 == NULL){
      fprintf(coutfile,"%s (*%s)(",m->type,m->proto->id);
      if(m->proto->tins == NULL && m->proto->cins == NULL){
      
      }
      else if(m->proto->tins == NULL){
      fprintf(coutfile,"struct %s %s",m->proto->cins->id,m->proto->cins->obj);
      Rest *r = m->proto->cins->rest;
      print_rest(r);
      }
      else
      {
      fprintf(coutfile,"%s %s",m->proto->tins->type,m->proto->tins->id);
      Rest *r = m->proto->tins->rest;
      print_rest(r);
      }
      fprintf(coutfile,");\n");
      break;
      }
      fprintf(coutfile,"%s (*%s)(",m->type,m->proto->id);
      if(m->proto->tins == NULL && m->proto->cins == NULL){
      
      }
      else if(m->proto->tins == NULL) 
      {
      fprintf(coutfile,"struct %s %s",m->proto->cins->id,m->proto->cins->obj);
      Rest *r = m->proto->cins->rest;
      print_rest(r);
      }
      else {
      fprintf(coutfile,"%s %s",m->proto->tins->type,m->proto->tins->id);
      Rest *r = m->proto->tins->rest;
      print_rest(r);
      }
      fprintf(coutfile,");\n");
      m = m->method1;
      }
}


void print_C_methods(Method *m)
{
  while(1)
  {
    if(m->method1 == NULL){
      fprintf(coutfile,"%s %s1(",m->type,m->proto->id);
      if(m->proto->cins == NULL && m->proto->tins == NULL){
      
      }
      else if(m->proto->cins == NULL)
      {
      fprintf(coutfile,"%s %s",m->proto->tins->type,m->proto->tins->id);
      Rest *r = m->proto->tins->rest;
      print_rest(r);
      }
      else{
      fprintf(coutfile,"struct %s %s",m->proto->cins->id,m->proto->cins->obj);
      Rest *r = m->proto->cins->rest;
      print_rest(r);  
      }
      fprintf(coutfile,")\n{\n");
      Other *o = m->func_body->other;
      print_others(o);
      fprintf(coutfile,"\n}");
      break;
      }
      fprintf(coutfile,"%s %s1(",m->type,m->proto->id);
      if(m->proto->cins == NULL && m->proto->tins == NULL){
      
      }
      else if(m->proto->cins == NULL)
      {
      fprintf(coutfile,"%s %s",m->proto->tins->type,m->proto->tins->id);
      Rest *r = m->proto->tins->rest;
      print_rest(r);
      }
      else
      {
      fprintf(coutfile,"struct %s %s",m->proto->cins->id,m->proto->cins->obj);
      Rest *r = m->proto->cins->rest;
      print_rest(r); 
      }
      fprintf(coutfile,")\n{\n");
      Other *o = m->func_body->other;
      print_others(o);
      fprintf(coutfile,"\n}\n");
      m = m->method1;
      }
}

void print_parameters(Actualparam *p)
{
 if(p->value == NULL && p->param1 == NULL)
 {
 }
 while(1)
 {
  if(p->param1 == NULL){
  fprintf(coutfile,"%s",p->value);
  break;
  }
  fprintf(coutfile,"%s,",p->value);
  p = p->param1;
 }
}

void print_others(Other *o)
{
 Line *l = o->line;
 print_lines(l);
}
void print_lines(Line *l)
{
 while(1)
 {
      if(l->line1 == NULL)
      { 
        fprintf(coutfile,"%s ",l->chars);
        break;
      }
      if(l->prints == NULL)
      {
         fprintf(coutfile,"%s ",l->chars);
         l = l->line1;
      }
      else{
         fprintf(coutfile,"printf(\"");
         while(1)
         {
            if(l->line1 == NULL)
            {
            break;
            }
            l = l->line1;
            fprintf(coutfile,"%s ",l->chars);
         }
         fprintf(coutfile,"\")");
         }
    break;
  }
fprintf(coutfile,";");
}
