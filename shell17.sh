#!/bin/bash

# Number of lines for the pattern
lines=5

# Loop to print the pattern
for ((i=1; i<=lines; i++)); do
  for ((j=1; j<=i; j++)); do
    echo -n "* "
  done
  echo
done

