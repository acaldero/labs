## Materiales usados en ARCOS.INF.UC3M.ES bajo licencia [CC BY-NC 4.0](http://creativecommons.org/licenses/by-nc/4.0/) 

## Sistemas Operativos (2021-2022)

 * ### <ins>POSIX threads</ins>
   **Enunciado**
     * Programming a main function that creates 5 threads that prints "Hello world from thread #%ld!\n" and wait for all those threads.
 
   **Código**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w6_hilos/ths_creatjoin.c">ths_creatjoin.c</a>


 * ### <ins>Communication and synchronization among threads</ins>

   **Enunciado**
     * Programming an example of race condition between two threads.
 
   **Código**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w10_cys/race.c">race.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o race race.c -lpthread
   ./race
   ```

   **Enunciado**
     * Programming an example of interlocking between two threads.
 
   **Código**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w10_cys/interlock.c">interlock.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o interlock interlock.c -lpthread
   ./interlock
   ```


 * ### <ins>Concurrent servers</ins>

   **Enunciado 1**
     * Programming a main function that simulates one server that sequentially receive requests and treat them.

   **Código**
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.h">peticion.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.c">peticion.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/1_sequential.c">1_sequential.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o peticion.o -c peticion.c
   gcc -Wall -g -o 1 1_sequential.c -lpthread peticion.o
   ./1
   ```


   **Enunciado 2**
     * Programming a main function that simulates one server that receive requests, create a process (fork) and the child process treat each associated peticion.

   **Código**
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.h">peticion.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.c">peticion.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/1_sequential.c">2_fork.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o peticion.o -c peticion.c
   gcc -Wall -g -o 2 2_fork.c -lpthread peticion.o
   ./2
   ```


   **Enunciado 3**
     * Programming a main function that simulates one server that receive requests, create a thread and the child thread treat each associated peticion.

   **Código**
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.h">peticion.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.c">peticion.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/1_sequential.c">3_threads_ondemand.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o peticion.o -c peticion.c
   gcc -Wall -g -o 3 3_threads_ondemand.c -lpthread peticion.o
   ./3
   ```


   **Enunciado 4**
     * Programming a main function that simulates one server that create several theads that wait in a condition, receive requests, signal one of the pre-created thread and the child thread treat each associated request (then go to wait again).

   **Código**
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.h">peticion.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.c">peticion.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/1_sequential.c">4_threads_pool.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o peticion.o -c peticion.c
   gcc -Wall -g -o 4 4_threads_pool.c -lpthread peticion.o
   ./4
   ```

