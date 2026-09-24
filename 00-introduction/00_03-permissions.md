# File and Directory Permissions
### Table of Contents
1. [Introduction](#introduction)
1. [Understanding Permissions](#understand-the-permissions)
1. [Managing Permissions](#managing-permissions)
    - [Symbolic mode](#symbolic-mode)
    - [Numeric mode](#numeric-mode)
1. [Access Permission to Directory](#access-permission-on-directories)
1. [Best Practices](#best-practices)
1. [Changing Ownership](#changing-ownership)

## Introduction
Permissions are security tools in Linux system to manage the access levels of users and groups on system to files and directories.

### Warning ⚠️
Be careful: changing permission on system file or directory can cause unwanted results. Make sure to know what yuo are doing! If you want try the commands, use empty files or directories created specifically for this purpose.


## Understand the permissions
The file/directory permissions are usually represented with a **ten char length string**.

- The first char represents if an entity is a file (-) or a directory (d)
- the first group (3 char) represents the owner permissions
- the second group (3 char) represents the group permissions
- the third group (3 char) represents the all other groups permissions

### Who is who?

- **owner**: the user who created the file / directory
- **group**: the group which has been assigned the file / directory to
- **other**: the other groups on the system

### Examples
1. file ``-rwxrw-r--``
<br>the entity is a file (-),  the owner has reading, writing and execution permissions, the assigned group reading and writing only, all the others read only.

2. directory ``drw-r-x---``
<br> the entity is a directory (d), the owner has reading and writing permissions, the group read only and access to directory itself, all the other no permissions.

## Managing Permissions
The bash command to manage the file and directories permission is ``chmod`` (change mode) and it can be use in **symbolic mode** or **numeric mode**

### Symbolic Mode
In symbolic mode permissions and users are represents by letters. 

The permissions can be assign to:

- owner (u)
- groups (g)
- other groups (o)

The permissions are:

- read (r)
- write (w)
- execute (x)

To adding and remove permission:

- To **add** permission use ``+``
- To **remove** permission use ``-``

### Example
Give the permission to execution to a bash file with command ``chmod`` only to its owner.
```bash
#grant only to file owner the execution permission
chmod u+x mybashfile.sh

#or removing it
chmod u-x mybashfile.sh
```
If no user/group/other was specified the specified permission will be set for all user
```bash
chmod +x mybashfile.sh
#the file is executable for owner, group and all the others.
```

## Numeric Mode
The numeric mode uses **octal based digits** (in which the digits go from 0 to 7) instead the letters.

Each permission value (read, write and execute) are represent by a binary digit: set them to 1 to enable, 0 to disable. 

| octal  |   binary   | permission level     | notation |
|--------|------------|----------------------|----------|
|0       | 000        | no permission        | --- |
|1       | 001        | execute              | --x
|2       | 010        | write                | -w-
|3       | 011        | write and execute    | -wx
|4       | 100        | read                 | r--
|5       | 101        | read and execute     | r-x
|6       | 110        | read and write       | rw-
|7       | 111        | read, write and execute |rwx

### Example
Grant full permission to a bash file only to its owner, no permission to all the others.
```bash
#symbolic mode
chmod u+rwx mybashfile.sh

#numeric mode
chmod 700 mybashfile.sh
```
Considering the three groups:
- owner: 7 (111) read=1, write=1, execute=1
- group: 0 (000) read=0, write=0, execute=0
- other: 0 (000) read=0, write=0, execute=0


## Access permission on Directories
For directories the ``x`` flag permission can be set and it grants to **traverse** the directory itself.

Without ``x`` flag enabled, even with read and write permissions the user can't access to its content.

### Setting permissions on a directory
```bash
chomod mydir 755
#apply the permissions only on target directory

chmod mydir 755 -R
#apply the permissions recursively
```
With ``-R`` flag the permission will be set recursively for all files and subdirectories contained in ``mydir``.


## Best Practices

1. **Avoid** to set 777 permission to a file or a dir: it will be grant **full access** to all system user to a resource.
1. **Zero Trust**: set **needed permission only** for users and/or groups on files and directories.

## Changing Ownership
In Bash, to change ownership of a file or a directory is used the command ``chown``. It can assign the ownership to a user and/or a group.

### Warning ⚠️
Be careful: changing ownership on system file or directory can cause unwanted results. Make sure to know what yuo are doing! If you want try the commands, use a empty files or directories created specifically for this purpose.

### Example
```bash
chown johndoe myscript.sh
#now the owner of myscript.sh is the user "johndoe"

#changing group
chown :developers myscripts.sh

#changing owner and group
chown johndoe:developers myscript.sh

#changing owner and group recursively to a directory with
#verbose mode (-v not mandatory)
chown -R johndoe:developers scripts -v

```
The target user and group have to exist on system.  

---
<div align=center>

[Back to Home](/README.md)

</div>