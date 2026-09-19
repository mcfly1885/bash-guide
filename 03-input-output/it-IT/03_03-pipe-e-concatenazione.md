# Pipe e Concatenazione

## Tabella dei Contenuti
1. [Pipe](#pipe)
2. [Concatenare i comandi](#concatenare-i-comandi)
3. [Utilizzare Pipe e Concatenazione insieme](#pipe-e-concatenazione-insieme)

## Pipe
In Base una Pipe è uno strumento che collega l'output di un comando all'input di un altro. La parola chiave per utilizzare le pipe è `|` e la sintassi è
`` comando1 | comando2 | comando3``

## Esempio
```bash
#mostra il contenuto del file frutti.txt 
cat fruit.txt 
#output
ciliegia
mela
pera
```
è possibile filtrare questo output con in altro comando. Quindi è necessario prendere l'output di ``cat`` e passarlo a ``grep``. Come? Qui le pipe entrano in gioco!

```bash
cat frutti.txt | grep "mela"
#output
mela
```
Cosa sta succedendo?

1. viene eseguito ``cat`` su frutti.txt
1. l'output di ``cat`` **viene passato al prossimo comando**
1. viene eseguito ``grep "mela"`` sul risultato di ``cat frutti.txt``
1. stampa il risultato sullo standard output

## Un altro esempio
Conta gli elementi in una cartella
```bash
ls mydir | wc -l
# ls mostra il contenuto della cartella mydir
# wc (word count) conta le linee dell'output di ls
```
un ulteriore pipe può essere aggiunta per contare i file di testo 
```bash
ls | grep ".txt" | wc -l
# ls mostra il contenuto della cartella mydir
# grep filtra il risultato di ls dove ".txt" corrisponde
# wc (word count) conta le linee dell'output di grep
```

## Concatenare i comandi
In Bash è possibile concatenare una sequenza di comandi con tre diversi metodi.

### Primo Metodo
- ``comando1; comando2`` comando2 viene eseguito indipendentemente dal successo o dal fallimento di comando1

Può essere letto così: *esegui il primo compito e poi esegui il secondo*.

### Esempio
```bash
ls nowhere; echo "fatto"
#ls mostra un errore (si consideri che la cartella nowhere non esista)
#echo verrà eseguito comunque.
```

### Secondo Metodo

- ``comando1 && comando2``
comando2  viene eseguito se comando1 ha successo

Può essere letto così: *esegui il primo compito, ma esegui il secondo **solo** se il primo ha successo*

```bash
ls nowhere && echo "fatto"
#ls mostra un errore (si consideri che la cartella nowhere non esista)
#echo non sarà eseguito

#oppure

ls mydir && echo "fatto"
#ls ha successo
#echo sarà eseguito
```
### Terzo Metodo
- ``comando1 || comando2``
comando2 viene eseguito solo se comando1 fallisce.

Può essere letto così: *esegui il primo compito, ma esegui il secondo **solo** se il primo fallisce*

```bash
ls nowhere || echo "fatto"
#ls mostra un errore (si consideri che la cartella nowhere non esista)
#echo sarà eseguito

#oppure

ls mydir || echo "fatto"
#ls ha successo
#echo non sarà eseguito
```
Una buona pratica quando si scrivono i script è
```bash
cd somewhere || exit
```
perché se il comando ``cd`` fallisce lo script può provocare risultati non voluti. In questo modo se ``cd`` fallisce lo script termina immediatamente.

## Pipe e Concatenazione Insieme
è possibile utilizzare pipe e concatenazione dei comandi insieme.

```bash
cat frutti.txt | grep "mela" && echo "fatto"
#La stringa "mela" e "fatto" verranno stampate sullo standard output perché grep è stato eseguito con successo

#oppure

cat frutti.txt | grep "mela" || echo "fatto"
#la stringa "fatto" non verrà stampata perché grep è stato eseguito con successo
```
<div align=center>

[Back to Home](/README-it.md)

</div>