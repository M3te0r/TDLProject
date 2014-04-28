%option noyywrap
%{
#include <stdlib.h>
#include "min.h"
#include "y.tab.h"
void yyerror(char *);
%}
alpha [a-z]
num [0-9]
int {num}+
exp  [eE][+-]?{int}
real      {int}("."{int})?{exp}?

%%

{alpha}       { 
                yylval.idx = *yytext - 'a';
                return VARIABLE;
            }

{int} {
                yylval.intv = atoi(yytext);
                return INTEGER;
            }
			
{real}    {
    yylval.rv = atof(yytext);
    return NUM;
    }
			
			

[-()<>=+*/;{}.] {
                return *yytext;
             }

">="            return GE;
"<="            return LE;
"=="            return EQ;
"!="            return NE;
"if"            return IF;
"else"          return ELSE;
"print"         return PRINT;

[ \t\n]+        ;

.               yyerror("erreur caractere non reconnu");

