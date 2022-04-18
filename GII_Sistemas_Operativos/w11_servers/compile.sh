#!/bin/sh
set -x
 
gcc -Wall -g -o request.o -c request.c
gcc -Wall -g -o 1 1_sequential.c -lpthread request.o
gcc -Wall -g -o 2 2_fork.c -lpthread request.o
gcc -Wall -g -o 3 3_threads_ondemand.c -lpthread request.o
gcc -Wall -g -o 4 4_threads_pool.c -lpthread request.o

