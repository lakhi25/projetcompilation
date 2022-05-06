/*%token NOMBRE PLUS MOINS FOIS GPAREN DPAREN EOL
%type <unit> main expression terme facteur
%start main
%%
main:
    expression EOL {}
  
;
expression:
    expression PLUS terme {}
    | expression MOINS terme {}
    | terme {}
;
terme:
    terme FOIS facteur {}
    | facteur {}
;
facteur:
    GPAREN expression DPAREN {}
    | MOINS facteur {}
    | NOMBRE {}
;*/

//Exercice-2

%token NOMBRE PLUS MOINS FOIS GPAREN DPAREN EOL

%left PLUS MOINS
%left FOIS
%nonassoc UMOINS
/**non terminaux*/
%type <unit> main expression
%start main
%%
main:
    expression EOL {}
;
expression:
      expression PLUS expression {}
    | expression MOINS expression {}
    | expression FOIS expression {}
    | GPAREN expression DPAREN {}
    | MOINS expression %prec UMOINS {}
    | NOMBRE {}
;






















