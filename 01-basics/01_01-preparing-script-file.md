# The Script File

Like everyone else program languages, a bash script is written in a text file.

The file can have the extension `.sh` but It's not mandatory: linux will execute the script anyway because it can recognize that the file is a script. How?

## The Hashbang

The bash file script alway start with **HASHBANG** or **SHEBANG**, a string that indicate what commands interpreter the OS will have to use.

So, a Bash script file must always start with:
```bash
#!/bin/bash

#my code here...

```
in which `/bin/bash` is the path of bash itself. This shebang surely works, but if portability is needed is preferred to use 
```bash
#!/usr/bin/env bash

# my code here
```
because the script can automatically find where bash is located on system.


## Permissions
Once the script has been written, to execute it is necessary give to it the execution rights.
```bash
chmod +x myscript.sh
```
In this way, the script can ben executed by all user in the system.

To make a script is executable only by the owner just run
```bash
chmod 700 myscript.sh
```

## Executing a Script
The most common way to execute a script is:
```bash
#execute script in current directory
./myscript.sh

#execute a script giving the full path
./path/to/my/script.sh
```
The script will run only if has the [execute rights](#give-it-the-permission-to-be-executed).