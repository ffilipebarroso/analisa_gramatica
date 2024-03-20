%{
#include <stdio.h>
#include "boleano.tab.h"

void yyerror(const char *s);
%}

/* Tokens */
%token TRUE FALSE
%token AND OR NOT LPAREN RPAREN EOL
%token IDENTIFIER

/* Tipos */
%union {
    int ival;
}

/* Revisões de tipo para tokens */
%type <ival> TRUE FALSE IDENTIFIER
%type <ival> line expr

/* Regras de precedência */
%left OR
%left AND
%right NOT

%%

input: /* Nada */
    | input line
    ;

line: expr EOL { printf("Result: %s\n", $1 ? "true" : "false"); }
    ;

expr: TRUE          { $$ = 1; }
    | FALSE         { $$ = 0; }
    | expr AND expr { $$ = $1 && $3; }
    | expr OR expr  { $$ = $1 || $3; }
    | NOT expr      { $$ = !$2; }
    | LPAREN expr RPAREN { $$ = $2; }
    ;

%%

void yyerror(const char *msg) {
    fprintf(stderr, "Error: %s\n", msg);
}

int main() {
    yyparse();
    return 0;
}

