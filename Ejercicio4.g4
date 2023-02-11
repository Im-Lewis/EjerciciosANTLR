grammar Blancos;
r : (PALABRAS|RESTO)+;

S : [\n\t\r|' '] -> skip;

PALABRAS : [a-zA-Z]+ {
    System.out.print(getText()+" ");
};

RESTO : .{
    System.out.print(getText());
};

