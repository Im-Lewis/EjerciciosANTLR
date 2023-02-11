grammar Multiplos;
r  : (POSITIVOS|NEGATIVOS)+;
POSITIVOS : [0-9]+ {
    int numero = Integer.parseInt(getText());

    if (numero % 3 == 0){
            numero += 5;
        }
    System.out.print(numero+"\n");
};
NEGATIVOS : '-'[0-9]+ {System.out.print(getText()+"\n");};
S : [\r\t\n] -> skip;



