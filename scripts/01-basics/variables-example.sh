#!/bin/bash

#declare a variable
myvar=5

#print on screen its content
echo $myvar

#its possible store also a command return value
myvar=$(echo "Hello World")
#and print it (the result will bel hello world)
echo $myvar

#a variable can save a result like a sum
sum=$((5+5))
#the result will be 10
echo $sum