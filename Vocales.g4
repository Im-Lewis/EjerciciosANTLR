grammar Vocales;
r : (MAYUS|MINUS|CONSONANTES)+;
MAYUS : [AEIOU]+ {System.out.print(getText());};
MINUS : [aeiou]+ {System.out.print(getText().toUpperCase());};
CONSONANTES : ~('a'|'e'|'i'|'o'|'u') {System.out.print(getText());};
S : [\t\r\n] -> skip;
