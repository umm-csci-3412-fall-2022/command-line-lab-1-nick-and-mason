#! /usr/bin/bash
tar -xf NthPrime.tgz
cd NthPrime || exit
gcc main.c nth_prime.c -o NthPrime
./NthPrime  "$1"
