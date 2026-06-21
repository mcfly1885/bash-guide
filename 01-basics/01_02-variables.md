# Variables

A variable is like a container: you can put in something and it will hold the content but when something else is put in it again the previous content will be override.

To declare a variable in bash simply write its name and  assign a value
```bash
#a variable that contain the integer 5
myvar=5

# a variable that contain string
var1="my string"

```
**Warning:** no spaces between the characters otherwise the script will return a syntax error. 
```bash
#this works
myvar=5

#this doesn't work
myvar = 5

```

In bash usually is no mandatory to specify the variable type (integer, string, etc) but is possible with the instruction `declare`
```bash
declare -i mynumber=20 #declare an integer
declare -r myvar=52 #declare a read-only variable
declare -x myvar #declare and export an environment variable
declare -a myarray #declare an array
declare -A myarray #declare an associative array (or map)
```

Look at the following example, what result this code will return?

```bash
myvar=5
echo $myvar
myvar="hello world"
echo $myvar
```
<details>
<summary>Answer</summary>
The first echo will return "5", the second will return the string "hello world" because the variable's value has been overridden by the new assignment.
</details>



## Assign a return value
The variables can contain the output of a command:
```bash
# the variable will contain the result of command echo
myvar=$(echo "hello world")

```
To refer to a variable in a script use the char **$**.
```bash
#print the content of variable
echo $myvar
#the result will be
hello world
```

Its possible assign to a variable the result of an arithmetical operation
```bash
#assign to the variable the return value of a sum
myvar=$((5+5))
#print the result
echo $myvar
#the output will be
10
```

## Recap

Give a look to script with examples: [Go to examples](/bash-guide/01-basics//scripts/variables-example.sh)