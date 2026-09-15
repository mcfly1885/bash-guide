# Functions
## Table of Contents
1. [Introduction](#introduction)
1. [How to declare a function](#how-to-declare-a-function)
1. [Parameters](#parameters)
1. [Global and Local Variables](#global-and-local-variables)
1. [Return Instruction](#return-instruction)
1. [How to return a value](#how-to-return-a-value)

## Introduction

A function is a piece of code that you can "call" whenever you need it. It helps to organize the code and avoids code repetitions.

## How to declare a function

A function can be declared like this:

```bash
function myFunction(){
    #my code here
}

#or

myFunction(){
    #my code here
}

```

and when you need to call it

```bash
myFunction
```
## Example
Here a really simple example
```bash
#define the function
function sayHello(){
    echo "Hello"
}

#the function was defined, now you can call it

sayHello #output: "hello"

```
## Parameters

A function can also gets **parameters**:
```bash
function sayHello(){
    echo "hello $1"  #$1 represents the first parameter given
}

sayHello "John"
#output: "hello John"
```

## Global and Local Variables
In Bash the variables are **global** by default and they are accessible everywhere in the script.

A **local** variable is accessible **only in the function scope** and it can be declared with ```local``` keyword.

```bash
globalVar="hello global"

function sayHello(){
    local myLocalVar="hello local"
    echo "$myLocalVar"
    echo "$globalVar"
}

sayHello #output: "hello local" and  "hello global"

#let's try
echo "$myLocalVar" 

#output: void or error because the variable is local in function sayHello 
#and is not accessible elsewhere except it's scope.

```

## Return Instruction
In Bash the ``return`` instruction is used to returning an **exit code**. The 0 value stand for success, value not equal to zero stands for error status and it's different from other programming languages because it **not return a result value**.

```bash
function dirExists(){
    if [[ -d "$mydir" ]]; then
        echo "The directory exists"
        return 0
    else
        echo "the directory does not exist"
        return 1
    fi 
}
```
The ``return`` instruction ends the function execution. It can be used individually to exit a function and it will return the last exit code.

```bash
function dirExists(){
    if [[ -d "$mydir" ]]; then
        echo "The directory exists"
        return # if there is no error, the function return 0
        echo "another message" #this line will never execute

    else
        echo "The directory does not exist"
        return 1
        echo "yet another message" #neither this one
    fi
}
```
## How to return a value
A function in bash can return a value with a trick: using 
```echo``` instruction.

```bash
function sum(){
    echo (("$1"+"$2"))
}

sum 2 3 #output: 5
```
Is also possible assign a function "return" value to a variable like this:

```bash
function sum(){
    echo (("$1"+"$2"))
}

myVar=$(sum 2 3)

echo "$myVar" #output: 5
```

<div align=center>

[Back to Home](/README.md)

</div>
