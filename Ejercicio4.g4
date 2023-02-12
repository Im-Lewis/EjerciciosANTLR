grammar Blancos;
r : (PALABRAS|RESTO|LINEA_VACIA)+;

LINEA_VACIA : SALTOS ([' ']* | [SALTOS]+) SALTOS* {
    System.out.println();
};

PALABRAS : [a-zA-Z]+ {
    System.out.print(getText());
};

RESTO : .{
    System.out.print(getText());
};

CADENA_ESPACIOS : [' ']+ -> skip;

SALTOS : '\r' '\n' | '\n';


