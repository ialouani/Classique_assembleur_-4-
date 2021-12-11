#!/bin/bash
make clean && make code1
n=10
while((n!=0))
do
    ./code1
    ((n=n-1))
done
