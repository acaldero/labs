#!/bin/sh
set -x
 
gcc -Wall -g -o interlock       interlock.c        -lpthread
gcc -Wall -g -o race            race.c             -lpthread
gcc -Wall -g -o sync_child_mnc  sync_child_mnc.c   -lpthread

gcc -Wall -g -o p-c_sem   p-c_sem.c   -lpthread
gcc -Wall -g -o r-w_sem   r-w_sem.c   -lpthread

gcc -Wall -g -o p-c_mnc   p-c_mnc.c   -lpthread
gcc -Wall -g -o r-w_mnc   r-w_mnc.c   -lpthread

# rm interlock race sync_child_mnc p-c_sem  r-w_mnc p-c_mnc r-w_sem 

