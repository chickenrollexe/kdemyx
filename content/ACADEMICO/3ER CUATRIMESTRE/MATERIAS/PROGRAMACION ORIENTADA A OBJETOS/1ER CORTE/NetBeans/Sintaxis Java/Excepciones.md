![[Pasted image 20260518073300.png]]
___
# Que hace el código:
## IMPORTATION
1. import java.util.Scanner;
**Importa la clase `Scanner`.**
    *`Scanner` sirve para leer datos del teclado.*
### CLASE
2. public class excepciones
**Define una clase llamada `excepciones`**
    *Java obliga a que casi todo esté dentro de clases.*
#### MAIN METHOD
3. public static void main(String args[])
**Cuando ejecutas el programa, Java entra aquí primero.**
##### CREATE "Scanner"
4. Scanner dato = new Scanner(System.in);
![[Pasted image 20260518075314.png]]
###### PRINTLN TEXT
5. System.out.println("Escribe tu edad:");
**Imprime texto en consola.**
###### READ INT
6. int edad = dato.nextInt();
Lee un numero entero.
###### PRINT RESULT
7. System.out.println("Tu edad es:" + edad);
**Concatena texto y variable.**
resultado: Tu edad es: 20*
___
## WHAT IS AN EXCEPTION
Una excepción es un error que ocurre DURANTE la ejecución.
Por ejemplo:
- dividir entre 0
- leer texto como entero
- acceder fuera de un arreglo
- abrir archivo inexistente

> [!NOTE]
>  Exception es un tipo de clase
___

### ¿Por que esta mal?
si el usuario escribe:

~~~
"hola" 
~~~

en vez de: 

~~~
"20"
~~~

el programa explota.
Porque `nextInt()` esperaba un entero.

#### Solucionar con: "try" - "catch"
*intenta y captura*
## Que es?
Le estás diciendo a Java: _"Intenta ejecutar estas líneas. Si todo sale bien, perfecto, continúa normal. Pero mantente alerta por si algo falla"_.
Example try(){}
- Si el usuario escribe 18, `dato.nextInt()` lo guarda en `edad`, imprime el mensaje y se ignora por completo el bloque `catch`.
Example catch(Exception ex){}
- Si en la línea `dato.nextInt()` el usuario escribe "perro", Java no puede guardar texto en una variable int. Inmediatamente detiene el bloque `try` y "cae" en el bloque `catch`.
> `Exception ex`: Esto es como crear una variable temporal llamada `ex` que atrapa y guarda los detalles del error técnico que acaba de ocurrir.
###### Qué hace try-catch:
**Versión con manejo de errores:**

~~~
try {
    int edad = dato.nextInt();
}
catch(Exception ex) {
    System.out.println("Error");
}
~~~
###### Cómo funciona:
**TRY**

~~~
try {
}
~~~

Significa:

> “Intenta ejecutar este código”.

*Example code*

~~~
int edad = dato.nextInt();
~~~
Aquí puede ocurrir excepción.
**CATCH**

~~~
catch(Exception ex)
~~~
###### Significa:

> “Si ocurre un error, atrápalo aquí”.

 ###### **Exception ex**
 ## Exception

- Es el tipo de error.

    `Exception` es una clase general para excepciones.
### ex
Es una variable que guarda información del error.
*ejemplo sintaxis con el "ex"*

~~~
ex.getMessage()
~~~
para obtener el mensaje.
#### println error information

~~~
System.out.println(ex.getMessage());
~~~
######  Flujo completo
usuario escribe:

~~~
18
~~~

TRY > error > salta al CATCH
**Entonces imprime:**

```
Existio un error al capturar la edad.
```
y el programa funciona correctamente.
# COMPLETE CODE
~~~
import java.util.Scanner;

public class excepciones {

    public static void main(String args[]) {

        Scanner dato = new Scanner(System.in);

        System.out.println("Escribe tu edad:");

        try {

            // intenta ejecutar
            int edad = dato.nextInt();

            System.out.println("Tu edad es: " + edad);

        } catch (Exception ex) {

            // si ocurre error
            System.out.println("Existio un error al capturar la edad.");

            System.out.println(ex.getMessage());
        }
    }
}
~~~
## Importan  concept
`try-catch` NO evita errores.

Lo que hace es:

- detectar errores
- impedir que el programa se cierre brutalmente
- permitir manejar el problema
![[Pasted image 20260518090910.png]]
