/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 1 "yaccmain.y" /* yacc.c:339  */
 
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

#line 89 "y.tab.c" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "y.tab.h".  */
#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    Left_Paren = 258,
    Right_Paren = 259,
    Left_Curly = 260,
    Right_Curly = 261,
    Left_Bracket = 262,
    Right_Bracket = 263,
    s = 264,
    Semicolon_token = 265,
    Equal_token = 266,
    Period_token = 267,
    Comma_token = 268,
    sys = 269,
    out = 270,
    quote = 271,
    Class_name = 272,
    mn = 273,
    Strng = 274,
    args = 275,
    class = 276,
    stat = 277,
    public = 278,
    Name_token = 279,
    new = 280,
    prnt = 281,
    prntln = 282
  };
#endif
/* Tokens.  */
#define Left_Paren 258
#define Right_Paren 259
#define Left_Curly 260
#define Right_Curly 261
#define Left_Bracket 262
#define Right_Bracket 263
#define s 264
#define Semicolon_token 265
#define Equal_token 266
#define Period_token 267
#define Comma_token 268
#define sys 269
#define out 270
#define quote 271
#define Class_name 272
#define mn 273
#define Strng 274
#define args 275
#define class 276
#define stat 277
#define public 278
#define Name_token 279
#define new 280
#define prnt 281
#define prntln 282

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 23 "yaccmain.y" /* yacc.c:355  */

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

#line 202 "y.tab.c" /* yacc.c:355  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 219 "y.tab.c" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  4
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   350

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  28
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  21
/* YYNRULES -- Number of rules.  */
#define YYNRULES  82
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  274

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   282

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,    60,    60,    73,    81,    89,   102,   112,   121,   130,
     139,   148,   157,   166,   175,   184,   193,   202,   211,   220,
     229,   238,   247,   250,   260,   269,   278,   289,   300,   306,
     315,   324,   332,   343,   354,   365,   376,   382,   394,   406,
     419,   432,   441,   450,   458,   469,   480,   491,   502,   509,
     512,   522,   536,   550,   564,   578,   590,   602,   615,   628,
     641,   654,   657,   667,   679,   690,   700,   710,   721,   731,
     741,   748,   757,   766,   772,   780,   783,   793,   801,   809,
     817,   825,   834
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "Left_Paren", "Right_Paren",
  "Left_Curly", "Right_Curly", "Left_Bracket", "Right_Bracket", "s",
  "Semicolon_token", "Equal_token", "Period_token", "Comma_token", "sys",
  "out", "quote", "Class_name", "mn", "Strng", "args", "class", "stat",
  "public", "Name_token", "new", "prnt", "prntln", "$accept", "c", "p",
  "Main", "Body", "Instanceslist", "Instances", "type_ins", "type_rest",
  "class_ins", "class_rest", "Assignmentslist", "Assignments",
  "Methodslist", "Methods", "func_name", "func_rest", "func_body",
  "Others", "line", "l", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282
};
# endif

#define YYPACT_NINF -143

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-143)))

