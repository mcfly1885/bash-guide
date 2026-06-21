# Special Variables

In Bash, there is some special variables:

## $1, $2
 this variables contain the n argument passed to script at the invocation moment.
```bash
./myscript arg1 arg2
```
$1 will get the value "arg1", $2 will get the value "arg2"...
To get the value of variable index greater then 9, use this syntax

```bash
${10}, ${11},...
```

## $# 
Contains the number of argument passed to script.

Considering the example:

```bash
./myscript arg1 arg2
```
the value of $# will be 2. 

Commonly this variable is used to check if a minimum number of parameters has been given to script.
```bash
# check if no parameters has been given.
# if not, exit on error status.
if [[ $# -eq 0 ]]; then
    echo "Error: no parameters given"
    echo "aborting"
    exit 1
fi
```
## $@
 Contains all parameters given to script. This variable is useful in loops:
 ```bash
 for args in $@; do
    ...
done
```

## $? 
Contain the exit code of last command executed. Zero equals to success, non-zero value equals to error.
```bash
mydir="path/to/a/direcory"
test -f $mydir
echo $? 
#the output will be 1, because the last command fails (test if a directory is a file)
```
## $_ 
Contains the argument given to last command executed.
```bash
echo "hello world"
echo $_ #the variable contains "hello world"
```

## $0
Contains the name of shell or script.

## $$
Contains the PID of current shell process

## $! 
Conains the PID of last background process





## Environment Variables

The environment variables are a variables that are accessible from all process running in the shell.

Usually they are used to configure the system or applications.

To check which environment variables are set on system, just run

```bash
env
```
the command will show a list of environment variable currently set on system.

```bash
echo $HOME
```
the comand above will print the content of env variable HOME which usually contains the current user home directory path. 

Here a mini-list of some environment variables and their content

- HOME path to current user home directory
- USER current user name
- SHELL current default shell
- PWD current working directory
- LANG default system language
- [...]

## How to declare a environment variable
To create an environment variable use the keyword `export`
```bash
export $MYNAME="John Doe"
```
Commonly this type of declaration is used in `.bashrc` file to permanently set custom environment variables.

