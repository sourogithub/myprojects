#include <stdio.h>
#define MSG_LENGTH 100   		     
typedef struct name {
        char *type;
	char *id;
} Name;
typedef struct typerest {
        char start;
	char *type;
        char *id;
        char end;
	struct typerest *rest1;
} Rest;
typedef struct actualparam {
	char *value;
	struct actualparam *param1;
        struct actualparam *prev;
} Actualparam;
typedef struct tins {
        char *type;
	char *id;
        Rest *rest;
} Tins; 
typedef struct cins {
        char *id;
        char *obj;
        Rest *rest;
        Actualparam *param;
} Cins;
typedef struct instance {
        Tins *tins;
        Cins *cins;
        struct instance *instances;
        struct instance *prev;
} Instance;
typedef struct prototype {
	char *id;
	Tins *tins;
        Cins *cins;
        Actualparam *actualparam;
} Prototype;
typedef struct assign {
        char *var;
        char *value;
        char *obj;
        Prototype *func;
        struct assign *prev;
        struct assign *assign1;
} Assign;
typedef struct line {
	char *chars;
	char *prints;
	struct line *line1;
        struct line *prev;
} Line;
typedef struct other {
	Line *line;
        struct other *prev;
	struct other *other1;
} Other;
typedef struct functionbody {
	Other *other;
} Funcbody;
typedef struct method {
        char *type;
	Prototype *proto;
	Funcbody *func_body;
	struct method *method1;
        struct method *prev;
} Method;
typedef struct body {
        Instance *instance;
        Assign *assign;
        Method *method;
        Other *other;
        struct body *next;
        struct body *prev;
} Body;
typedef struct Class {
	Name *name;
        Body *body;
	struct Class *classes;
} CLASS;	
 
