- if
- else
- switch
___
## if

```
public class Main{
  public static void main(string[] args){
  int edad=18;
  if(edad>=18){
   System.out.println("Mayor de 18");
   }
  }
}
```
El código verifica si "edad" es mayor o igual a 18.

```
public class Main{
  public static void main(string[] args){
  int edad=18;
  if(edad>=18){
   System.out.println("Mayor de 18");
  } else {
       System.out.println("Menor de 18");
  }

   }
  }
```
Se añadió la condición de si "edad" no es mayor o igual 18 entonces es "Menor".
___
## Switch
**Que es?**
- 
**Ejemplo:**

```
public class Main{
  public static void main(String[] args){
    int diaDeLaSemana = 3;
    
    if(diaDeLaSemana ==3){
      System.out.println("Lunes");
    }else if(diaDeLaSemana ==2){
      System.out.println("Lunes");
    }else if(diaDeLaSemana ==3){
      System.out.println("Lunes"); 
      }
}
```
Días de la semana con solamente if y else haciéndose repetitivo.
*Ahora con el switch*

```
public class Main{
  public static void main(String[] args){
    int diaDeLaSemana = 3;
    
    switch(diaDeLaSemana)
      case 1 → {
        System.out.println("Lunes")
      }
      case 2 → {
        System.out.println("Martes")
      }
      case 3 → {
        System.out.println("Miercoles")
      default → {
        System.out.println("Dia de la semana: " + diaDeLaSemana);
         }
        }
    }
}
```
- **case:** casos
- **default:** si no se cumple ningún caso
En el caso de que nuestros casos se pasen de día de la semana se utiliza default