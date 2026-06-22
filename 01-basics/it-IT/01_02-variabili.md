# Variabili

Una variabile è come un contenitore: puoi metterci dentro qualcosa e questa lo conterrà ma quanto qualcos'altro ci verrà messo dentro di nuovo, il contenuto precedente verrà sovrascritto.

Per dichiarare una variabile in bash basta scriverne il nome ed assegnargli un valore
```bash
#una variabile che contiene il numero intero 5
miavariabile=5

#una variabile che contine una stringa
var1="mia stringa"
```
**Attenzione**: non mettere spazi tra le parole altrimenti lo script restituità un errore di sintassi
```bash
#questo funziona
myvar=5

#questo non funziona
myvar = 5
```
In bash non è obbligatorio specificare il tipo di dato (intero, stringa eccetera..) ma è comunque possibile farlo con l'istruzione `declare`
```bash
declare -i mynumber=20 #dichiara un intero
declare -r myvar=52 # dichiara una variabile in sola lettura
declare -x myvar #dichiara ed esporta una variabile d'ambiente
declare -a myarray #declare un array
declare -A myarray #declare un array associativo
```

Guardando all'esempio seguente, quale risultato restituira il codice?
```bash
myvar=5
echo $myvar
myvar="hello world"
echo $myvar
```
<details>
<summary>Risposta</summary>
Il primo echo restituirà "5",il secondo restituirà "hello world" perché il valore della variabile $myvar è sato sovrascritto con la nuova assegnazione.  
</details>

## Assegnare un risultato
Le variabili possono contenre l'output di un comando
```bash
# la variabile conterrà l'output del comando echo
myvar=$(echo "hello world")
```

Per riferirsi ad una variavile in uno script si utilizza il caratter **$**
```bash
#stampa il contenuto di myvar
echo $myvar
# il risultato sarà
hello world
```

E' possibile assegnare ad una variabile il risultato di un'operazione aritmetica
```bash
#assegna alla variabile il risultato della somma
myvar=$((5+5))
#stampa il risultato
echo $myvar
#l'output sarà
10
```

## Conclusioni
Dai un'occhiata allo [Script di esempio](/bash-guide/01-basics//scripts/variables-example.sh)