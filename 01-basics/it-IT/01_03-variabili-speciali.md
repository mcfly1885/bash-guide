# Variabili Speciali

In Bash esistono alcune variabili speciali:

## $1, $2...
Queste variabili contengono l'ennesimo argomento passato al momento dell'invocazione dello script.

```bash
./myscript arg1 arg2
```

$1 prenderà il valore "arg1", $2 prenderà il valore "arg2". Per riferirsi alle variabili che hanno un indice superiore a 9, si utilizza la sintassi
```bash
${10}, ${11},...
```
## $#
Contiene il numero di argomenti passati allo script.

Considerando l'esempio:
```bash
./myscript arg1 arg2
```
il valore di $# sarà 2

Comunemente questa variabile è utilizzata per controllare se è stato passato un numero minimo di parametri allo script
```bash
# controlla se non sono stati passati parametri.
# se la condizione è vera, termina lo script
if [[ $# -eq 0 ]]; then
    echo "Errore: nessun parmetro è stato dato"
    echo "chiusura"
    exit 1
fi
```

## $@
Contiene tutti i parametri dati come argomento allo script. Questa variabile è utile nei cicli

 ```bash
 for args in $@; do
    ...
done
```


## $?
Contiene l'exit code dell'ultimo comando eseguito. Zero equivale a successo, un valore diverso da zero equvale a errore.
```bash
mydir="percorso/ad/una/cartella"
test -f $mydir
echo $? 
#l'output sarà 1, perché l'ultimo comando fallisce (test controlla se, in questo caso, una cartella è un file)
```

## $_ 
Contiene l'argomento passato all'ultimo comando eseguito
```bash
echo "hello world"
echo $_ #verrà stampato di nuovo "hello world"
```

## $0
Contiene il nome della shell o dello script.

## $$
Contiene il PID del processo corrente della shell.

## $! 
Contiene il PID dell'ultimo processo in background.

## Variabili d'Ambiente

Le varibili d'ambiente sono variabili che sono accessibili da tutti i processi che sono attivi nella shell.

Solitamente vengono utilizzate per configurare il sistema operativo e/o applcazioni.

Per controllare quali variabili d'ambiente sono al momento impostate sul sistema operativo basta eseguire
```bash
env
```
Il comando mostrerà una lista di tutte le variabili d'ambiente impostate.

```bash
echo $HOME
```
Il comando sopra descritto stamperà il conenuto della variabile d'ambiente HOME che di solito contiene il percorso della cartella home dell'utente corrente.

Ecco una mini-lista di alcune varibili d'ambiente e del loro contenuto

- HOME percorso alla cartella home dell'utente corrente
- USER nome dell'utente corrente
- SHELL shell corrente
- PWD  cartella attiva
- LANG lingua predefinita del sistema operativo
- [...]

## Come dichiarare una variabile d'ambiente

Per creare una variabile d'ambiente si utilizza la parola chiave `export`
```bash
export $MYNAME="John Doe"
```
Comunemente questo tipo di dichiarazione è utilizzata nel file `.bashrc` per impostare permanentemente variabili d'ambiente personalizzate.
