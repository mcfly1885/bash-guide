# Pipe and Chaining


## Table of Content
1. [Pipe](#pipe)
1. [Chaining Commands](#chaining-commands)
1. [Mixing Pipe and Command Chaining](#mixing-pipes-and-chaining)

## Pipe
A pipe is a tool that links the output of a command to the input of another one. The keyword to use the pipe is ``|`` and the syntax is:

`` command 1 | command 2 | command 3 ``

## Example

```bash
#show the fruit.txt content
cat fruit.txt 
#output
cherry
apple
pear
```
Is possible filter this output with another command. So is necessary to get the output of ``cat`` command and pass it to ``grep`` command. How? Is here where the pipe comes in.

```bash
cat fruit.txt | grep "apple"
#output
apple
```
What's happening here? 

1. execute ``cat`` on file fruit.txt
1. the output of ``cat`` command **is given to next command**
1. execute ``grep "apple"`` on the result of ``cat fruit.txt``
1. print the result of grep on stdout.

## Another Example
Count the elements in a directory
```bash
ls mydir | wc -l
# ls lists the content of mydir directory
# wc (word count) counts the line of the ls output
```
add an extra pipe to count only the txt file
```bash
ls mydir | grep ".txt" | wc -l
# ls lists the content of  of mydir directory
# grep filters the result of ls where the string ".txt" matches
# wc (word count) counts the line of the grep output
```

## Chaining Commands
In Bash is possible chaining a sequence of command in three different methods.

### First Method

- ``command1; command2`` command 2  will be executed, independent of success or failure of command 1 

It can be read like: *do the first task then the second one*

### Example
```bash
ls nowhere; echo "done"
#ls show error (assuming that nowhere directory doesn't exist)
#echo will be executed anyway
```
### Second Method

- ``command1 && command2``
command 2 executes only if command 1 success

It can be read like: *do the first task, but do the second only if the first one has success*

```bash
ls nowhere && echo "done"
#ls show error (assuming that nowhere directory doesn't exist)
#echo will not be executed

#otherwise

ls mydir && echo "done"
#ls success
#echo will be executed
```

### Third Method

- ``command1 || command2``
command 2 executes if command1 fails

It can be read like: *do the first task, but do the second only if the first one has failed*

```bash
ls nowhere || echo "done"
#ls show error (assuming that nowhere directory doesn't exist)
#echo will be executed

#otherwise

ls mydir || echo "done"
#ls success
#echo will not be executed
```
A best practices in script writing is
```bash
cd somewhere || exit
```
because if ``cd`` fails for some reason the script can do something of unwanted. In this way if ``cd`` fails the script ends immediately.


## Mixing Pipes and Chaining
Is possible to use pipe and commands chaining together.

```bash
cat fruit.txt | grep "apple" && echo "done"
#output:
#apple
#done

#The strings "apple" and "done" will be printed on stout because grep was executed with success.

#otherwise

cat fruit.txt | grep "apple" || echo "done"
#the string "done" will not be printed on stdout because grep was execute with success
```
<div align=center>

[Back to Home](/README.md)

</div>