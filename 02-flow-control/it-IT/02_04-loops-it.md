# Cicli
 Un iterazione è un'istruzione utilizzata per ripetere una più operazioni.

 Un ciclo può essere di due tipi:
 - **predeterminato**: il ciclo viene eseguito per un numero definito di volte.
 - **non predeterminato**: il ciclo viene eseguito fin tanto che una condizione è vera o falsa.

 In Bash esistono tre istruzioni per impostare un ciclo:
- for
- while
- until

## Ciclo For
Il ciclo `for` è di tipo **predeterminato** utilizzato per scorrere elementi in una lista:

### Syntax
```bash
for $var in list; do
    echo $var
done
```
Un esempio molto comune è:
```bash
for $args in $@
    echo $args
done
```
La variabile speciale `$@` contiene tutti i valori dati allo script, come singole parole.

L'esempio sovrastante stampa tutti i valori presenti nella variabile `$@'`.

### Sintassi "in stile C"

Bash accetta anche la sintassi *in stile C* per definire un ciclo for.

```bash
for ((i=0;i<10;i++)); do
    echo "Numero: $i"
done
```
Dove `$i` è un indice che incrementa il suo valore ad ogni iterazione.

## Ciclo While
Il ciclo while è di tipo **non predeterminato**: continuerà le iterazioni fin quando la condizione impostata è **vera**.

```bash
while [[ condizione ]]; do
    #qui il mio codice
done
```
Un semplice esempio
```bash
counter=0
while [[ counter -le 10 ]]; do
    echo "Valore del Contatore: $counter"
    ((counter++))
done
```
Quando il valore della variabile contatore è 11, il ciclo di fermerà.

Un'applicazione comune dell'istruzione while è quella di creare, unitamente all'istruzione `case`, una richiesta Si/No
```bash
while true; do
    read -p "Sei sicuro di voler fare...? " answer
     case $answer in
        y|Y) 
            #my code here
            break
            ;;
        n|N) 
            echo "Operazione Annullata"
            exit 0
            ;;
        *) echo "Prego inserire y o n"
        ;;
    esac
done
```

Il ciclo continua finché l'utente non inserisce y,Y,n oppure N.

Se l'utente inserisce y, corrisponderà al pattern impostato ed il ciclo si fermerà e lo script proseguirà.

Se l'utente inserisce n, di novo corrisponderà al pattern impostato e termina lo script con l'istruzione `exit 0`.

Se l'utente inserisce qualsiasi altra cosa lo script mostrerà il messaggio "Prego inserire y o n" e chiederà di nuovo all'utente di inserire la propria risposta.

### Ciclo Until
Il ciclo Until funziona come il ciclo while, ma le iterazioni continuano fin tanto che la condizione impostata è **falsa**.

```bash
counter=0
until [[ counter -ge 10 ]]; do
    echo "Valore contatore: $counter"
    ((counter++))
done
```
Il ciclo continua fin quando il contatore non è maggiore o uguale a 10.

## Break e Continue
- L'istruzione `break` ferma immediatamente l'esecuzione del ciclo e va avanti con il resto dello script.

- L'istruzione `continue` ignora l'iterazione corrente e va direttamente alla prossima.