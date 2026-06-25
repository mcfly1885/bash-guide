# Impostare una Condizione

In Bash esiste più di un modo di impostare una condizione:

- **[ condizione ]** Equivale ad invocare il comando **test**, un programma esterno, utile se lo script deve funzionare con shell che non sono bash.

- **[[ condizione ]]** Parola chiave interna di Bash, versione migliorata di test ed è considerata lo standard per la programmazione Bash moderna.

- **(( condizione ))** Utilizzata solo per le espressioni aritmetiche, è più intuitivo di `[[ ]]` ad è utilizzato anche per assegnare ad una variabile il risultato di una operazione aritmetica.

## Operatori di Confronto

Una condizione è un'espressione che può essere definita attraverso gli **operatori di confronto**.

## Operatori Numerici

### Operatori di confronto numerici con [[ ]]

|Operatore|Descrizione|
|---------|-----------|
|-gt| maggiore di
|-ge| maggiore o uguale a
|-lt| minore di
|-le| minore o uguale a 
|-eq| uguale a
|-ne| diverso da
```bash
[[ x -gt y ]] # x è maggiore di y
[[ x -ge y ]] # x is maggiore o uguale a y
[[ x -lt y ]] # x is minore di y
[[ x -le y ]] # x is minore o uguale a  to y
[[ x -eq y ]] # x uguale a y
[[ x -ne y ]] # x diverso da y
```

### Operatori di confronto numerici con (( ))

|Operatore|Descrizione|
|---------|-----------|
|>| maggiore di
|>=| maggiore o uguale a
|<| minore di
|<=| minore o uguale a 
|==| uguale a
|!=| diverso da
```bash
(( x > y ))  # x è maggiore di y  
(( x >= y )) # x is maggiore o uguale a y 
(( x < y ))  # x is minore di y
(( x <= y )) # x is minore o uguale a  to y
(( x == y )) # x uguale a y
(( x != y )) # x diverso da y
```

## Operatori per File
|Operatore|Descrizione|
|---------|-----------|
|-e| file esiste
|-f| file esiste ed è un file
|-d| file esiste ed è una directory
|-r| file esiste ed è leggibile
|-w| file esiste ed è scrivibile
|-x| file esiste ed è eseguibile
|-s| file esiste e la sua dimensione e maggiore di 0

```bash
[[ -e my_file ]] # file esiste
[[ -f my_file ]] # file esiste ed è un file
[[ -d my_file ]] # file esiste ed è una directory
[[ -r my_file ]] # file esiste ed è leggibile
[[ -w my_file ]] # file esiste ed è scrivibile
[[ -x my_file ]] # file esiste ed è eseguibile
[[ -s my_file ]] # file esiste e la sua dimensione e maggiore di 0
```
## Operatori per Stringhe
|Operatore|Descrizione|
|---------|-----------|
|=| uguale a
|!=| diverso da
|<| lessicograficamente minore di
|>| lessicograficamente maggiore di
|-z| lunghezza uguale a 0
|-n| lunghezza diversa da 0
```bash
[[ stringa1 = stringa2]]
[[ "casa" = "casa" ]]

[[ stringa1 != stringa2]]
[[ "cane" != "gatto" ]]

[[ stringa1 < stringa2]]
[[ "mare" < "montagna"]] 

[[ stringa1 > stringa2]]
[[ "lago" > "città" ]]

stringa1=""
[[ -z $stringa1 ]]

stringa1="ciao"
[[ -n $stringa1 ]]
```