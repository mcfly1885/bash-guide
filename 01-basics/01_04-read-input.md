# Read User Input

Sometime is useful get input during execution of a script. Bash can read inputs by a simply command: `read`

Basic syntax 
```bash
read <options> <arguments>
```
## Read command options
The command read have the following options:

|Option|Description|
|---------|-----------|
|-p| Showing a prompt message before read the user input|
|-t| sets a timeout 
|-s| silent mode, useful for prompting passwords|
|-n| reads only the specified number of characters
|-r| gets the data without elaborate the backslash like escape characters.

## Examples

```bash
#by launching
read
#the terminal will wait for an user input
#the user enter
Hello world
#then the terminal come back to normal state
```

The command read need to store the user's input somewhere... The data will be store in a [variable](/bash-guide/01-basics/variables.md) named $REPLY if no argument has been given.

```bash
#by printing variable $REPLY
echo $REPLY
#the result will be
Hello World
```
### Get User Input Example
Let's say that we want to create a simple script that get an input from user (on standard input: the keyboard) and print it on screen.
```bash
#!/bin/bash

read userinput
echo "Your input is" $userinput
```
After launch the script is waiting for the user input. When the user enter his message it will be print on screen.

The script can be better: it can ask to user to enter his input with a message **before** read the user's input.
```bash
#!/bin/bash

read -p "Enter your message: " userinput
echo "Your input is" $userinput
```
and the output will be
```bash
                   #user enters
Enter your message: hello world
hello world
```

## Best Practices
- **Never trust the user**: always validate the user's input
- **Raw mode**: use `read` with flag `-r` to avoid bash elaborate backslashes.

<div align=center>

[Back to Home](/README.md)

</div>
