# Cos'è Bash?
Per rispondere a questa domanda, prima dobbiamo rispondere ad un'altra: **cos'è una shell?**

## La Shell
La shell è un software che da accesso al sistema operativo sul quale è in esecuzione. In altre parole, è l'interfaccia che fornisce un modo all'utente per interagire con il Sistema Operativo.

L'utente da un comando alla shell che chiede al Sistema Operativo di eseguirlo. La shell restituisce il risultato all'utente.

Una shell può avere di tre tipi di interfaccia:

- **Grafica** (GUI - Graphical User Interface) La shell fornice finestre, pulsanti, bottoni ed altri elementi grafici che possono essere utilizzati con il mouse.

- **Testuale** (TUI - Textual User Interface) La shell fornice menu, liste ma sono mostrati a video solo con elementi testuali.

- **Riga di Comando** (CLI - Command Line Interface) La shell riceve i comandi dall'utente che li scrive riga per riga, o eseguendo uno script.

## Quindi, Cos'è Bash?
Bash (acronimo per "Bourne Again SHell") is un interprete interattivo a riga di comando largamente utilizzato su sistemi GNU/Linux.

E' stato sviluppato nel 1989 da Brian Fox come alternativa libera alla Bourne Shell (sviluppata negli anni '70).

Come detto, l'utente in bash può lanciare comandi per eseguire operazioni (come copiare un file o una cartella) o può creare uno script che contiene i comandi (con controllo del flusso per gli script più complessi) che Bash eseguira consecutivamente dall'inizio alla fine del file.

## Esempio

### Esecuzione di un comando

```bash
# esecuzione di un comando:
echo "Hello World"
```
In questo caso il risultato sarà la frase "Hello World" stampata sullo schermo.

### Esecizione di Uno Script

```bash
# esecizione di uno script
./script.sh
```
dove il contenuto di script.sh` è
```bash
#!/bin/bash
echo "Hello World"
echo "Hello again"
```
Il risultato sarà la frase "Hello World" e "Hello again" stampate sullo schermo ma l'utente ha dato alla shell un solo comand: eseguire lo script che contiene i comandi.


## Perché programmare script in Bash?
La programmazione della shell è orientata all'esecuzione di comandi e programmi esterni che, posti nell'ordine giusto, possono automatizzare una serie di operazioni per ottenere un risultato finale.

La forza nel programmare gli script bash risiede nella possibilità di automatizzare operazioni complesse o, più semplicemente, repetitive che altrimenti l'utente dovrebbe fare manualmente un comando alla volta.


<div align=center>

[Torna alla Home](/bash-guide/README-it.md)

</div>
