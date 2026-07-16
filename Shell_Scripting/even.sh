#!/bin/bash

echo "===================================="
echo "PRINTING EVEN NUMBERS USING FOR LOOP"
echo "===================================="

for ((i=2; i<=20; i+=2))
do
    echo $i
done

echo

echo "======================================"
echo "PRINTING EVEN NUMBERS USING WHILE LOOP"
echo "======================================"

i=2

while [ $i -le 20 ]
do
    echo $i
    i=$((i+2))
done

echo

echo "======================================"
echo "PRINTING EVEN NUMBERS USING UNTIL LOOP"
echo "======================================"

i=2

until [ $i -gt 20 ]
do
    echo $i
    i=$((i+2))
done