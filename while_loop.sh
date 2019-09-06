#!/bin/bash

counter=10
min=2

while [ $counter -ge $min ]
do
  echo $counter
  ((counter--))
done
