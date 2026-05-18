## Tipos de datos primitivos.
![[Pasted image 20260508085541.png]]
Tipos de dato comunes.
- **int** = entero
- **char** = caracter
- **double** = cantidades
- **float** = flotantes
- **boolean** = true o false
El tipo de dato "String" no viene por defecto, es una clase en Java.
Para ello se utiliza 
String __ = "";
___

*saber mas de ellos en:*
[[]]
___

## Impresión en pantalla
![[Pasted image 20260508085626.png]]
Se utiliza println porque es el que ya tiene incluido el salto de linea (ln).
___
## Condicionales if Sintaxis
![[Pasted image 20260508090704.png]]
___
![[Pasted image 20260508090811.png]]
___
## Switch
![[Pasted image 20260508090926.png]]
___
## Ciclos
### For
![[Pasted image 20260508091004.png]]
### While
![[Pasted image 20260508091030.png]]
### Do while
![[Pasted image 20260508091526.png]]
___
### Solicitar datos al usuario
![[Pasted image 20260508091549.png]]Aqui se utiliza la libreria:
![[Pasted image 20260508091610.png]]
```
import java.util.Scanner;
```
___

## **Arreglos**
![[Pasted image 20260511073602.png]]
___

### Como declarar
se declara el arreglo
"dato" "variable[] = new int [tamaño]
___
#### Imprimir arreglo
![[Pasted image 20260511073729.png]]
System.out.println("" + *variable*[*position*]);
___

##### Obtener y asignar valor de un arreglo
![[Pasted image 20260511074150.png]]
int *variable*
___
## String

___
**COMPLETE CODE**

```
public class kjavax {

    public static void main(String args[]) {

        int edades[] = new int[4];

        edades[0] = 2;
        edades[1] = 3;
        edades[2] = 4;
        edades[3] = 5;

        int edades2[] = {2, 3, 5, 6};

        System.out.println("edades 0 = " + edades[0]);
        System.out.println("edades 1 = " + edades[1]);
        System.out.println("edades 2 = " + edades[2]);
        System.out.println("edades 3 = " + edades[3]);

        System.out.println("edades2 0 = " + edades2[0]);
        System.out.println("edades2 1 = " + edades2[1]);
        System.out.println("edades2 2 = " + edades2[2]);
        System.out.println("edades2 3 = " + edades2[3]);

        // obtener y asignar el valor de un arreglo
        int edadUsuario = edades[0];
        System.out.println("la edad del usuario es: " + edadUsuario);

        // longitud de un arreglo
        int tamaño = edades.length;
        System.out.println("el tamaño del arreglo edades es: " + tamaño);

        // recorrer un arreglo
        for (int i = 0; i < edades.length; i++) {
            System.out.println("edades " + i + ": " + edades[i]);
            
        }
    }
}
```
