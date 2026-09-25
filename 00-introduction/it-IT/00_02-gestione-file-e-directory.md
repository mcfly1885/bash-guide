# Gestione di file e directory

### Sommario
1. [Introduzione](#introduction)
1. [Creazione](#create)
1. [Rinomina](#rinomina)
1. [Copia](#copy)
1. [Rimozione](#rimuovi)

## Introduzione
Bash è in grado di gestire le operazioni relative alla gestione di file e directory.

### Attenzione ⚠️
Attenzione: l'esecuzione di operazioni di gestione di file e directory può causare risultati indesiderati. Se si desidera provare i comandi, utilizzare file vuoti o directory creati appositamente per questo scopo.

## Creazione

### Nuovo file
In bash, per creare un file è possibile utilizzare il comando ``touch``.

Il comando ``touch`` viene utilizzato per aggiornare i timestamp di accesso e modifica più recenti di un file esistente, ma se il file di destinazione non esiste, verrà creato (vuoto).

```bash
touch mynewfile.txt
#creazione di un nuovo file denominato mynewfile.txt

touch myoldfile.txt
#aggiorna i timestamp di accesso e modifica (supponendo che il file myoldfile.txt esista già)
```
I timestamp verranno aggiornati nel momento in cui il comando viene eseguito.

### Nuova directory
Per creare una directory, utilizzare il comando ``mkdir`` (make directory).

mkdir accetta come argomento il nome della directory che si desidera creare.
```bash
mkdir mydir
```
Il risultato sarà la creazione di una nuova directory denominata "mydir".

Per creare più directory
```bash
mkdir mydir1 mydir2 mydir3
```
È anche possibile creare una directory in un'altra posizione:
```bash
mkdir anotherDir/mydir
```
La directory `mydir` verrà creata **all'interno** della directory `anotherDir`.

Se il percorso specificato non esiste o se esiste già una directory con lo stesso nome fornito come argomento, ``mkdir`` genererà un errore.

### Creazione di più file e directory
Bash può creare più file e directory contemporaneamente con la seguente sintassi.

```bash
touch il fileNumero{1..10}.txt
```
La sequenza ``{1..10}`` indica il numero dei nuovo files che verranno creati (10 in questo caso).

La stessa tecnica può essere utilizzata con il comando ``mkdir``.

```bash
mkdir dirNumber{1..10}
```

## Rinomina

Per rinominare un file o una directory in bash si usa il comando ``mv`` (move).

La funzione principale del comando `mv` è quella di **spostare** file e directory in un'altra destinazione all'interno del filesystem, ma se l'origine e la posizione di destinazione coincidono, il file/directory verrà rinominato.

La sintassi è
```bash
mv origine destinazione
```
in cui ``origine`` è il file o la directory da spostare, ``destinazione`` è la nuova posizione.

### Attenzione ⚠️
Il comando `mv` di default **non chiede conferma**! Se nella directory di destinazione è presente un file/directory con lo stesso nome, verrà sovrascritto!

```bash
#sposta un file in un'altra directory
mv myfile.txt mydir/subdir

#sposta un file con conferma
mv myfile.txt mydir/subdir -i

#rinomina il file
mv myfile.txt oldfile.txt

#sposta e rinomina
mv myfile.txt mydir/subdir/oldfile.txt

#Rinominare una directory (se dir2 non esiste nel percorso specificato)
mv dir1 dir2

#sposta una directory
mv dir1 dir2

#sposta una directory e rinominala
mv dir1 dir2/newdir
#supponendo che newdir non esista, altrimenti dir1 verrà spostato nella directory newdir.
```
## Copia
Per copiare un file o una directory, usa il comando ``cp``. Come il comando ``mv``, ``cp`` accetta come argomenti il ​​file/la directory d'origine e la directory in cui verrà copiato.

La sintassi è
```bash
cp origine destinazione
```

### Attenzione ⚠️
Il comando ``cp`` per impostazione predefinita **non richiede conferma**! Se nella directory di destinazione è presente un file/directory con lo stesso nome, verrà sovrascritto!

```bash
#copia un file in una directory con conferma
cp myfile.txt mydir -i

#copia una directory
cp mydir anotherdir/subidr -r -i
```
## Rimuovere
Per rimuovere (**eliminare**) un file o una directory, utilizzare il comando ``rm``.

### Attenzione ⚠️
Il comando ``rm`` per impostazione predefinita **non richiede conferma** ed elimina immediatamente il file specificato. Se si desidera provare il comando, utilizzare file o directory vuoti creati appositamente per questo scopo.

```bash
#rimozione di un file
rm myfile.txt

#rimozione di un file con conferma
rm myfile.txt -i

#rimozione di una directory
rmmydir -r

#rimozione di una directory con conferma
rm mydir.txt -i -r
```
Per rimuovere le directory è possibile utilizzare anche il comando ``rmdir`` che rimuove **solo le directory vuote**.

```bash
rmdir mydir
#la mia directory verrà rimossa solo se è vuota
```
---
<div align=center>

[Torna alla pagina principale](/README.md)

</div>