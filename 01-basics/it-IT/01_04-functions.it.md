# Funzioni
## Tabella dei contenuti
1. [Introduzione](#introduzione)
1. [Come dichiarare una funzione](#come-dichiarare-una-funzione)
1. [Parametri](#parametri)
1. [Variabili globali e locali](#variabili-globali-e-locali)
1. [Istruzione Return](#istruzione-return)
1. [Come restituire un valore](#come-restituire-un-valore)

## Introduzione

Una funzione è un pezzo di codice che può essere "chiamato" ogni qualvolta è necessario. Aiuta ad organizzare il codice ed evita che venga ripetuto.

## Come dichiarare una funzione

Una funzione può essere dichiarata così:

```bash
function myFunction(){
    #qui il mio codice
}

#oppure

myFunction(){
    #qui il mio codice
}

```

e quando è necessario chiamarla:

```bash
myFunction
```
## Esempio
Ecco un semplice esempio
```bash
#definizione della funzione
function sayHello(){
    echo "Hello"
}

#una volta definita la funzione può essere chiamata

sayHello #output: "hello"

```
## Parametri

Una funzione può anche lavorare con i **parametri**:
```bash
function sayHello(){
    echo "hello $1"  #$1 rappresenta il primo parametro passato
}

sayHello "John"
#output: "hello John"
```

## Variabili Globali e Locali
In Bash le variabili sono **globali** di default e sono accessibili in ogni punto dello script.

Una variabile **locale** è accessibile **soltanto nell'ambito della funzione in cui viene definita** e può essere dichiarata con la parola chiave ```local```.

```bash
globalVar="hello global"

function sayHello(){
    local myLocalVar="hello local"
    echo "$myLocalVar"
    echo "$globalVar"
}

sayHello #output: "hello local" e  "hello global"

#proviamo l'istruzione
echo "$myLocalVar" 

#output: vuoto o errore poiché la variabile è locale nella funzione sayHello e non è accessibile altrove.

```

## Istruzione Return
In Bash l'istruzione ``return`` viene utilizzata per restituire un **exit code**. Il valore 0 significa successo, un valore diverso da zero significa errore. Tale istruzione in bash è diversa dagli altri linguaggi di programmazione poiché **non restituisce nessun risultato**.

```bash
function dirExists(){
    if [[ -d "$mydir" ]]; then
        echo "La directory esiste"
        return 0
    else
        echo "La directory non esiste"
        return 1
    fi 
}
```
L'istruzione ``return`` termina l'esecuzione della funzione.Può essere utilizzata singolarmente per terminare una funzione e restituirà il valore dell'exit code dell'ultimo comando eseguito.

```bash
function dirExists(){
    if [[ -d "$mydir" ]]; then
        echo "La directory esiste"
        return # se non ci sono errori, la funzione restituisce 0
        echo "un altro messaggio" #questa linea di codice non verrà mai eseguita
    else
        echo "La directory non esiste"
        return 1
        echo "ancora un altro messaggio" #neanche questa verrà eseguita
    fi
}
```
## Come restituire un valore
Una funzione in Bash può restituire un valore utilizzando un trucco: l'istruzione ```echo```.

```bash
function somma(){
    echo (("$1"+"$2"))
}

somma 2 3 #output: 5
```
è anche possibile assegnare il valore che la funzione restituisce ad una variabile

```bash
function somma(){
    echo (("$1"+"$2"))
}

myVar=$(somma 2 3)

echo "$myVar" #output: 5
```

<div align=center>

[Back to Home](/README.md)

</div>
