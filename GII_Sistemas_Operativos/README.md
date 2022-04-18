## Materiales usados en ARCOS.INF.UC3M.ES bajo licencia [CC BY-NC 4.0](http://creativecommons.org/licenses/by-nc/4.0/) 

## Sistemas Operativos (2021-2022)

 * ### <ins>POSIX threads</ins>
   **Enunciado**
     * Programar una función main que crea 5 hilos que imprimen "Hello world from thread #%ld!\n" y espera a que todos los hilos terminen.
 
   **Código**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w6_hilos/ths_creatjoin.c">ths_creatjoin.c</a>


 * ### <ins>Communication and synchronization among threads</ins>

   **Enunciado**
     * Programar un ejemplo de condición de carrera entre dos hilos.
 
   **Código**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w10_cys/race.c">race.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o race race.c -lpthread
   ./race
   ```

   **Enunciado**
     * Programar un ejemplo de interbloqueo entre dos hilos.
 
   **Código**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w10_cys/interlock.c">interlock.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o interlock interlock.c -lpthread
   ./interlock
   ```


   **Enunciado**
     * Programar un ejemplo de producer-consumer (buffer acotado) entre dos hilos usando semáforos.
 
   **Código**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/p-c_sem.c">p-c_sem.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o p-c_sem p-c_sem.c -lpthread
   ./p-c_sem
   ```

   **Enunciado**
     * Programar un ejemplo de reader-writer entre dos hilos usando semáforos.
 
   **Código**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/r-w_sem.c">r-w_sem.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o r-w_sem r-w_sem.c -lpthread
   ./r-w_sem
   ```

   **Enunciado**
     * Programar un ejemplo de producer-consumer (bounded buffer) entre dos hilos usando mutex + conditions.
 
   **Código**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/p-c_lnc.c">p-c_lnc.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o p-c_lnc p-c_lnc.c -lpthread
   ./p-c_lnc
   ```

   **Enunciado**
     * Programar un ejemplo de reader-writer entre dos hilos usando mutex + conditions.
 
   **Código**
     * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/r-w_lnc.c">r-w_lnc.c</a>

   **Compilar y ejecutar**
   ```
   gcc -Wall -g -o r-w_lnc r-w_lnc.c -lpthread
   ./r-w_lnc
   ```


 * ### <ins>Concurrent servers</ins>

   **Enunciado 1**
     * Programar una función main que simule un servidor que secuencialmente le llegan peticiones y las trata una a una.

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
     * Programar una función main que simula un servidor que receive requests, create a process (fork) and the child process treat each associated peticion.

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
     * Programar una función main que simula un servidor que receive requests, create a thread and the child thread treat each associated peticion.

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
     * Programar una función main que simula un servidor que create several theads that wait in a condition, receive requests, signal one of the pre-created thread and the child thread treat each associated request (then go to wait again).

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

