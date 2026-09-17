# Reindirizzare l'Input e L'Output

## Tabella dei Contenuti

1. [Introduzione](#introduzione)
1. [Reindirizzare l'Input](#reindirizzare-linput)
1. [Reindirizzare l' Output](#reindirizzamento-delloutput)
1. [Reindirizzare gli errori](#reindirizzare-lo-standard-error)
1. [Unire gli Stream](#unire-gli-stream)
1. [Silenziare l'Output](#silenziare-loutput)


### Attenzione ⚠️
Fai attenzione: i reindirizzamento **possono sovrascrivere / cancellare il contenuto di un file.** Assicurati di sapere cosa stai facendo.

## Introduzione
In Bash è possibile reindirizzare l'input e l'output di un comando.

Esistono tre tipi di stream

- **Standard input** (stdin) file descriptor 0 (la tastiera)
- **Standard output** (stdout) file descriptor 1 (il terminale)
- **Standard error** (stderr) file descriptor 2 (il terminale, utilizzato per i messaggi d'errore)

## Reindirizzare l'Input
Lo Standard Input è la tastera dell'utente ed è possibile reindirizzarlo su un file con la parola chiave ``<``.

### Esempio
```bash
wc -l < myfile.txt
# l'input per il comando è il contenuto del file myfile.txt
```
Ecco altri esempi
```bash
#cerca una stringa nel file
grep "something" < myfile.txt

#ordina il contenuto del file
sort < myfile.txt
```
In molti casi ``<`` non è necessario poiché i comandi prendono i file in input come argomento.

- Utilizzare ``<`` significa dire direttamente a bash di aprire il file
- Passare il file come argomento delega al programma / comando l'aperture dello stesso (se lo accetta come tale).

## Reindirizzamento dell'Output

### Attenzione ⚠️
Fai attenzione: il reindirizzamento dell'output **può sovrascrivere / cancellare il contenuto di un file.** Assicurati di sapere cosa stai facendo.

Un comando Bash solitamente produce un output, per esempio il comando ``ls`` stampa sul terminale il contenuto di una cartella oppure il comando ``cat file.txt`` mostra il contenuto di un file.

Quando Bash esegue un comando di solito l'output viene stampato sullo **standard output** (il terminale). Per reindirizzare quest output si utilizza la parola chiave ``>`` oppure ``>>``.

- ``>`` scrive l'output in un file sovrascrivendo il contenuto precedente
- ``>>`` aggiunge l'output in un file mantenendo il contenuto precedente

### Esempio

1. reindirizzare l'output di ``ls``
```bash
ls mydyr
# il comando mostra il contenuto della cartella mydir
```
Per salvare questo output in un file
```bash
ls mydir > myfile.txt

# se myfile.txt non è vuoto, il suo contenuto verrà sovrascritto!
# se myfile.txt non esiste verrà creato
# fai attenzione: bash non chiede conferma
```
Invece, se si vuole **aggiungere** l'output ad un file:
```bash
ls mydir >> myfile.txt

# aggiunge l'output al file myfile.txt anche se vuoto
# se myfile.txt non esiste verrà creato
# fai attenzione: bash non chiede conferma

### Un altro esempio
2. Creare un file di testo e scrivere al suo interno la stringa "hello world"
```bash
#crea il file file
touch myfile.txt
#reindirizza l'output di echo nel file myfile.txt
echo "hello world" >> myfile.txt 
```
## Reindirizzare lo Standard Error
Quando un errore si verifica durante l'esecuzione di un comando è possibile reindirizzarlo.
```bash
ls nowhere 
# si consideri che la cartella nowhere non esista
# il comando produrrà l'errore
# ls: cannot access 'nowhere': No such file or directory
```
per reindirizzare il messaggio di errore
```bash
ls nowhere 2> error.txt 
#scrivi nel file error.txt l'errore, se il file non è vuoto 
#il suo contenuto verrà sovrascritto
```
oppure si può aggiungerlo (appendere) ad un file
```bash
ls nowhere 2>> error.txt
#il nuovo contenuto verrà aggiunto al file
```
"2" sta per file descriptor 2 ovvero standard error.

## Unire gli Stream
In bash è possibile unire il reindirizzamento dello standard output ed error così:

```bash
ls nowhere >> log.txt 2>&1

#oppure con la sintassi moderna
ls nowhere &>> log.txt
```
Entrambi i messaggi di output ed errore verrnno salvati nello stesso file.

Ecco altri esempi:

```bash

#ordina il contenuto di un file lo scrive in un altro file
sort < myfile.txt > sortedfile.txt

# questo equivale a (dove il file viene passato come argomento a sort)
sort myfile.txt > sortedfile.txt
```
## Silenziare l'Output
A volte è necessario scartare l'output di un comando come ad esempio quando si vuole creare una modalità silenziosa per un script.

Questo è possibile reindirizzando l'output verso un file speciale: **/dev/null/**.

Nei sistemi Unix e Unix-like il file /dev/null è un file speciale che è sempre vuoto, non occupa spazio di memoria e tutto quello che ci viene scritto è automaticamente cancellato. Va immaginato come un buco nero nello spazio.

```bash
ls mydir > /dev/null
# l'output verrà salvato nel file null
# e verrà immediatamente cancellato.
# stessa cosa per lo standard error

ls nowhere 2> /dev/null 
```

### Svuotare un File
### Attenzione ⚠️
Fai attenzione: l'esempio seguente **cancella completamente il contenuto di un file**. Assicurati di sapere cosa stai facendo.

è possibile utilizzare /dev/null per svuotare un file.
```bash
cat /dev/null > myfile.txt

# l'output del comando cat viene scritto sul file myfile.txt
# il file sarà svuotato
# fai attenzione: bash non chiede conferma!
```

<div align=center>

[Torna all'Home Page](/README-it.md)

</div>