#define YYTABLE_NINF -1

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      27,    50,    68,    69,  -143,    91,   120,   118,     5,  -143,
     117,   131,   156,   132,   164,   166,   218,  -143,  -143,  -143,
     219,  -143,   221,  -143,   222,   147,  -143,   182,    25,   121,
     167,    41,   125,   227,   212,    17,    33,    37,   228,   171,
    -143,   223,   229,   111,   124,    29,    79,  -143,   230,   231,
      86,    99,   232,   114,   215,  -143,   233,   234,  -143,  -143,
    -143,   235,   236,   237,  -143,   210,   217,  -143,   238,   239,
    -143,  -143,   240,  -143,   241,  -143,  -143,  -143,   160,   174,
    -143,   225,  -143,   175,  -143,   226,  -143,    16,   242,    16,
     243,   244,   177,  -143,  -143,   179,  -143,  -143,   246,   245,
     247,    13,   248,    39,    56,   249,   250,    55,    77,   251,
     183,   253,   257,   259,   252,   254,   258,   126,   154,   260,
     261,   263,    51,  -143,  -143,  -143,   264,  -143,  -143,  -143,
     265,   266,   267,   268,   168,   170,   269,   272,   273,   274,
     275,  -143,   276,   277,  -143,   278,  -143,   285,   286,  -143,
     281,  -143,  -143,    90,    94,   183,   183,   270,   185,  -143,
     187,  -143,   271,  -143,   188,   282,   189,    11,   279,   280,
     283,   183,   183,   191,  -143,   193,  -143,   102,   284,   287,
     288,   292,    81,   293,   294,   296,   102,     9,   102,   216,
    -143,  -143,   289,   172,   172,   172,   172,   297,  -143,   180,
     180,   261,   109,  -143,   295,   299,   290,  -143,  -143,   180,
     180,   180,   180,   298,  -143,   300,   302,  -143,   304,  -143,
     305,  -143,  -143,  -143,   205,  -143,   207,  -143,   301,  -143,
    -143,  -143,  -143,   303,  -143,  -143,   306,  -143,  -143,  -143,
    -143,   309,  -143,  -143,     5,   310,   313,   315,   318,   319,
     314,  -143,   317,   320,  -143,  -143,  -143,    11,    11,   256,
     322,   212,  -143,  -143,   321,   323,  -143,   255,    13,   326,
     324,  -143,   325,  -143
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     0,     0,     0,     1,     0,     0,     0,     0,    28,
       0,    82,     0,    81,     0,     0,     0,    22,    24,    25,
       0,    49,     0,    61,     0,     0,    75,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      74,     0,     0,     0,     0,     0,     0,    56,     0,     0,
       0,     0,     0,     0,     0,    55,     0,     0,     2,    18,
      23,     0,     0,     0,    19,    82,    81,    50,     0,     0,
      20,    82,    81,    62,     0,    21,    81,    76,     0,     0,
      48,     0,    43,     0,    38,     0,    37,     0,     0,     0,
       0,     0,     0,    36,    31,     0,    27,    26,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      28,     0,     0,    68,    67,    69,     0,    65,    64,    66,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    14,     0,     0,    12,     0,    15,     0,     0,    10,
       0,    16,    17,     0,     0,     0,     0,     0,     0,    42,
       0,    41,     0,    70,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    30,     0,    29,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      60,    58,     0,     0,     0,     0,     0,     0,    71,     0,
       0,     0,     0,    72,     0,     0,     0,    59,    57,     0,
       0,     0,     0,     0,    73,     0,     0,     3,     0,     8,
       0,    13,    11,     9,     0,    78,     0,    77,     0,    47,
      46,    45,    44,     0,    54,    52,     0,    35,    34,    33,
      32,     0,    53,    51,     0,     0,     0,     0,     0,     0,
       0,    63,     0,     0,     7,    80,    79,     0,     0,     0,
       0,     0,    39,    40,     0,     0,     5,     0,     0,     0,
       0,     6,     0,     4
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -143,  -143,    -9,    26,   -98,  -143,   307,   -73,   -50,   -20,
     -42,   308,   -32,   -29,   -27,   -24,   -89,  -143,   -11,  -142,
     311
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     2,    58,    14,    15,    16,    17,    18,    96,    19,
      84,    20,    21,    22,    23,    52,   125,   213,    24,    25,
      26
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint16 yytable[] =
{
     129,    97,    86,   139,    67,    47,    62,    68,    55,     9,
      73,   187,   189,   225,   123,   201,   127,     9,    39,    10,
     120,     9,    11,    59,    63,    69,    74,    10,    12,    13,
      11,    10,    87,   121,    11,   202,    42,    13,    88,    64,
     122,    13,    43,    70,   224,   141,   226,    10,     1,    44,
      65,    10,    49,    10,    71,   165,    65,    66,    50,     3,
     166,    72,   144,    66,   167,    51,    49,   124,     4,   128,
      10,    67,   147,    71,   142,   159,   161,    73,   203,   148,
      72,    73,    89,   149,   174,   176,     5,   219,    90,    87,
      93,    10,   143,   145,    71,    10,    94,   150,    71,    95,
       6,    72,    89,    93,    10,    72,   186,    71,    10,    94,
     188,    71,    95,   165,    76,    80,    10,    87,    76,    71,
      81,    82,   167,    99,    83,     7,    76,     8,    80,    27,
      80,   190,   191,    85,    82,   158,    82,    83,    45,    83,
      28,    31,    53,    29,    32,    46,   253,   207,   208,    54,
      97,   229,   230,   231,   232,    73,    39,    40,    80,   237,
     238,   239,   240,   160,    82,    30,   214,    83,   262,   263,
     270,   220,    93,    33,    93,    34,    80,   173,    94,   175,
      94,    95,    82,    95,    93,    83,   112,   113,    71,    48,
      94,   114,   117,    95,   132,    76,   134,    41,   115,   118,
     147,   133,   193,   135,   195,    43,   199,   148,   209,   194,
     211,   196,    44,   200,    39,   210,    39,   212,    89,   106,
     227,   246,    29,   247,   100,    39,   107,    35,    36,    32,
      37,    38,    56,    57,    75,    78,   116,   119,    79,    91,
      92,    98,   101,   102,   103,   104,   105,   108,   109,   110,
     111,   136,   266,   126,   130,   146,   137,   151,   138,   152,
     153,    42,   154,   269,   155,   140,   156,   157,   131,   162,
     252,   163,   164,   168,   169,   170,   264,     0,   177,   171,
     172,   178,   179,   180,   181,   182,   183,   184,    87,    89,
     185,     0,   198,   236,   217,   192,   197,   218,   228,   221,
     222,   206,   223,   204,   205,   234,   233,   241,   215,   235,
     242,   216,   243,   244,   245,   251,   254,   255,   248,   256,
     249,   257,   258,   259,     0,   250,   260,   265,   267,   261,
     271,   273,   268,   272,     0,     0,     0,     0,     0,     0,
       0,     0,    60,    61,     0,     0,     0,     0,     0,     0,
      77
};

