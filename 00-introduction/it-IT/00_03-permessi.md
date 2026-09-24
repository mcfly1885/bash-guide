# Permessi di file e directory
### Sommario
1. [Introduzione](#introduzione)
1. [Comprendere le autorizzazioni](#comprendere-i-permessi)
1. [Gestione dei permessi](#gestione-dei-permessi)
    - [Modalità simbolica](#modalità-simbolica)
    - [Modalità numerica](#modalità-numerica)
1. [Permessi di accesso alla directory](#permessi-di-accesso-alle-directory)
1. [Best Practices](#best-practices)
1. [Cambio di proprietà](#cambio-di-proprietà)

## Introduzione
I permessi sono strumenti di sicurezza nei sistemi Linux per gestire i livelli di accesso di utenti e gruppi a file e directory.

### Attenzione ⚠️
Attenzione: modificare i permessi di un file o di una directory di sistema può causare risultati indesiderati. Assicurati di sapere cosa stai facendo! Se vuoi provare i comandi, utilizza file o directory vuoti creati appositamente per questo scopo.


## Comprendere i permessi
I permessi di file/directory sono generalmente rappresentati da una **stringa di dieci caratteri**.

- Il primo carattere indica se un'entità è un file (-) o una directory (d)
- il primo gruppo (3 caratteri) rappresenta i permessi del proprietario
- il secondo gruppo (3 caratteri) rappresenta i permessi del gruppo
- il terzo gruppo (3 caratteri) rappresenta i permessi di tutti gli altri gruppi

### Chi è chi?

- **proprietario**: l'utente che ha creato il file/la directory
- **gruppo**: il gruppo a cui è stato assegnato il file/directory
- **altro**: gli altri gruppi del sistema

### Esempi
1. file ``-rwxrw-r--``
<br>L'entità è un file (-), il proprietario ha i permessi di lettura, scrittura ed esecuzione, il gruppo assegnato ha solo permessi di lettura e scrittura, tutti gli altri solo di lettura.

2. directory ``drw-rx---``
<br> L'entità è una directory (d), il proprietario ha permessi di lettura e scrittura, il gruppo ha permessi di sola lettura e accesso alla directory stessa, tutti gli altri nessun permesso.

## Gestione dei permessi
Il comando bash per gestire i permessi di file e directory è ``chmod`` (change mode) e può essere utilizzato in **modalità simbolica** o **modalità numerica**.

### Modalità simbolica
Nella modalità simbolica, le autorizzazioni e gli utenti sono rappresentati da lettere.

Le autorizzazioni possono essere assegnate a:

- proprietario (u)
- gruppi (g)
- altri gruppi (o)

Le autorizzazioni sono:

- leggere (r)
- scrivere (w)
- eseguire (x)

Per aggiungere e rimuovere le autorizzazioni:

- Per **aggiungere** l'autorizzazione usa ``+``
- Per **rimuovere** l'autorizzazione usa ``-``

### Esempio
Concedi i permessi di esecuzione a un file bash tramite il comando ``chmod`` solo al suo proprietario.
```bash
#dai al proprietario del file il permesso di esecuzione
chmod u+x mybashfile.sh

#o rimuoverlo
chmod u-x mybashfile.sh
```
Se non è stato specificato alcun utente/gruppo/altro, l'autorizzazione specificata verrà impostata per tutti gli utenti.
```bash
chmod +x mybashfile.sh
#Il file è eseguibile per il proprietario, il gruppo e tutti gli altri.
```

## Modalità numerica
La modalità numerica utilizza **cifre in base otto** (le cifre vanno da 0 a 7) anziché le lettere.

Ciascun valore di autorizzazione (lettura, scrittura ed esecuzione) è rappresentato da una cifra binaria: impostandola a 1 si abilita, a 0 si disabilita.

| ottale | binario | livello di autorizzazione | notazione |
|--------|------------|----------------------|----------|
|0 | 000 | nessun permesso | --- |
|1 | 001 | eseguire | --x
|2 | 010 | scrivere | -w-
|3 | 011 | scrivere ed eseguire | -wx
|4 | 100 | leggere | r--
|5 | 101 | leggere ed eseguire | r-x
|6 | 110 | leggere e scrivere | rw-
|7 | 111 | leggere, scrivere ed eseguire |rwx

### Esempio
Concedi i permessi completi a un file bash solo al suo proprietario, nessun permesso a tutti gli altri.
```bash
#modalità simbolica
chmod u+rwx mybashfile.sh

#modalità numerica
chmod 700 mybashfile.sh
```
Considerando i tre gruppi:
- proprietario: 7 (111) lettura=1, scrittura=1, esecuzione=1
- gruppo: 0 (000) lettura=0, scrittura=0, esecuzione=0
- altro: 0 (000) lettura=0, scrittura=0, esecuzione=0


## Permessi di accesso alle directory
Per le directory è possibile impostare il permesso ``x`` flag che consente di **attraversare** la directory stessa.

Senza il flag ``x`` abilitato, anche con i permessi di lettura e scrittura l'utente non può accedere al suo contenuto.

### Impostazione dei permessi su una directory
```bash
comod midir 755
#applica le autorizzazioni solo alla directory di destinazione

chmod mydir 755 -R
#applica le autorizzazioni in modo ricorsivo
```
Con il flag ``-R``, i permessi verranno impostati in modo ricorsivo per tutti i file e le sottocartelle contenuti in ``mydir``.


## Best Practices

1. **Evitare** di impostare i permessi 777 su un file o una directory: ciò concederà **l'accesso completo** a tutti gli utenti del sistema a tale risorsa.
1. **Zero Trust**: impostare **solo le autorizzazioni necessarie** per utenti e/o gruppi su file e directory.

## Cambio di proprietà
In Bash, per cambiare la proprietà di un file o di una directory si usa il comando ``chown``. È possibile assegnare la proprietà ad un utente e/o a un gruppo.

### Attenzione ⚠️
Attenzione: modificare la proprietà di un file o di una directory di sistema può causare risultati indesiderati. Assicurati di sapere cosa stai facendo! Se vuoi provare i comandi, utilizza file o directory vuoti creati appositamente per questo scopo.

### Esempio
```bash
chown johndoe myscript.sh
#Ora il proprietario di myscript.sh è l'utente "johndoe"

#cambiogruppo
chown :developers myscripts.sh

#cambio di proprietario e gruppo
chown johndoe:developers myscript.sh

#cambiare proprietario e gruppo ricorsivamente in una directory con
#modalità verbose (-v non obbligatoria)
chown -R johndoe:developers scripts -v

```
L'utente e il gruppo di destinazione devono esistere nel sistema.  

---
<div align=center>

[Torna alla pagina principale](/README-it.md)

</div>