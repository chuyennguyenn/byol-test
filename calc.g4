grammar calc;

prog : (stmt NEWLINE)* ;
stmt : expr | assignment ;
expr : INT OP INT
     | num
     | '(' expr ')'
     ;
     
assignment :  VARIABLE '=' expr;
     
BOOLEAN : ['YES' | 'NO'] ;
SENTENCE : [WORD*| NUM*]+  [' ']+  [WORD* | NUM*]+ ;
CHAR: [WORD | NUM];
FLOAT: [NUM]* ',' [NUM]+ ;
INT: [0-9]+;
NUM : [INT | FLOAT];
OP : ( '+' | '-' | '*' | ':' ) ;
WORD : [a-zA-Z_]*;
NUMCOMPARE: [NUM | FLOAT] [COMAPARE] [NUM | FLOAT] ;
COMPARE: ['<' | '>' | '==='];


C0: [PIOR2 | C1 | NUM] OP [PIOR2 | C1 | NUM] ;  
C1: '( ' [C2 | PIOR1] ')' ;
C2: '[' [C3 | PIOR1] ']' ;
C3: '{' PIOR1 '}' ;
PIOR1: NUM [ '*' | ':' ] NUM ;