static const yytype_int16 yycheck[] =
{
      89,    51,    44,   101,    36,    29,    35,    36,    32,     4,
      37,   153,   154,     4,    87,     4,    89,     4,     9,    14,
       4,     4,    17,     6,    35,    36,    37,    14,    23,    24,
      17,    14,     3,    17,    17,    24,    11,    24,     9,     6,
      24,    24,    17,     6,   186,     6,   188,    14,    21,    24,
      17,    14,    11,    14,    17,     4,    17,    24,    17,     9,
       9,    24,     6,    24,    13,    24,    11,    87,     0,    89,
      14,   103,    17,    17,   103,   117,   118,   104,   167,    24,
      24,   108,     3,     6,   134,   135,    17,     6,     9,     3,
       4,    14,   103,   104,    17,    14,    10,   108,    17,    13,
       9,    24,     3,     4,    14,    24,    16,    17,    14,    10,
      16,    17,    13,     4,    24,     4,    14,     3,    24,    17,
       9,    10,    13,     9,    13,     5,    24,     9,     4,    12,
       4,   155,   156,     9,    10,     9,    10,    13,    17,    13,
       9,     9,    17,    12,    12,    24,   244,   171,   172,    24,
     200,   193,   194,   195,   196,   182,     9,    10,     4,   209,
     210,   211,   212,     9,    10,     9,   177,    13,   257,   258,
     268,   182,     4,     9,     4,     9,     4,     9,    10,     9,
      10,    13,    10,    13,     4,    13,    26,    27,    17,    22,
      10,    17,    17,    13,    17,    24,    17,    15,    24,    24,
      17,    24,    17,    24,    17,    17,    17,    24,    17,    24,
      17,    24,    24,    24,     9,    24,     9,    24,     3,     9,
       4,    16,    12,    16,     9,     9,     9,     9,     9,    12,
       9,     9,     5,    21,     6,    12,    11,    11,     9,     9,
       9,     9,     9,     9,     9,     9,     9,     9,     9,     9,
       9,     5,   261,    11,    11,     6,    11,     6,    11,     6,
       3,    11,     3,     8,    12,    17,    12,     9,    24,     9,
     244,    10,     9,     9,     9,     9,    20,    -1,     9,    12,
      12,     9,     9,     9,     9,     9,     9,     9,     3,     3,
       9,    -1,    10,     3,     6,    25,    25,     5,     9,     6,
       6,    18,     6,    24,    24,    10,     9,     9,    24,    10,
      10,    24,    10,     9,     9,     6,     6,     4,    17,     4,
      17,     3,     3,     9,    -1,    19,     9,     5,     7,     9,
       4,     6,     9,     9,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    35,    35,    -1,    -1,    -1,    -1,    -1,    -1,
      39
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,    21,    29,     9,     0,    17,     9,     5,     9,     4,
      14,    17,    23,    24,    31,    32,    33,    34,    35,    37,
      39,    40,    41,    42,    46,    47,    48,    12,     9,    12,
       9,     9,    12,     9,     9,     9,     9,     9,     9,     9,
      10,    15,    11,    17,    24,    17,    24,    43,    22,    11,
      17,    24,    43,    17,    24,    43,     5,    21,    30,     6,
      34,    39,    41,    46,     6,    17,    24,    40,    41,    46,
       6,    17,    24,    42,    46,     6,    24,    48,    12,     9,
       4,     9,    10,    13,    38,     9,    38,     3,     9,     3,
       9,     9,     9,     4,    10,    13,    36,    36,     9,     9,
       9,     9,     9,     9,     9,     9,     9,     9,     9,     9,
       9,     9,    26,    27,    17,    24,    11,    17,    24,    11,
       4,    17,    24,    35,    37,    44,    11,    35,    37,    44,
      11,    24,    17,    24,    17,    24,     5,    11,    11,    32,
      17,     6,    41,    46,     6,    46,     6,    17,    24,     6,
      46,     6,     6,     3,     3,    12,    12,     9,     9,    38,
       9,    38,     9,    10,     9,     4,     9,    13,     9,     9,
       9,    12,    12,     9,    36,     9,    36,     9,     9,     9,
       9,     9,     9,     9,     9,     9,    16,    47,    16,    47,
      43,    43,    25,    17,    24,    17,    24,    25,    10,    17,
      24,     4,    24,    44,    24,    24,    18,    43,    43,    17,
      24,    17,    24,    45,    46,    24,    24,     6,     5,     6,
      46,     6,     6,     6,    47,     4,    47,     4,     9,    38,
      38,    38,    38,     9,    10,    10,     3,    36,    36,    36,
      36,     9,    10,    10,     9,     9,    16,    16,    17,    17,
      19,     6,    31,    32,     6,     4,     4,     3,     3,     9,
       9,     9,    44,    44,    20,     5,    30,     7,     9,     8,
      32,     4,     9,     6
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    28,    29,    29,    30,    30,    31,    32,    32,    32,
      32,    32,    32,    32,    32,    32,    32,    32,    32,    32,
      32,    32,    33,    33,    34,    34,    35,    35,    35,    36,
      36,    36,    36,    36,    36,    36,    36,    37,    37,    37,
      37,    38,    38,    38,    38,    38,    38,    38,    38,    39,
      39,    40,    40,    40,    40,    40,    40,    40,    40,    40,
      40,    41,    41,    42,    43,    43,    43,    43,    43,    43,
      44,    44,    44,    45,    46,    47,    47,    47,    47,    47,
      47,    48,    48
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     9,    13,    13,     9,    14,     9,     7,     7,
       5,     7,     5,     7,     5,     5,     5,     5,     3,     3,
       3,     3,     1,     3,     1,     1,     4,     4,     1,     3,
       3,     1,     5,     5,     5,     5,     1,     4,     4,    11,
      11,     3,     3,     1,     5,     5,     5,     5,     1,     1,
       3,     8,     8,     8,     8,     3,     3,     7,     7,     7,
       7,     1,     3,     9,     3,     3,     3,     3,     3,     3,
       2,     3,     3,     1,     2,     1,     3,     8,     8,    10,
      10,     1,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 60 "yaccmain.y" /* yacc.c:1646  */
    {
   CLASS *class1,*classes;
   class1 = (CLASS *) malloc(sizeof(CLASS));
   class1->classes = (CLASS *) malloc(sizeof(CLASS));
   Name *name;
   class1->name = (Name *) malloc(sizeof(Name));
   char *id;
   class1->body = (yyvsp[-2].BodyP);
   class1->name->id = (char *) malloc(sizeof(char)*(strlen((yyvsp[-6].strval))+1)); 
   class1->name->id = (yyvsp[-6].strval);
   class1->classes = (yyvsp[0].CLASSP);
   c = class1;
   }
#line 1487 "y.tab.c" /* yacc.c:1646  */
    break;

  case 3:
#line 73 "yaccmain.y" /* yacc.c:1646  */
    {
   CLASS *class1;
   class1 = (CLASS *) malloc(sizeof(CLASS));
   class1->body = (yyvsp[-2].BodyP);
   class1->name = (yyvsp[-6].NameP);
   class1->classes = NULL;
   c = class1;
   }
#line 1500 "y.tab.c" /* yacc.c:1646  */
    break;

  case 4:
#line 81 "yaccmain.y" /* yacc.c:1646  */
    {
   CLASS *class1;
   class1 = (CLASS *) malloc(sizeof(CLASS));
   class1->body = (yyvsp[-2].BodyP);
   class1->name = (yyvsp[-6].NameP);
   class1->classes = NULL;
   (yyval.CLASSP) = class1;
   }
#line 1513 "y.tab.c" /* yacc.c:1646  */
    break;

  case 5:
#line 89 "yaccmain.y" /* yacc.c:1646  */
    {
   CLASS *class1,*classes;
   class1 = (CLASS *) malloc(sizeof(CLASS));
   class1->classes = (CLASS *) malloc(sizeof(CLASS));
   Name *name;
   class1->name = (Name *) malloc(sizeof(Name));
   char *id;
   class1->name->id = (char *) malloc(sizeof(char)*(strlen((yyvsp[-6].strval))+1)); 
   class1->name->id=(yyvsp[-6].strval);
   class1->body = (yyvsp[-2].BodyP);
   class1->classes = (yyvsp[0].CLASSP);
   (yyval.CLASSP) = class1;
   }
#line 1531 "y.tab.c" /* yacc.c:1646  */
    break;

  case 6:
#line 102 "yaccmain.y" /* yacc.c:1646  */
    {
   Name *name1;
   name1 = (Name *) malloc(sizeof(Name));
   char *type,*id;
   name1->type =(char *)malloc(sizeof(char)*(strlen((yyvsp[-9].strval))+1));
   name1->id = (char *)malloc(sizeof(char)*(strlen((yyvsp[-7].strval))+1));
   strcpy(name1->type,(yyvsp[-9].strval));
   strcpy(name1->id,(yyvsp[-7].strval));
   (yyval.NameP) = name1;
   }
#line 1546 "y.tab.c" /* yacc.c:1646  */
    break;

  case 7:
#line 112 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = (yyvsp[-8].InstanceP);
   body->assign = (yyvsp[-6].AssignP);
   body->method = (yyvsp[-4].MethodP);
   body->other = (yyvsp[-2].OtherP);
   (yyval.BodyP) = body;
}
#line 1560 "y.tab.c" /* yacc.c:1646  */
    break;

  case 8:
