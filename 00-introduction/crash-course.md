# Bash Commands Crash Course

This section will explain the most common and basic bash commands to use in a terminal.

## Table of Contents
- [echo](#echo)
- [mkdir](#mkdir)
- [mv](#mv)

## Echo
Probably, the simplest thing that an user can do in shell is print a message on screen.

The command to achive this is ```echo```  that display a line of text.

just type in your terminal 
```bash
echo "Hello World"
```

The result will be the phrase "hello world" printed on screen.

This is an exaple of using a program (named echo) and giving to it an "argument" which is the data that the program need to work.

```bash
#launching
echo "Hello world"
#the result will be
Hello World
```

The program `echo` can print on screen also a result like the 2 number sum:
```bash
#by launching
echo $((2+2))
# the result printent will be
4
```

Echo can print also the content of a variable.
```bash
#by launching
echo $HOME
# the result printent will be
/home/username
```
# mkdir

To **create** a directory use `mkdir`

mkdir accetps as argument the name of the directory that is wanted to create.
```bash
mkdir mydir
```
The result will be the creation of a new directory named "mydir". 

To create multiple directory
```bash
mkdir mydir1 mydir2 mydir3
```


Is also possible create a directory in another position:
```bash
mkdir /home/username/anotherDir/mydir
```
The directory `mydir` will be created **into** the directory `anotherDir`.

If the given path doesnt not exist or alredy exists a directory with the same name given as argument, mkdir will output an error.

# mv
The `mv` is used to move files and/or directory from a source to a destination.

```bash
mv target destination
```

## Example

```bash
mv mydir /anotherDir
```
In this example `mydir` is the name of the target directory and rapresent the first argument.

`anotherDir` is the destination where move the target direcotry to e rapresent the second agument

## Rename a file or directory
How to rename a file or directory? Just using `mv`!

If you want to rename a directory just launch
```bash
mv mydir mynewdir
```
where `mydir` is the target directory and `mynewdir` is the destination. 
The directory has been "moved" in the same path with another name.

#
Topic writing ongoing