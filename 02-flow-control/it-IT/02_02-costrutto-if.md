# Costrutto If

L'istruzione `if` è utilizzata per determinare cosa lo script deve fare **se** una specifica condizione si verifica.

Sintassi:
```bash
if [[ condizione ]]; then
    #qui il mio codice
fi
```

Il codice all'interno del blocco if verrà eseguito solamente se la condizione è vera.

Nota: è importante rispettare gli spazi tra le parantesi quadre e la condizione, altrimenti bash darà un errore di sintassi.
```bash
#questo funziona
if [[ condizione ]]; then
    #qui il mio codice
fi 

#questo non funziona
if [[condizione]]; then
    #qui il mio codice
fi

#neanche questo funzionerà
if [[ condizione]]; then
    #qui il mio codice
fi

#nemmeno questo
if [[condizione ]]; then
    #qui il mio codice
fi
```
### Esempio
```bash
#!/bin/bash

eta=19
if [[ $age -ge 18 ]]; then
    echo "sei maggiorenne"
fi
```

In questo esempio il codice stamperà la stringa "sei maggiorenne" perché la condizione definita è vera.

Si provi a leggere il codice in questa maniera
```
età è uguale a 19
se l'eta è maggiore o uguale a 18 stampa la stringa "sei maggiorenne"
```

È possibile determinare cosa lo script deve fare anche se la condizione specificata è **falsa** con l'istruzione `else`

Lo script può essere migliorato così:
```bash
#!/bin/bash

eta=17
if [[ $age -ge 18 ]]; then
    echo "sei maggiorenne"
else
    echo "NON sei maggiorenne"
fi
```
e si provi a leggere il codice:
```
età è uguale a 19
se l'eta è maggiore o uguale a 18 stampa la stringa "sei maggiorenne"
altrimenti stampa la stringa "NON sei maggiorenne"
```

Nella seconda versione dello script, il codice stamperà "NON sei maggiorenne" perché la variabile `$eta` è minore di 18, la condizione è quindi falsa.

L'istruzione `else` è facoltativa.

## Condizioni Multiple

In Bash è possibile combinare condizioni multiple con gli operatori logici

```bash
[[ condizione1 && condition2 ]] 
# AND, la condizione è vera se entrambe le condizioni sono vere.

if [[ 7 -gt 6 && 4 -lt 5 ]]; then
...
fi

[[ condition1 || condition2 ]]
# OR, restituisce vero se almeno una delle due condizione è vera 
# restituisce falso solo quando entrambe le condizioni sono false.

if [[ 7 -gt 6 || 4 -le 5 ]]; then
...
fi

[[ ! condizione ]] 
# NOT,inverte il risultato di una condizione: se è falsa diventa vera, se è vera diventa falsa.

if [[ ! 7 -lt 6 ]]; then 
...
fi

#guardando all'esempio in alto basta dare la risposta alla domanda: 
#"È vero che 7 NON è maggiore di 6?" in questo caso l'espressione restituisce vero.
```
## If multipli
 è possibile definire **blocchi if multipli** in due modi:

## L'instrizione `elif`

Questo metodo equivale ad impostare una seconda condizione se la prima è falsa.

```bash
if [[ condizione1 ]]; then
    #qui il mio codice
elif [[ condizione2 ]];then
    #qui il mio codice
else
    #qui il mio codice
if
```
Il codice all'interno del blocco `elif` verrà eseguito solamente se *condizione1* è falsa e *conditione2* è vera.

Se entrambe le condizioni sono false verrà eseguito il codice all'intern del blocco `else`. L'istruzione `else` non è obbligatoria.

## Esempio
```bash
myfile="percorso/al/mio/file"

if [[ ! -e $myfile ]]; then

    echo "il percorso non esiste"
    # se la condizione è vera il blocco if termina qui

elif [[ -f $myfile ]]; then

    echo "qualcosa esiste al percorso specificato ed è un file"
    #se la prima condizione è falsa il blocco if termina qui

else

    echo "qualcosa esiste al percorso specificato ma non è un file"
    #se tutte le condizioni sono false il blocco if termina qui

fi
```
### Attraverso blocchi if annidati
Il codice all'interno dei blocchi if viene eseguito solamente se entrambe le condizioni sono vere
```bash
if [[ condizione1 ]]; then
	if[[ condizione2 ]]; then
        # qui il mio codice
	fi
fi 
```

```bash
name="john"
age="21"

if [[ $age -ge 21 ]]; then
	if[[ $name="john" ]]; then
        echo "Hello John"
        #questo codice verrà eseguito solamente se entrambe le condizioni
        #sono vere
	fi
fi 
```
## Buone Pratiche
- il blocco `if-elif` è una buona pratica se le condizioni sono meno di 3 o 4. Evitare di aggiungere troppi blocchi `elif`
può aiutare a mantenere il codice ordinato e comprensibile.
- Se le condizioni sono maggiori di 3 o 4, valutare l'utilizzo del blocco [case](/bash-guide/work-in-progress.md)

<hr>

<div align=center>

[Torna all'Home Page](/README-it.md)

</div>

