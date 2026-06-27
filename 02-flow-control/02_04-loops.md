# Loops
A loop is a statement used to repeat one or more operations.

A loop can be of two types:
- **predetermined**: the loops runs for a defined number of times
- **not predetermined**: the loops runs until a condition is true or false

In bash there are three loop types:
- for
- while
- until

# For Loop
The for statement is a **predetermined** loop, used to fetch elements from a list.


## Syntax
```bash
for $var in list; do
    echo $var
done
```
A very common example is:
```bash
for $args in $@
    echo $args
done
```
The special variable `$@` contains all value given on script, as single words.

The example above print all value of `$@` variable.

### C like syntax
Bash accepts also che "c like" syntax to define a for loop
```bash
for ((i=0;i<10;i++)); do
    echo "Number: $i"
done
```
In which `$i` is a index that increments its value on each loop.

## While Loop
The while loop statement is a not predeterminate loop: it will continue to loop until the condition is true.

```bash
while [[ condition ]]; do
    #my code here
done
```
A simple example:
```bash
counter=0
while [[ counter -le 10 ]]; do
    echo "Counter value: $counter"
    ((counter++))
done
```
When counter's value is 11, the loop will stop.

A common application of while statement is to create, joint with `case` statement, a Yes/No prompt.

```bash
while true; do
    read -p "Are you sure you want to do something? " answer
     case $answer in
        y|Y) 
            #my code here
            break
            ;;
        n|N) 
            echo "Aborting"
            exit 0
            ;;
        *) echo "Pleas enter y or n"
        ;;
    esac
done
```
The while loops continues until the user enter y,Y,n or N.

If user prompts y, the patter will match and the loop will stop and go on with the rest of script.

If user prompts n or N, the script match the pattern and ends the script with instruction `exit 0`

If user enter something else the script print the message "Please enter y or n" and ask again the user to prompt his answer.

## Until Loop
The until loop statement works like while, but its loops continue as the conditions is **false**.

```bash
counter=0
until [[ counter -ge 10 ]]; do
    echo "Counter value: $counter"
    ((counter++))
done
```
The script loops until counter is equal to 11.

## Break and Continue
- The `break` statement stops immediately the execution of a loop and goes on to next instruction.

- The `continue` statement ignores the current loop a go directly to the next. 