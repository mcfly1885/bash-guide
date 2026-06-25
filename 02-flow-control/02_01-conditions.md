# Set a Condition
In Bash there are more than one way to set a condition:

- **[ condition ]**  Equals to call the command **test**, an external program, useful if the script have to work also on shell that are not Bash.

- **[[ condition ]]** Internal keyword of bash, improve version of test and this is considered the standard for modern Bash coding.

- **(( condition ))** Only for arithmetic expressions, is more intuitive than [[ ]] and is used also like assignment operator for results of operations.


## Comparison Operators

A condition is an expression that can be defined through the **comparison operators**.

## Number Operators

### Number Comparison Operators with [[ ]]

|Operator|Description|
|---------|-----------|
|-gt| greater than
|-ge| grater than or equal to
|-lt| less than
|-le| less than or equal to 
|-eq| equal to
|-ne| not equal to

```bash
[[ x -gt y ]] # x is greater than y
[[ x -ge y ]] # x is greater than or equals to y
[[ x -lt y ]] # x is less than y
[[ x -le y ]] # x is less than or equal to y
[[ x -eq y ]] # x equals to y
[[ x -ne y ]] # x not equals to y
```
### Number Comparison Operators with (( ))

|Operator|Description|
|---------|-----------|
|>| greater than
|>=| grater than or equal to
|<| less than
|<=| less than or equal to 
|==| equals to
|!=| not equal to

```bash
(( x > y ))  # x is greater than y
(( x >= y )) # x is greater or equal to y
(( x < y ))  # x is less than y
(( x <= y )) # x is less or equal to y
(( x == y )) # x equals to y
(( x != y )) # x NOT equal to

```

### File Operators
|Operator|Description|
|---------|-----------|
|-e| file exists
|-f| file exists and is a regular file
|-d| file exists and is a directory
|-r| file exists and is readable
|-w| file exists and is writable
|-x| file exists and is executable
|-s| file exists and its dimension is greater than zero
```bash
[[ -e my_file ]] # $file exists
[[ -f my_file ]] # $file exists and is a regular file
[[ -d my_file ]] # file exists and is a directory
[[ -r my_file ]] # file exists and is readable
[[ -w my_file ]] # file exists and is writable
[[ -x my_file ]] # file exists and is executable
[[ -s my_file ]] # file exists and its dimension is greater than zero
```
### String Comparison Operators
|Operator|Description|
|---------|-----------|
|=| equal to
|!=| not equal to
|<| lexicographically less than
|>| lexicographically greater than
|-z|length equal to zero
|-n| length not equal to zero
```bash
[[ string1 = string2]]
[[ "home" = "home" ]]

[[ string1 != string2]]
[[ "dog" != "cat" ]]

[[ string1 < string2]]
[[ "mountain" < "sea"]] 

[[ string1 > string2]]
[[ "lake" > "city" ]]

string1=""
[[ -z $string1 ]]

string1="hello"
[[ -n $string1 ]]
```