#line 121 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = (yyvsp[-6].InstanceP);
   body->assign = (yyvsp[-4].AssignP);
   body->method = (yyvsp[-2].MethodP);
   body->other = NULL;
   (yyval.BodyP) = body;
}
#line 1574 "y.tab.c" /* yacc.c:1646  */
    break;

  case 9:
#line 130 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = (yyvsp[-6].AssignP);
   body->method = (yyvsp[-4].MethodP);
   body->other = (yyvsp[-2].OtherP);
   (yyval.BodyP) = body;
}
#line 1588 "y.tab.c" /* yacc.c:1646  */
    break;

  case 10:
#line 139 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = (yyvsp[-4].AssignP);
   body->method = (yyvsp[-2].MethodP);
   body->other = NULL;
   (yyval.BodyP) = body;
}
#line 1602 "y.tab.c" /* yacc.c:1646  */
    break;

  case 11:
#line 148 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = (yyvsp[-6].InstanceP);
   body->assign = NULL;
   body->method = (yyvsp[-4].MethodP);
   body->other = (yyvsp[-2].OtherP);
   (yyval.BodyP) = body;
}
#line 1616 "y.tab.c" /* yacc.c:1646  */
    break;

  case 12:
#line 157 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = (yyvsp[-4].InstanceP);
   body->assign = NULL;
   body->method = (yyvsp[-2].MethodP);
   body->other = NULL;
   (yyval.BodyP) = body;
}
#line 1630 "y.tab.c" /* yacc.c:1646  */
    break;

  case 13:
#line 166 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = (yyvsp[-6].InstanceP);
   body->assign = (yyvsp[-4].AssignP);
   body->method = NULL;
   body->other = (yyvsp[-2].OtherP);
   (yyval.BodyP) = body;
}
#line 1644 "y.tab.c" /* yacc.c:1646  */
    break;

  case 14:
#line 175 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = (yyvsp[-4].InstanceP);
   body->assign = (yyvsp[-2].AssignP);
   body->method = NULL;
   body->other = NULL;
   (yyval.BodyP) = body;
}
#line 1658 "y.tab.c" /* yacc.c:1646  */
    break;

  case 15:
#line 184 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = (yyvsp[-4].InstanceP);
   body->assign = NULL;
   body->method = NULL;
   body->other = (yyvsp[-2].OtherP);
   (yyval.BodyP) = body;
}
#line 1672 "y.tab.c" /* yacc.c:1646  */
    break;

  case 16:
#line 193 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = (yyvsp[-4].AssignP);
   body->method = NULL;
   body->other = (yyvsp[-2].OtherP);
   (yyval.BodyP) = body;
}
#line 1686 "y.tab.c" /* yacc.c:1646  */
    break;

  case 17:
#line 202 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = NULL;
   body->method = (yyvsp[-4].MethodP);
   body->other = (yyvsp[-2].OtherP);
   (yyval.BodyP) = body;
}
#line 1700 "y.tab.c" /* yacc.c:1646  */
    break;

  case 18:
#line 211 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = (yyvsp[-2].InstanceP);
   body->assign = NULL;
   body->method = NULL;
   body->other = NULL;
   (yyval.BodyP) = body;
}
#line 1714 "y.tab.c" /* yacc.c:1646  */
    break;

  case 19:
#line 220 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = (yyvsp[-2].AssignP);
   body->method = NULL;
   body->other = NULL;
   (yyval.BodyP) = body;
}
#line 1728 "y.tab.c" /* yacc.c:1646  */
    break;

  case 20:
#line 229 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = NULL;
   body->method = (yyvsp[-2].MethodP);
   body->other = NULL;
   (yyval.BodyP) = body;
}
#line 1742 "y.tab.c" /* yacc.c:1646  */
    break;

  case 21:
#line 238 "yaccmain.y" /* yacc.c:1646  */
    {
   Body *body;
   body = (Body *) malloc(sizeof(Body));
   body->instance = NULL;
   body->assign = NULL;
   body->method = NULL;
   body->other = (yyvsp[-2].OtherP);
   (yyval.BodyP) = body;
}
#line 1756 "y.tab.c" /* yacc.c:1646  */
    break;

  case 22:
#line 247 "yaccmain.y" /* yacc.c:1646  */
    {
       (yyval.InstanceP) = (yyvsp[0].InstanceP);
   }
#line 1764 "y.tab.c" /* yacc.c:1646  */
    break;

  case 23:
#line 250 "yaccmain.y" /* yacc.c:1646  */
    {
   Instance *temp;
   temp = (Instance *) malloc(sizeof(Instance));
	temp = (yyvsp[-2].InstanceP);
	while(temp->instances != NULL)
		temp = temp->instances;
	temp->instances = (yyvsp[0].InstanceP);
	(yyvsp[0].InstanceP)->prev = temp;
	(yyval.InstanceP) = (yyvsp[-2].InstanceP);
}
#line 1779 "y.tab.c" /* yacc.c:1646  */
    break;

  case 24:
#line 260 "yaccmain.y" /* yacc.c:1646  */
    {
   Instance *instance;
   instance = (Instance *) malloc(sizeof(Instance));
   instance->tins = (yyvsp[0].TinsP);
   instance->cins = NULL;
   instance->instances = NULL;
   instance->prev = NULL;
   (yyval.InstanceP) = instance;
}
#line 1793 "y.tab.c" /* yacc.c:1646  */
    break;

  case 25:
