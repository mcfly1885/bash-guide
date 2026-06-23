# What is Bash?
To answer to this question, first we have to answer to another: **What is a shell?**

## The Shell
The shell is a computer program that give access to the Operating System on which it runs. In other words, is the interface that provide a way to the user to interact with the OS.

The user gives the command to the shell that asks to Operating System to executes it. Then the shell returns the result to user.

A shell can have three kinds of interfaces:

- **Graphical** (GUI - Graphical User Interface) The shell provide windows, buttons, and other graphic elements that can be used for example by mouse.

- **Textual** (TUI - Textual User Interface) The shell provide menus, lists etc, but with only text characters: there's no graphic elements.

- **Command Line** (CLI - Command Line Interface) The shell receives the commands from user by typing line by line or  executing scripts.

## So, What is Bash?

Bash (short for "Bourne Again SHell") is an interactive Command Line interpreter widely used on GNU/Linux OS. 

It was developed in 1989 by Brian Fox like free alternative to the Bourne Shell (developed in the 70's).

Like said, the user in bash can run commands to execute operations (like copy a file or a directory) or can create a script that contains the commands (with flow control for more complex script) that Bash will execute consecutively from top to down until the file content ends.


## Just an Example

### Executing a Command
```bash
echo "Hello World"
```
The result will be the phrase "Hello World" printed on screen.


### Executing a Script
```bash
./script.sh
```
where the content of `script.sh` is
```bash
#!/bin/bash
echo "Hello World"
echo "Hello again"
```

here the result will be the phrases  "Hello World" and  "Hello again" printed on screen but the user has given to the shell only one command: execute the script which contains the commands.


## Why coding Bash scripts?
The shell coding is oriented to execute external commands and programs which, outed in the right sequence, can automate a pipe of operations to achieve a final result.

The strength of coding bash scripts stands into possibility to automate a complex operations or, more simply, tedious and repetitive operations that, otherwise, the user should do manually line by line.

<div align=center>

[Back to Home](/bash-guide/README-it.md)

</div>
