#include <stdio.h>
#define MSG_LENGTH 100   		     
typedef struct name {
        char *type;
	char *id;
} Name;

typedef struct Class {
	Name *name;
	struct Class *prev;
        struct Class *next;
} CLASS;	
 