#line 269 "yaccmain.y" /* yacc.c:1646  */
    {
   Instance *instance;
   instance = (Instance *) malloc(sizeof(Instance));
   instance->tins = NULL;
   instance->cins = (yyvsp[0].CinsP);
   instance->instances = NULL;
   instance->prev = NULL;
   (yyval.InstanceP) = instance; 
}
#line 1807 "y.tab.c" /* yacc.c:1646  */
    break;

  case 26:
#line 278 "yaccmain.y" /* yacc.c:1646  */
    {
   char *type,*id;
   Tins *tins;
   tins = (Tins *)malloc(sizeof(Body));
   tins->type=(char *)malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   tins->id =(char *)malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1)); 
   tins->type = (yyvsp[-3].strval);
   tins->id = (yyvsp[-1].strval);
   tins->rest = (yyvsp[0].RestP);  
   (yyval.TinsP) = tins; 
}
#line 1823 "y.tab.c" /* yacc.c:1646  */
    break;

  case 27:
#line 289 "yaccmain.y" /* yacc.c:1646  */
    {
   char *type,*id;
   Tins *tins;
   tins = (Tins *)malloc(sizeof(Body));
   tins->type=(char *)malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   tins->id =(char *)malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1)); 
   tins->type = (yyvsp[-3].strval);
   tins->id = (yyvsp[-1].strval);
   tins->rest = (yyvsp[0].RestP);  
   (yyval.TinsP) = tins; 
}
#line 1839 "y.tab.c" /* yacc.c:1646  */
    break;

  case 28:
#line 300 "yaccmain.y" /* yacc.c:1646  */
    {
   Tins *tins;
   tins = (Tins *)malloc(sizeof(Body));
   tins = NULL;
   (yyval.TinsP) = tins;
}
#line 1850 "y.tab.c" /* yacc.c:1646  */
    break;

  case 29:
#line 306 "yaccmain.y" /* yacc.c:1646  */
    {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;
   }
#line 1864 "y.tab.c" /* yacc.c:1646  */
    break;

  case 30:
#line 315 "yaccmain.y" /* yacc.c:1646  */
    {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;
   }
#line 1878 "y.tab.c" /* yacc.c:1646  */
    break;

  case 31:
#line 324 "yaccmain.y" /* yacc.c:1646  */
    {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->end = (yyvsp[0].charval);
   rest->rest1 = NULL;
   (yyval.RestP) = rest;
   }
#line 1891 "y.tab.c" /* yacc.c:1646  */
    break;

  case 32:
#line 332 "yaccmain.y" /* yacc.c:1646  */
    {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   rest->type = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   rest->start = (yyvsp[-4].charval);
   strcpy(rest->type,(yyvsp[-3].strval));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;
   }
#line 1907 "y.tab.c" /* yacc.c:1646  */
    break;

  case 33:
#line 343 "yaccmain.y" /* yacc.c:1646  */
    {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   rest->type = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   rest->start = (yyvsp[-4].charval);
   strcpy(rest->type,(yyvsp[-3].strval));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;
   }
#line 1923 "y.tab.c" /* yacc.c:1646  */
    break;

  case 34:
#line 354 "yaccmain.y" /* yacc.c:1646  */
    {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   rest->type = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   rest->start = (yyvsp[-4].charval);
   strcpy(rest->type,(yyvsp[-3].strval));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;
}
#line 1939 "y.tab.c" /* yacc.c:1646  */
    break;

  case 35:
#line 365 "yaccmain.y" /* yacc.c:1646  */
    {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   rest->type = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   rest->start = (yyvsp[-4].charval);
   strcpy(rest->type,(yyvsp[-3].strval));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;
}
#line 1955 "y.tab.c" /* yacc.c:1646  */
    break;

  case 36:
#line 376 "yaccmain.y" /* yacc.c:1646  */
    {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->rest1 = NULL;
   (yyval.RestP) = rest;   
 }
#line 1966 "y.tab.c" /* yacc.c:1646  */
    break;

  case 37:
#line 382 "yaccmain.y" /* yacc.c:1646  */
    {
   Cins *cins;
   char *id,*obj;
   cins = (Cins *) malloc(sizeof(Cins));
   cins->id = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   cins->obj = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   cins->id = (yyvsp[-3].strval);
   cins->obj = (yyvsp[-1].strval);
   cins->rest = (yyvsp[0].RestP);
   cins->param = NULL;
   (yyval.CinsP) = cins;
}
#line 1983 "y.tab.c" /* yacc.c:1646  */
    break;

  case 38:
#line 394 "yaccmain.y" /* yacc.c:1646  */
    {
   Cins *cins;
   char *id,*obj;
   cins = (Cins *) malloc(sizeof(Cins));
   cins->id = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   cins->obj = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   cins->id = (yyvsp[-3].strval);
   cins->obj = (yyvsp[-1].strval);
   cins->rest = (yyvsp[0].RestP);
   cins->param = NULL;
   (yyval.CinsP) = cins;
}
#line 2000 "y.tab.c" /* yacc.c:1646  */
    break;

  case 39:
#line 406 "yaccmain.y" /* yacc.c:1646  */
    {
   Cins *cins;
   char *id,*obj;
   cins = (Cins *) malloc(sizeof(Cins));
   cins->id = malloc(sizeof(char)*(strlen((yyvsp[-10].strval))+1));
   cins->obj = malloc(sizeof(char)*(strlen((yyvsp[-8].strval))+1));
   strcpy(cins->id,(yyvsp[-10].strval));
   strcpy(cins->obj,(yyvsp[-8].strval));
   cins->rest = NULL;
   cins->param = (yyvsp[0].ActualparamP);
   (yyval.CinsP) = cins;
}
#line 2017 "y.tab.c" /* yacc.c:1646  */
    break;

  case 40:
#line 419 "yaccmain.y" /* yacc.c:1646  */
    {
   Cins *cins;
   char *id,*obj;
   cins = (Cins *) malloc(sizeof(Cins));
   cins->id = malloc(sizeof(char)*(strlen((yyvsp[-10].strval))+1));
   cins->obj = malloc(sizeof(char)*(strlen((yyvsp[-8].strval))+1));
   strcpy(cins->id,(yyvsp[-10].strval));
   strcpy(cins->obj,(yyvsp[-8].strval));
   cins->rest = NULL;
   cins->param = (yyvsp[0].ActualparamP);
   (yyval.CinsP) = cins;
}
#line 2034 "y.tab.c" /* yacc.c:1646  */
    break;

  case 41:
