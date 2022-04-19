## Materiales usados en ARCOS.INF.UC3M.ES bajo licencia [CC BY-NC 4.0](http://creativecommons.org/licenses/by-nc/4.0/) 

## Sistemas Operativos (2021-2022)

1. ### <ins>POSIX threads</ins>

   1.A. ¿Qué son los hilos (threads)?

      **Enunciado**: Programar una función main que crea 5 hilos que imprimen "Hello world from thread #%ld!\n" y espera a que todos los hilos terminen.
 
      **Código**:
      * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w6_hilos/ths_creatjoin.c">ths_creatjoin.c</a>

      **Compilar y ejecutar**:
      ```
      gcc -Wall -g -o ths_creatjoin ths_creatjoin.c -lpthread
      ./ths_creatjoin
      ```

2. ### <ins>Communication and synchronization among threads</ins>

   2.A. ¿Qué pasa si (1) dos o más hilos (2) comparten una variable (3) al menos uno modifica la variable (4) y se hace de forma no atómica?

      **Enunciado**: Programar un ejemplo de condición de carrera entre dos hilos.
 
      **Código**:
      * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w10_cys/race.c">race.c</a>

      **Compilar y ejecutar**:
      ```
      gcc -Wall -g -o race race.c -lpthread
      ./race
      ```

   2.B. ¿Qué pasa si se solapa el uso de dos o más mutex y no se sigue el mismo orden de petición de bloqueo de los mutex usados?

      **Enunciado**: Programar un ejemplo de interbloqueo entre dos hilos.
 
      **Código**:
      * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w10_cys/interlock.c">interlock.c</a>

      **Compilar y ejecutar**:
      ```
      gcc -Wall -g -o interlock interlock.c -lpthread
      ./interlock
      ```

   2.C. ¿Qué pasa si se solapa el uso de dos o más mutex y no se sigue el mismo orden de petición de bloqueo de los mutex usados?

      **Enunciado**: Programar un ejemplo de sincronización entre un hilo main y los hilos creados con pthread_create.
 
      **Código**:
      * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/sync_child_mnc.c">sync_child_mnc.c</a>

      **Compilar y ejecutar**:
      ```
      gcc -Wall -g -o sync_child_mnc sync_child_mnc.c -lpthread
      ./sync_child_mnc
      ```

   2.D. ¿Cómo resolver el problema de productor-consumidor usando semáforos?

      **Enunciado**: Programar un ejemplo de productor-consumidor (buffer acotado) entre dos hilos usando semáforos.
 
      **Código**:
      * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/p-c_sem.c">p-c_sem.c</a>

      **Compilar y ejecutar**:
      ```
      gcc -Wall -g -o p-c_sem p-c_sem.c -lpthread
      ./p-c_sem
      ```

   2.E. ¿Cómo resolver el problema de lectores-escritores usando semáforos?

      **Enunciado**: Programar un ejemplo de lectores-escritores entre dos hilos usando semáforos.
 
      **Código**:
      * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/r-w_sem.c">r-w_sem.c</a>

      **Compilar y ejecutar**:
      ```
      gcc -Wall -g -o r-w_sem r-w_sem.c -lpthread
      ./r-w_sem
      ```

   2.F. ¿Cómo resolver el problema de productores-consumidores usando mutex y conditions de POSIX?

      **Enunciado**: Programar un ejemplo de productores-consumidores (bounded buffer) entre dos hilos usando mutex + conditions.
 
      **Código**:
      * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/p-c_mnc.c">p-c_mnc.c</a>

      **Compilar y ejecutar**:
      ```
      gcc -Wall -g -o p-c_mnc p-c_mnc.c -lpthread
      ./p-c_mnc
      ```

   2.G. ¿Cómo resolver el problema de lectores-escritores usando mutex y conditions de POSIX?
   
      **Enunciado**: Programar un ejemplo de lectores-escritores entre dos hilos usando mutex + conditions.
 
      **Código**:
      * <a href="https://github.com/acaldero/labs/blob/main/GII_Operating_System/w10_cns/r-w_mnc.c">r-w_mnc.c</a>

      **Compilar y ejecutar**:
      ```
      gcc -Wall -g -o r-w_mnc r-w_mnc.c -lpthread
      ./r-w_mnc
      ```


 * ### <ins>Concurrent servers</ins>

   **Enunciado 1**: Programar una función main que simule un servidor que secuencialmente le llegan peticiones y las trata una a una.

   **Código**:
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.h">peticion.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.c">peticion.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/1_sequential.c">1_sequential.c</a>

   **Compilar y ejecutar**:
   ```
   gcc -Wall -g -o peticion.o -c peticion.c
   gcc -Wall -g -o 1 1_sequential.c -lpthread peticion.o
   ./1
   ```

   **Enunciado 2**: Programar una función main que simula un servidor que le llegan peticiones, crea un proceso (fork) y el proceso hijo trata la petición asociada.

   **Código**:
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.h">peticion.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.c">peticion.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/1_sequential.c">2_fork.c</a>

   **Compilar y ejecutar**:
   ```
   gcc -Wall -g -o peticion.o -c peticion.c
   gcc -Wall -g -o 2 2_fork.c -lpthread peticion.o
   ./2
   ```

   **Enunciado 3**: Programar una función main que simula un servidor que le llegan peticiones, crea un hilo y el hilo creado trata la petición asociada.

   **Código**:
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.h">peticion.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.c">peticion.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/1_sequential.c">3_threads_ondemand.c</a>

   **Compilar y ejecutar**:
   ```
   gcc -Wall -g -o peticion.o -c peticion.c
   gcc -Wall -g -o 3 3_threads_ondemand.c -lpthread peticion.o
   ./3
   ```

   **Enunciado 4**: Programar una función main que simula un servidor que crea varios hilos que esperan en sus conditions asociadas, le llegan peticiones y para cada una manda una señal a un hilo pre-creado que se encarga de atender a dicha petición y volver a esperar en la condition al terminar.

   **Código**:
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.h">peticion.h</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/peticion.c">peticion.c</a>
    * <a href="https://github.com/acaldero/labs/blob/main/GII_Sistemas_Operativos/w11_servidores/1_sequential.c">4_threads_pool.c</a>

   **Compilar y ejecutar**:
   ```
   gcc -Wall -g -o peticion.o -c peticion.c
   gcc -Wall -g -o 4 4_threads_pool.c -lpthread peticion.o
   ./4
   ```
