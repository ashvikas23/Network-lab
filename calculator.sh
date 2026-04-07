#!/bin/bash

echo "Enter two numbers:"
read a b

echo "Enter operator (+ - * /):"
read op

if [ $op = + ]
then
res=$((a + b))
elif [ $op = - ]
then
res=$((a - b))
elif [ $op = \* ]
then
res=$((a * b))
elif [ $op = / ]
then
res=$((a / b))
fi

echo "Result = $res"
