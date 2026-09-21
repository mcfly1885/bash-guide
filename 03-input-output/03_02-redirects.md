# Redirection

## Table of Contents
1. [Introduction](#introduction)
1. [Redirect the Input](#redirect-the-input)
1. [Redirect the Output](#redirect-the-output)
1. [Redirect the Error](#redirect-the-error)
1. [Join the Streams](#joining-the-streams)
1. [Silence the Output](#silence-the-output)


### Warning ⚠️
Be careful: redirects **can overwrite / delete the content of a file**. Make sure you knowing what are you doing.

## Introduction

In Bash is possible redirect the input and output of a command.

There are three type of streams:

- **Standard input** (stdin) file descriptor 0 (the keyboard)
- **Standard output** (stdout) file descriptor 1 (the terminal)
- **Standard error** (stderr) file descriptor 2 (the terminal, used for error messages)

## Redirect the Input
The standard input is the user keyboard. It's possible to redirect it with ``<`` keyword.

In the example below the input is redirected to a file and the result is the line count of file myfile.txt

### Example

```bash
wc -l < myfile.txt
# the input for command is the file myfile.txt 
```
Here other examples:
```bash
#looking for a string in a file
grep "something" < myfile.txt

#sorting a file content
sort < myfile.txt

```
In many cases ``<`` keyword will not be necessary because the commands gets the file as arguments. 

- Using ``<`` meaning to telling bash to open the file directly.

- Passing the file like an argument to a command / program delegate the program itself to open the file.

## Redirect the Output

### Warning ⚠️
Be careful: redirect the output **can overwrite the content of a file**. Make sure you knowing what are you doing.

A bash command usually products an output, for example the command ``ls`` lists the content of a directory or ``cat file.txt`` shows the content of a file.

When Bash executes a command usually the output is written on **standard output** (the terminal). To redirect this output is possible to use `>` or `>>` keyword.

- `>` write the output in a file
- `>>` append the output to a file

### Example

1. redirect the ``ls`` output

```bash
ls mydyr
# the command product the lists of mydir's content
```
To store command output in a text file:
```bash
#redirect the output with:
ls mydir > myfile.txt

# if myfile is not empty all content will be overwrite!
# if myfile doesn't exist it will be create
# be careful: bash doesn't ask for confirmation
```
Otherwise, if we want to **add** the output to an existing and not empty file:
```bash
ls mydir >> myfile.txt

# add the new content to myfile
# if myfile doesn't exist it will be create
# be careful: bash doesn't ask for confirmation
```
### Another Example
2. Create a text file and write in the string "hello world"

```bash
#create the file
touch myfile.txt
#redirect the output in myfile.txt
echo "hello world" >> myfile.txt 
```

## Redirect the Standard Error
When an error occurs during the execution of a command is possible to redirect the error.
```bash
ls nowhere 
# let's say that nowhere directory doesn't exist
# the command will throw an error
# ls: cannot access 'nowhere': No such file or directory
```
to redirect this error message to a file:
```bash
ls nowhere 2> error.txt 
#write the error message, if the file is not empty 
#it's content will be overwrite
```
or to add the new error message
```bash
ls nowhere 2>> error.txt
#the new content will be append to file
```
"2" stands for file descriptor 2 that is the standard error.


## Joining the Streams
It's possible join the redirection of output and error like this:
```bash
ls nowhere >> log.txt 2>&1

#or the modern way
ls nowhere &>> log.txt
```
Both error and output messages will be store in the same file.

Here other examples:
```bash
#sorting the content of a file an store in in another one
sort < myfile.txt > sortedfile.txt

# it equals to (pass the file as an argument of sort)
sort myfile.txt > sortedfile.txt

```

## Silence the Output
Sometimes is necessary throw away the output of a command like when creating a quiet mode for a script is needed. 

It's possible to redirect the output in a special file: **/dev/null**

In Unix and Unix-like system the file /dev/null is a spacial file that is always empty, and everything that is written in will be automatically deleted. Just imagine it like a space black hole.

```bash
ls mydir > /dev/null
# the output will be store in null file 
# and it will be immediately deleted.
# same for the standard error

ls nowhere 2> /dev/null 
```
### Emptying a file
### Warning ⚠️
Be careful:the following example **completely deletes the content of a file**. Make sure you knowing what are you doing.

Is possible use /dev/null file to empty a file
```bash
cat /dev/null > myfile.txt

# the file will be emptied
# warning: bash doesn't ask for confirmation!
```

<div align=center>

[Back to Home](/README.md)

</div>