#line 432 "yaccmain.y" /* yacc.c:1646  */
    {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;
   }
#line 2048 "y.tab.c" /* yacc.c:1646  */
    break;

  case 42:
#line 441 "yaccmain.y" /* yacc.c:1646  */
    {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;
   }
#line 2062 "y.tab.c" /* yacc.c:1646  */
    break;

  case 43:
#line 450 "yaccmain.y" /* yacc.c:1646  */
    {
   char *id;
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->end = (yyvsp[0].charval);
   rest->rest1 = NULL;
   (yyval.RestP) = rest;
   }
#line 2075 "y.tab.c" /* yacc.c:1646  */
    break;

  case 44:
#line 458 "yaccmain.y" /* yacc.c:1646  */
    {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   rest->type = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   rest->start = (yyvsp[-4].charval);
   strcpy(rest->type,(yyvsp[-3].strval));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;
   }
#line 2091 "y.tab.c" /* yacc.c:1646  */
    break;

  case 45:
#line 469 "yaccmain.y" /* yacc.c:1646  */
    {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   rest->type = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   rest->start = (yyvsp[-4].charval);
   strcpy(rest->type,(yyvsp[-3].strval));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;
   }
#line 2107 "y.tab.c" /* yacc.c:1646  */
    break;

  case 46:
#line 480 "yaccmain.y" /* yacc.c:1646  */
    {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   rest->type = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   rest->start = (yyvsp[-4].charval);
   strcpy(rest->type,(yyvsp[-3].strval));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;  
 }
#line 2123 "y.tab.c" /* yacc.c:1646  */
    break;

  case 47:
#line 491 "yaccmain.y" /* yacc.c:1646  */
    {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->id = malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   rest->type = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   rest->start = (yyvsp[-4].charval);
   strcpy(rest->type,(yyvsp[-3].strval));
   strcpy(rest->id,(yyvsp[-1].strval));
   rest->rest1 = (yyvsp[0].RestP);
   (yyval.RestP) = rest;  
 }
#line 2139 "y.tab.c" /* yacc.c:1646  */
    break;

  case 48:
#line 502 "yaccmain.y" /* yacc.c:1646  */
    {
   Rest *rest;
   rest = (Rest *) malloc(sizeof(Rest));
   rest->rest1 = NULL;
   (yyval.RestP) = rest;   
 }
#line 2150 "y.tab.c" /* yacc.c:1646  */
    break;

  case 49:
#line 509 "yaccmain.y" /* yacc.c:1646  */
    {
   (yyval.AssignP) = (yyvsp[0].AssignP);
}
#line 2158 "y.tab.c" /* yacc.c:1646  */
    break;

  case 50:
#line 512 "yaccmain.y" /* yacc.c:1646  */
    {
   Assign *temp;
   temp = (Assign *) malloc(sizeof(Assign));
	temp = (yyvsp[-2].AssignP);
	while(temp->assign1 != NULL)
		temp = temp->assign1;
	temp->assign1 = (yyvsp[0].AssignP);
	(yyvsp[0].AssignP)->prev = temp;
	(yyval.AssignP) = (yyvsp[-2].AssignP);
}
#line 2173 "y.tab.c" /* yacc.c:1646  */
    break;

  case 51:
#line 522 "yaccmain.y" /* yacc.c:1646  */
    {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen((yyvsp[-7].strval))+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen((yyvsp[-5].strval))+1));
   assign->value = (char *) malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   strcpy(assign->obj,(yyvsp[-7].strval));
   strcpy(assign->var,(yyvsp[-5].strval));
   strcpy(assign->value,(yyvsp[-1].strval));
   assign->func = NULL;
   assign->prev = NULL;
   assign->assign1 = NULL;
   (yyval.AssignP) = assign;
}
#line 2192 "y.tab.c" /* yacc.c:1646  */
    break;

  case 52:
#line 536 "yaccmain.y" /* yacc.c:1646  */
    {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen((yyvsp[-7].strval))+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen((yyvsp[-5].strval))+1));
   assign->value = (char *) malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   strcpy(assign->obj,(yyvsp[-7].strval));
   strcpy(assign->var,(yyvsp[-5].strval));
   strcpy(assign->value,(yyvsp[-1].strval));
   assign->func = NULL;
   assign->prev = NULL;
   assign->assign1 = NULL;
   (yyval.AssignP) = assign;
}
#line 2211 "y.tab.c" /* yacc.c:1646  */
    break;

  case 53:
#line 550 "yaccmain.y" /* yacc.c:1646  */
    {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen((yyvsp[-7].strval))+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen((yyvsp[-5].strval))+1));
   assign->value = (char *) malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   strcpy(assign->obj,(yyvsp[-7].strval));
   strcpy(assign->var,(yyvsp[-5].strval));
   strcpy(assign->value,(yyvsp[-1].strval));
   assign->func = NULL;
   assign->prev = NULL;
   assign->assign1 = NULL;
   (yyval.AssignP) = assign;
}
#line 2230 "y.tab.c" /* yacc.c:1646  */
    break;

  case 54:
#line 564 "yaccmain.y" /* yacc.c:1646  */
    {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen((yyvsp[-7].strval))+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen((yyvsp[-5].strval))+1));
   assign->value = (char *) malloc(sizeof(char)*(strlen((yyvsp[-1].strval))+1));
   strcpy(assign->obj,(yyvsp[-7].strval));
   strcpy(assign->var,(yyvsp[-5].strval));
   strcpy(assign->value,(yyvsp[-1].strval));
   assign->func = NULL;
   assign->prev = NULL;
   assign->assign1 = NULL;
   (yyval.AssignP) = assign;
}
#line 2249 "y.tab.c" /* yacc.c:1646  */
    break;

  case 55:
#line 578 "yaccmain.y" /* yacc.c:1646  */
    {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   strcpy(assign->obj,(yyvsp[-2].strval));
   assign->var = NULL;
   assign->value = NULL;
   assign->func = (yyvsp[0].PrototypeP);
   assign->prev = NULL;
   assign->assign1 = NULL;
   (yyval.AssignP) = assign;
}
#line 2266 "y.tab.c" /* yacc.c:1646  */
    break;

  case 56:
