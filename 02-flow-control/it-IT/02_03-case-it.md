# Case
L'istruzione `case` è utile quando ci sono molte condizioni e rende il codice più leggibile e organizzato.

## Sintassi
 ```bash
case $myvar in
    pattern1)
        # qui il mio codice
        ;;
    pattern2)
        # qui il mio codice
        ;;
    pattern3)
        #qui il mio codice
        ;;
        *)
        #qui il mio codice
esac
 ```
Se $myvar assume uno dei valori elencati, lo script esegue il pattern corrispondente.

Vediamo un esempio
 ```bash
 #!/bin/bash
 
 colore="rosso"

case $colore in
    "giallo")
    echo "hai scelto yellow"
    ;;
    "arancione")
    echo "hai scelto orange"
    ;;
    "rosso")
    echo "hai scelto red"
    ;;
    *)
    echo "il colore $colore non è disponibile"
    ;;
esac
 ```
 The `;;` instruction è necessaria per fermare l'esecuzione del codice al pattern specifico ed uscire dal blocco `case`.

 La parola chiave `*` è utilizzata per definire tutto quello che non è stato specificato nella lista dei pattern.

 Nell'esempio sovrastante, i colori da cui scegliere sono 3 `giallo`, `arancione`, `rosso`.

 Se variabile `colore` equivale, diciamo, a `viola`,lo script esegue il codice nel patter `*` e stampa il messaggio "il colore viola non è disponibile".