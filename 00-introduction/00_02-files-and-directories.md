# Files and Directories Management

### Table of Contents
1. [Introduction](#introduction)
1. [Create](#create)
1. [Rename](#rename)
1. [Copy](#copy)
1. [Remove](#remove)

## Introduction
Bash can managed the operations for managing files and directories.

### Warning ⚠️
Be careful: perform files and directory management operations can cause unwanted results. If you want to try the commands, use empty files or directories created specifically for this purpose.

## Create

### New File
In bash, to create a file is possible use ``touch`` command.

The ``touch`` command is used to update the last timestamps of access and modification on an existing file, but if the target file doesn't exist, it will be created (empty).

```bash
touch mynewfile.txt
#creating a new file named mynewfile.txt

touch myoldfile.txt
#update timestamps of access and modification (assuming that myoldfile.txt already exist)
```
The timestamps will be update at moment which the command is executed.

### New Directory
To create a directory use ``mkdir`` command (make directory).

mkdir accepts as argument the name of the directory that is wanted to create.
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
mkdir anotherDir/mydir
```
The directory `mydir` will be created **into** the directory `anotherDir`.

If the given path doesn't not exist or already exists a directory with the same given name as argument, ``mkdir`` will output an error.

### Multiple Files and Directory creation
Bash can create multiple file and directory in one shot with the following syntax.

```bash
touch fileNumber{1..10}.txt
```
The ``{1..10}`` describes the number of new file that will be created. (10 in this case). 

The same technic can be used with ``mkdir`` command.

```bash
mkdir dirNumber{1..10}
```

## Rename 

To rename a file or a directory in bash is used ``mv`` (move) command.

The ``mv`` command primary function is to **move** files and directories to another destination in filesystem, but if the destination and target position are the same, the file/directory will be renamed.

The syntax is
```bash
mv target destination
```
in which ``target`` is the file or directory to move, ``destination`` is the new position where move the target to.

### Warning ⚠️
The ``mv`` command by default **doesn't ask for confirmation**! If in the destination directory is present a file/directory with same name, it will be overwrite!

```bash
#move a file in another dir
mv myfile.txt mydir/subdir

#move a file with confirmation
mv myfile.txt mydir/subdir -i

#rename the file
mv myfile.txt oldfile.txt

#move and rename
mv myfile.txt mydir/subdir/oldfile.txt

#renaming a directory (if dir2 doesn't exist in given path)
mv dir1 dir2

#move a directory 
mv dir1 dir2

#move a directory and rename it
mv dir1 dir2/newdir
#assuming newdir doesn't not exist, otherwise dir1 will move in newdir dir.
```
## Copy
To copy a file or a directory use ``cp`` command. Like ``mv`` command ``cp`` accepts as argument the target file/directory and the destination where it will be copied.

### Warning ⚠️
The ``cp`` command by default **doesn't ask for confirmation**! If in the destination directory is present a file/directory with same name, it will be overwrite!

```bash
#copy a file in a dir with confirmation
cp myfile.txt mydir -i

#copy a dir
cp mydir anotherdir/subidr -r -i
```
## Remove
To remove (**delete**) a file or a directory use ``rm`` command.

### Warning ⚠️
The ``rm`` command by default **doesn't ask for confirmation** and it will delete the target argument immidielly. If you want to try the command, use empty files or directories created specifically for this purpose.

```bash
#removing a file
rm myfile.txt

#removing a file with confirmation
rm myfile.txt -i

#removing a directory
rm mydir -r

#removing a directory with confirmation
rm mydir.txt -i -r
```
To remove directories is possible use also ``rmdir`` that remove **only empty** directories.

```bash
rmdir mydir
#my dir will be remove only if is empty
```
---
<div align=center>

[Back to Home](/README.md)

</div>
