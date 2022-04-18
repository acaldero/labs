## Materials used at ARCOS.INF.UC3M.ES under [CC BY-NC 4.0](http://creativecommons.org/licenses/by-nc/4.0/) 

## Operating Systems (2021-2022)

 * ### <ins>POSIX threads</ins>
   **Statement**
     * Programming a main function that creates 5 threads that prints "Hello world from thread #%ld!\n" and wait for all those threads.
 
   **Code**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w6_threads/ths_creatjoin.c">ths_creatjoin.c</a>


 * ### <ins>Communication and synchronization among threads</ins>

   **Statement**
     * Programming an example of race condition between two threads.
 
   **Code**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/race.c">race.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o race race.c -lpthread
   ./race
   ```

   **Statement**
     * Programming an example of interlocking between two threads.
 
   **Code**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/interlock.c">interlock.c</a>

   **Compile and execute**
   ```
   gcc -Wall -g -o interlock interlock.c -lpthread
   ./interlock
   ```


 * ### <ins>Concurrent servers</ins>

   **Statement 1**
     * Programming a main function that simulates one server that sequentially receive requests and treat them.

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


   **Statement 2**
     * Programming a main function that simulates one server that receive requests, create a process (fork) and the child process treat each associated request.

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


   **Statement 3**
     * Programming a main function that simulates one server that receive requests, create a thread and the child thread treat each associated request.

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


   **Statement 4**
     * Programming a main function that simulates one server that create several theads that wait in a condition, receive requests, signal one of the pre-created thread and the child thread treat each associated request (then go to wait again).

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

