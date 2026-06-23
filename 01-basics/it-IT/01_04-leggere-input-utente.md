# Leggere l'Input Utente

A volte è utile chiedere all'utente in input durante l'esecuzione di uno script. Bash può leggere tali input con il comando `read`

## Sintassi
```bash
read <opzioni> <argomenti>
```

### Opzioni
Il comando `read` ha le seguenti opzioni

|Opzione|Descrizione|
|---------|-----------|
|-p| Mostra un message prima che l'utente possa dare l'input|
|-t| imposta un timeout
|-s| modalità silenziosa, utile per digitare le password |
|-n| legge soltanto il numero specificato di caratteri
|-r| legge i dati in modalità grezza e non interpreta le backslash

## Esempi
```bash
#eseguendo
read
#il terminale rimane in attesa dell'input utente
#l'utente digita e invia
Hello world
#il terminale ritorna al normale stato
```
Il comando `read` deve pur salvare da qualche parte il dato ottenuto dall'utente... I dati vengono salvati nella variable chiamata $REPLY se nessuno argomento viene passato a read.

Considerando l'esempio precedente:

```bash
#stampanto la variabile $REPLY
echo $REPLY
#il rislutato sarà
Hello World
```
Si immagini che si voglia creare un semplice script che prende un input dall'utente e lo stampi sullo schermo.

```bash
#!/bin/bash

read userinput
echo "Il tuo input è" $userinput
```
Dopo aver lanciato lo script esso rimarrà in attesa che l'utente immetta il proprio input. Quando questo viene dato, verrà stampato sullo schermo.

Lo script può essere migliorato: può chiedere all'utente di inserire il dato con un messaggio **prima** che lo script sia pronto per riceverlo.

```bash
#!/bin/bash

read -p "Inserisci il tuo messaggio: " userinput
echo "Il tuo messaggio è" $userinput
```
Eseguendolo, l'output sarà

```bash
                            #l'utente inserisce
Inserisci il tuo messaggio: hello world
# lo script stampa
hello world
```
## Buone Pratiche
- **Mai fidarsi dell'utente**: validare sempre ciò che l'utente inserisce.
- **Modalità Grezza**: utilizzare `read` con il flag `-r` per evitare che bash elabori le backslash.

<div align=center>

[Torna alla Home](/README-it.md)

</div>
