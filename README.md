# Documentação do Analisador Sintático para a Linguagem Boleano

Este é um programa que implementa um analisador sintático para a linguagem "Boleano". O analisador sintático é responsável por analisar programas escritos nessa linguagem e verificar se estão sintaticamente corretos de acordo com as regras gramaticais definidas.

## Arquivos do Programa

O programa consiste nos seguintes arquivos:

- `boleano.y`: Este é o arquivo de especificação da gramática da linguagem "Boleano". Ele contém as regras gramaticais que definem a estrutura sintática da linguagem.

- `lexer.l`: Este é o arquivo de especificação de análise léxica escrito em Lex (ou Flex). Ele contém as regras para reconhecer e tokenizar os símbolos da linguagem.

- `boleano.tab.c` e `boleano.tab.h`: Esses são os arquivos gerados pelo Bison (ou Yacc). O arquivo `boleano.tab.c` contém o código-fonte do analisador sintático que foi gerado a partir da especificação da gramática em `boleano.y`. O arquivo `boleano.tab.h` contém as definições de tokens e outras informações necessárias para o analisador sintático.

- `parser.c`: Este é um arquivo de código-fonte adicional que contém implementações de funções auxiliares relacionadas ao analisador sintático, se necessário.

## Compilação e Execução

Para compilar o programa, execute os seguintes comandos no terminal:

  yacc -d boleano.y
  lex lexer.l
  gcc -o parser boleano.tab.c lex.yy.c parser.c -lfl


Para executar o programa e analisar um arquivo de entrada contendo um programa na linguagem "Boleano", use o seguinte comando:

  ./parser < input.txt

Substitua `input.txt` pelo nome do arquivo de entrada que contém o programa a ser analisado.

## Autor

Este programa foi desenvolvido por Filipe Barroso como atividade avaliativa para a disciplina de compiladores, do programa de computação da UFOPA.

