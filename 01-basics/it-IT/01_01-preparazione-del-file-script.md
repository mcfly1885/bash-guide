# Preparazione del File Script

Come ogni altro linguaggio di programmazione, uno script bash è scritto in filte di testo.

Il file può avere un'estenzione `.sh` ma non è necessaria: linux eseguirà lo script comunque perché può riconoscere che il file è uno script. Come?

## Hashbang

Il file di uno script bash inizia sempre con l' **HASHBANG** o **SHEBANG**, una stringa che indica quale interprete dei comandi il sistema operativo dovrà utilizzare-

Quindi, uno script Bash dovrà sempre iniziare con:

```bash
#!/bin/bash

# qui il mio codice...

```

dove `/bin/bash` è il percorso di bash stesso. Questa shebang sicuramente funziona, ma se è necessaria più portabilità è preferibile utilizzare 
```bash
#!/usr/bin/env bash

# qui il mio codice
```
perché lo script può automatiamente trovare dove bash si trova nel sistema operativo.

## Permessi
Una volta che lo script è stato scritto, per eseguirlo è necessario dargli i permessi di esecuzione.
```bash
chmod +x myscript.sh
```
In questo modo, lo script potrà essere eseguito da tutti gli utenti del sistema operativo.

Per rendere lo script eseguibile solo dal proprietario basta eseguire:
```bash
chmod 700 myscript.sh
```

## Eseguire uno script
Il metodo più comune per eseguire uno scritpt è
```bash
#esegue lo script nella cartella corrente
./myscript.sh

#esegue lo script indicando il percorso completo
./perocso/al/mio/script.sh
```
Lo script verrà eseguito solamente se gli sono stati impostati i permessi di esecuzione.