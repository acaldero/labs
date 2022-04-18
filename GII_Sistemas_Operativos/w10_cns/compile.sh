#!/bin/sh
set -x
 
gcc -Wall -g -o interlock interlock.c -lpthread
gcc -Wall -g -o race      race.c      -lpthread

