## Materials  used   at ARCOS.INF.UC3M.ES under [CC BY-NC 4.0](http://creativecommons.org/licenses/by-nc/4.0/) 

## Operating Systems (2021-2022)

 * ### <ins>POSIX threads</ins>
   **Statement**
     * Programming a main function that creates 5 threads that prints "Hello world from thread #%ld!\n" and wait for all those threads.
 
   **Code**
     * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w6_threads/ths_creatjoin.c">ths_creatjoin.c</a>


 * ### <ins>Concurrent servers</ins>

   **Statement**
     * Programming a main function that simulates one server that sequentially receive requests and treat them.

   **Code**
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/peticion.h">peticion.h</a>
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/peticion.c">peticion.c</a>
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/1_sequential.c">1_sequential.c</a>

   **Compile**
```
gcc -Wall -g -o peticion.o -c peticion.c
gcc -Wall -g -o 1 1_sequential.c -lpthread peticion.o
```


   **Statement**
     * Programming a main function that simulates one server that receive requests, create a process (fork) and the child process treat each associated request.

   **Code**
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/peticion.h">peticion.h</a>
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/peticion.c">peticion.c</a>
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/1_sequential.c">2_fork.c</a>

   **Compile**
```
gcc -Wall -g -o peticion.o -c peticion.c
gcc -Wall -g -o 2 2_fork.c -lpthread peticion.o
```


   **Statement**
     * Programming a main function that simulates one server that receive requests, create a thread and the child thread treat each associated request.

   **Code**
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/peticion.h">peticion.h</a>
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/peticion.c">peticion.c</a>
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/1_sequential.c">3_threads_ondemand.c</a>

   **Compile**
```
gcc -Wall -g -o peticion.o -c peticion.c
gcc -Wall -g -o 3 3_threads_ondemand.c -lpthread peticion.o
```


   **Statement**
     * Programming a main function that simulates one server that create several theads that wait in a condition, receive requests, signal one of the pre-created thread and the child thread treat each associated request (then go to wait again).

   **Code**
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/peticion.h">peticion.h</a>
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/peticion.c">peticion.c</a>
    * <a href="https://acaldero.github.io/labs/GII_Sistemas_Operativos/w11_servers/1_sequential.c">4_threads_pool.c</a>

   **Compile**
```
gcc -Wall -g -o peticion.o -c peticion.c
gcc -Wall -g -o 4 4_threads_pool.c -lpthread peticion.o
```

