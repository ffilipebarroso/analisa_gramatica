%{
#include "boleano.tab.h" // Inclua o arquivo de cabeçalho gerado pelo Bison
%}

%%
"true"      { return TRUE; }
"false"     { return FALSE; }
[a-zA-Z]+   { return IDENTIFIER; }
.           { return yytext[0]; } // Caracteres não reconhecidos

%%
