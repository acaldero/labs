## Materials used at ARCOS.INF.UC3M.ES under [CC BY-NC 4.0](http://creativecommons.org/licenses/by-nc/4.0/) 

## Operating Systems (2021-2022)

1. ### <ins>POSIX threads</ins>

    **Example**: Programming a main function that creates 5 threads that prints "Hello world from thread #<thread id>!\n" and wait for all those threads.
 
    **Code**
      * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w06_threads/ths_creatjoin.c">ths_creatjoin.c</a>

    **Compile and execute**
    ```
    gcc -Wall -g -o ths_creatjoin ths_creatjoin.c -lpthread
    ./ths_creatjoin
    ```


2. ### <ins>Communication and synchronization among threads</ins>

   **Example**: Programming an example of race condition between two threads.

   **Code**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/race.c">race.c</a>
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/race_solved.c">race_solved.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o race race.c -lpthread
   ./race
   ```

   **Example**: Programming an example of interlocking between two threads.
 
   **Code**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/interlock.c">interlock.c</a>
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/interlock_solved.c">interlock_solved.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o interlock interlock.c -lpthread
   ./interlock
   ```

   **Example**: Programming an example of synchronize between main thread and the pthread_create threads.
 
   **Code**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/sync_child_mnc.c">sync_child_mnc.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o sync_child_mnc sync_child_mnc.c -lpthread
   ./sync_child_mnc
   ```


   **Example**: Programming an example of producer-consumer (bounded buffer) between two threads using semaphores.
 
   **Code**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/p-c_sem.c">p-c_sem.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o p-c_sem p-c_sem.c -lpthread
   ./p-c_sem
   ```

   **Example**: Programming an example of reader-writer between two threads using semaphores.
 
   **Code**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/r-w_sem.c">r-w_sem.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o r-w_sem r-w_sem.c -lpthread
   ./r-w_sem
   ```

   **Example**: Programming an example of producer-consumer (bounded buffer) between two threads using mutex + conditions.
 
   **Code**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/p-c_mnc.c">p-c_mnc.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o p-c_mnc p-c_mnc.c -lpthread
   ./p-c_mnc
   ```

   **Example**: Programming an example of reader-writer between two threads using mutex + conditions.
 
   **Code**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/r-w_mnc.c">r-w_mnc.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o r-w_mnc r-w_mnc.c -lpthread
   ./r-w_mnc
   ```


3. ### <ins>Concurrent servers</ins>

   **Statement 1**: Programming a main function that simulates one server that sequentially receive requests and treat them.

   **Code**
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/request.h">request.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/request.c">request.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/1_sequential.c">1_sequential.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o request.o -c request.c
   gcc -Wall -g -o 1 1_sequential.c -lpthread request.o
   ./1
   ```

   **Statement 2**: Programming a main function that simulates one server that receive requests, create a process (fork) and the child process treat each associated request.

   **Code**
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/request.h">request.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/request.c">request.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/1_sequential.c">2_fork.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o request.o -c request.c
   gcc -Wall -g -o 2 2_fork.c -lpthread request.o
   ./2
   ```

   **Statement 3**: Programming a main function that simulates one server that receive requests, create a thread and the child thread treat each associated request.

   **Code**
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/request.h">request.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/request.c">request.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/1_sequential.c">3_threads_ondemand.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o request.o -c request.c
   gcc -Wall -g -o 3 3_threads_ondemand.c -lpthread request.o
   ./3
   ```

   **Statement 4**: Programming a main function that simulates one server that create several theads that wait in a condition, receive requests, signal one of the pre-created thread and the child thread treat each associated request (then go to wait again).

   **Code**
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/request.h">request.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/request.c">request.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w11_servers/1_sequential.c">4_threads_pool.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o request.o -c request.c
   gcc -Wall -g -o 4 4_threads_pool.c -lpthread request.o
   ./4
   ```

