grammar Sig_ant;
r : (T_VOCAL|T_CONSONANTE|RESTO|S_LINEA)+;

//---------------------------------------------------------------------------------------------------------------------
//Saltar
S : [\r\t] -> skip;

//Termina en vocal
T_VOCAL : [a-zA-Z]*VOCALES+{
    for (char c: getText().toCharArray ()) {
        if(c == 'a'){
            c = 'z';
        }
        else if (c == 'A'){
            c = 'Z';
        }
        else {
            c--;
        }
        System.out.print(c);
    }
};

//Termina en consonante
T_CONSONANTE : [a-zA-Z]*CONSONANTES+{
    for (char c: getText().toCharArray ()) {
        if(c == 'z'){
            c = 'a';
        }
        else if (c == 'Z'){
            c = 'A';
        }
        else {
            c++;
        }
        System.out.print(c);
    }
};

//---------------------------------------------------------------------------------------------------------------------
//Salto linea
S_LINEA : '\n'{System.out.println();};

//Resto
RESTO : .{System.out.print(getText());};

//Vocales
fragment
VOCALES : [aeiouAEIOU];

//Consonantes
fragment
CONSONANTES : [b-df-hj-ñp-tv-zB-DF-HJ-ÑP-TV-Z];