#line 590 "yaccmain.y" /* yacc.c:1646  */
    {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   strcpy(assign->obj,(yyvsp[-2].strval));
   assign->func = (yyvsp[0].PrototypeP);
   assign->var = NULL;
   assign->value = NULL;
   assign->prev = NULL;
   assign->assign1 = NULL;
   (yyval.AssignP) = assign;
}
#line 2283 "y.tab.c" /* yacc.c:1646  */
    break;

  case 57:
#line 602 "yaccmain.y" /* yacc.c:1646  */
    {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen((yyvsp[-6].strval))+1)); 
   strcpy(assign->obj,(yyvsp[-2].strval)); 
   strcpy(assign->var,(yyvsp[-6].strval));
   assign->value = NULL;
   assign->func = (yyvsp[0].PrototypeP);
   assign->prev = NULL;
   assign->assign1 = NULL;
   (yyval.AssignP) = assign;
}
#line 2301 "y.tab.c" /* yacc.c:1646  */
    break;

  case 58:
#line 615 "yaccmain.y" /* yacc.c:1646  */
    {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen((yyvsp[-6].strval))+1)); 
   strcpy(assign->obj,(yyvsp[-2].strval)); 
   strcpy(assign->var,(yyvsp[-6].strval));
   assign->value = NULL;
   assign->func = (yyvsp[0].PrototypeP);
   assign->prev = NULL;
   assign->assign1 = NULL;
   (yyval.AssignP) = assign;
}
#line 2319 "y.tab.c" /* yacc.c:1646  */
    break;

  case 59:
#line 628 "yaccmain.y" /* yacc.c:1646  */
    {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen((yyvsp[-6].strval))+1)); 
   strcpy(assign->obj,(yyvsp[-2].strval)); 
   strcpy(assign->var,(yyvsp[-6].strval));
   assign->value = NULL;
   assign->func = (yyvsp[0].PrototypeP);
   assign->prev = NULL;
   assign->assign1 = NULL;
   (yyval.AssignP) = assign;
}
#line 2337 "y.tab.c" /* yacc.c:1646  */
    break;

  case 60:
#line 641 "yaccmain.y" /* yacc.c:1646  */
    {
   Assign *assign;
   assign = (Assign *) malloc(sizeof(Assign));
   assign->obj = (char *) malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   assign->var = (char *) malloc(sizeof(char)*(strlen((yyvsp[-6].strval))+1)); 
   strcpy(assign->obj,(yyvsp[-2].strval)); 
   strcpy(assign->var,(yyvsp[-6].strval));
   assign->value = NULL;
   assign->func = (yyvsp[0].PrototypeP);
   assign->prev = NULL;
   assign->assign1 = NULL;
   (yyval.AssignP) = assign;
}
#line 2355 "y.tab.c" /* yacc.c:1646  */
    break;

  case 61:
#line 654 "yaccmain.y" /* yacc.c:1646  */
    {
   (yyval.MethodP) = (yyvsp[0].MethodP);
}
#line 2363 "y.tab.c" /* yacc.c:1646  */
    break;

  case 62:
#line 657 "yaccmain.y" /* yacc.c:1646  */
    {
   Method *temp;
   temp = (Method *) malloc(sizeof(Method));
	temp = (yyvsp[-2].MethodP);
	while(temp->method1 != NULL)
		temp = temp->method1;
	temp->method1 = (yyvsp[0].MethodP);
	(yyvsp[0].MethodP)->prev = temp;
	(yyval.MethodP) = (yyvsp[-2].MethodP);
}
#line 2378 "y.tab.c" /* yacc.c:1646  */
    break;

  case 63:
#line 667 "yaccmain.y" /* yacc.c:1646  */
    {
   Method *method;
   char *type;
   method = (Method *) malloc(sizeof(Method));
   method->type = malloc(sizeof(char)*(strlen((yyvsp[-8].strval))+1));
   strcpy(method->type,(yyvsp[-8].strval));
   method->proto = (yyvsp[-6].PrototypeP);
   method->func_body = (yyvsp[-2].FuncbodyP);
   method->method1 = NULL;
   (yyval.MethodP) = method;
   }
#line 2394 "y.tab.c" /* yacc.c:1646  */
    break;

  case 64:
#line 679 "yaccmain.y" /* yacc.c:1646  */
    {
   Prototype *proto;
   char *id;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   strcpy(proto->id,(yyvsp[-2].strval));
   proto->cins = (yyvsp[0].CinsP);
   proto->tins = NULL;
   proto->actualparam = NULL;
   (yyval.PrototypeP) = proto;
   }
#line 2410 "y.tab.c" /* yacc.c:1646  */
    break;

  case 65:
#line 690 "yaccmain.y" /* yacc.c:1646  */
    {
   Prototype *proto;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   strcpy(proto->id,(yyvsp[-2].strval));
   proto->cins = NULL;
   proto->tins = (yyvsp[0].TinsP);
   proto->actualparam = NULL;
   (yyval.PrototypeP) = proto;
   }
#line 2425 "y.tab.c" /* yacc.c:1646  */
    break;

  case 66:
#line 700 "yaccmain.y" /* yacc.c:1646  */
    {
   Prototype *proto;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   strcpy(proto->id,(yyvsp[-2].strval));
   proto->cins = NULL;
   proto->tins = NULL;
   proto->actualparam = (yyvsp[0].ActualparamP);
   (yyval.PrototypeP) = proto;
   }
#line 2440 "y.tab.c" /* yacc.c:1646  */
    break;

  case 67:
#line 710 "yaccmain.y" /* yacc.c:1646  */
    {
   Prototype *proto;
   char *id;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   strcpy(proto->id,(yyvsp[-2].strval));
   proto->cins = (yyvsp[0].CinsP);
   proto->tins = NULL;
   proto->actualparam = NULL;
   (yyval.PrototypeP) = proto;
   }
#line 2456 "y.tab.c" /* yacc.c:1646  */
    break;

  case 68:
#line 721 "yaccmain.y" /* yacc.c:1646  */
    {
   Prototype *proto;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   strcpy(proto->id,(yyvsp[-2].strval));
   proto->cins = NULL;
   proto->tins = (yyvsp[0].TinsP);
   proto->actualparam = NULL;
   (yyval.PrototypeP) = proto;
   }
