/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

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
    Class_name = 266,
    object = 267,
    mn = 268,
    Strng = 269,
    args = 270,
    class = 271,
    stat = 272,
    public = 273,
    voi = 274,
    Name_token = 275
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
#define Class_name 266
#define object 267
#define mn 268
#define Strng 269
#define args 270
#define class 271
#define stat 272
#define public 273
#define voi 274
#define Name_token 275

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 14 "yaccmain.y" /* yacc.c:1909  */

        char charval;
        char *strval;
        CLASS *CLASSP;
        Name *NameP;

#line 101 "y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