#line 2471 "y.tab.c" /* yacc.c:1646  */
    break;

  case 69:
#line 731 "yaccmain.y" /* yacc.c:1646  */
    {
   Prototype *proto;
   proto = (Prototype *) malloc(sizeof(Prototype));
   proto->id = malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   strcpy(proto->id,(yyvsp[-2].strval));
   proto->cins = NULL;
   proto->tins = NULL;
   proto->actualparam = (yyvsp[0].ActualparamP);
   (yyval.PrototypeP) = proto;
   }
#line 2486 "y.tab.c" /* yacc.c:1646  */
    break;

  case 70:
#line 741 "yaccmain.y" /* yacc.c:1646  */
    {
    Actualparam *temp;
   temp = (Actualparam *) malloc(sizeof(Actualparam));
   temp->param1 = NULL;
   temp->value = NULL;
   (yyval.ActualparamP) = temp;
   }
#line 2498 "y.tab.c" /* yacc.c:1646  */
    break;

  case 71:
#line 748 "yaccmain.y" /* yacc.c:1646  */
    {
   char *value;
   Actualparam *temp;
   temp = (Actualparam *) malloc(sizeof(Actualparam)); 
   temp->value = malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   temp->value = (yyvsp[-2].strval);
   temp->param1 = NULL;
   (yyval.ActualparamP) = temp;
   }
#line 2512 "y.tab.c" /* yacc.c:1646  */
    break;

  case 72:
#line 757 "yaccmain.y" /* yacc.c:1646  */
    {
   char *value;
   Actualparam *temp;
   temp = (Actualparam *) malloc(sizeof(Actualparam)); 
   temp->value = malloc(sizeof(char)*(strlen((yyvsp[-2].strval))+1));
   temp->value = (yyvsp[-2].strval);
   temp->param1 = (yyvsp[0].ActualparamP);
   (yyval.ActualparamP) = temp;	
   }
#line 2526 "y.tab.c" /* yacc.c:1646  */
    break;

  case 73:
#line 766 "yaccmain.y" /* yacc.c:1646  */
    {
   Funcbody *funcbody;
   funcbody = (Funcbody *) malloc(sizeof(Funcbody));
   funcbody->other = (yyvsp[0].OtherP);
   (yyval.FuncbodyP) = funcbody;	 
}
#line 2537 "y.tab.c" /* yacc.c:1646  */
    break;

  case 74:
#line 772 "yaccmain.y" /* yacc.c:1646  */
    {
   Other *other;
   other = (Other *) malloc(sizeof(Other));
   other->line = (yyvsp[-1].LineP);
   other->other1 = NULL;
   (yyval.OtherP) = other;
   }
#line 2549 "y.tab.c" /* yacc.c:1646  */
    break;

  case 75:
#line 780 "yaccmain.y" /* yacc.c:1646  */
    {
       (yyval.LineP) = (yyvsp[0].LineP);
   }
#line 2557 "y.tab.c" /* yacc.c:1646  */
    break;

  case 76:
#line 783 "yaccmain.y" /* yacc.c:1646  */
    {
   Line *temp;
   temp = (Line *) malloc(sizeof(Line));
	temp = (yyvsp[-2].LineP);
	while(temp->line1 != NULL)
		temp = temp->line1;
	temp->line1 = (yyvsp[0].LineP);
	(yyvsp[0].LineP)->prev = temp;
	(yyval.LineP) = (yyvsp[-2].LineP);
   }
#line 2572 "y.tab.c" /* yacc.c:1646  */
    break;

  case 77:
#line 793 "yaccmain.y" /* yacc.c:1646  */
    {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->prints = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));;
   strcpy(line->prints,(yyvsp[-3].strval));
   line->line1 = (yyvsp[-1].LineP);
   (yyval.LineP) = line;
   }
#line 2585 "y.tab.c" /* yacc.c:1646  */
    break;

  case 78:
#line 801 "yaccmain.y" /* yacc.c:1646  */
    {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->prints = malloc(sizeof(char)*(strlen((yyvsp[-3].strval))+1));
   strcpy(line->prints,(yyvsp[-3].strval));
   line->line1 = (yyvsp[-1].LineP);
   (yyval.LineP) = line;
   }
#line 2598 "y.tab.c" /* yacc.c:1646  */
    break;

  case 79:
#line 809 "yaccmain.y" /* yacc.c:1646  */
    {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->prints = malloc(sizeof(char)*(strlen((yyvsp[-5].strval))+1));;
   strcpy(line->prints,(yyvsp[-5].strval));
   line->line1 = (yyvsp[-2].LineP);
   (yyval.LineP) = line;
   }
#line 2611 "y.tab.c" /* yacc.c:1646  */
    break;

  case 80:
#line 817 "yaccmain.y" /* yacc.c:1646  */
    {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->prints = malloc(sizeof(char)*(strlen((yyvsp[-5].strval))+1));
   strcpy(line->prints,(yyvsp[-5].strval));
   line->line1 = (yyvsp[-2].LineP);
   (yyval.LineP) = line;
   }
#line 2624 "y.tab.c" /* yacc.c:1646  */
    break;

  case 81:
#line 825 "yaccmain.y" /* yacc.c:1646  */
    {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->chars = malloc(sizeof(char)*(strlen((yyvsp[0].strval))+1));
   strcpy(line->chars,(yyvsp[0].strval));
   line->line1 = NULL;
   line->prev = NULL;
   (yyval.LineP) = line;
   }
#line 2638 "y.tab.c" /* yacc.c:1646  */
    break;

  case 82:
#line 834 "yaccmain.y" /* yacc.c:1646  */
    {
   Line *line;
   line = (Line *) malloc(sizeof(Line));
   line->chars = malloc(sizeof(char)*(strlen((yyvsp[0].strval))+1));
   strcpy(line->chars,(yyvsp[0].strval));
   line->line1 = NULL;
   line->prev = NULL;
   (yyval.LineP) = line;
   }
#line 2652 "y.tab.c" /* yacc.c:1646  */
    break;


#line 2656 "y.tab.c" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 843 "yaccmain.y" /* yacc.c:1906  */

   
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
