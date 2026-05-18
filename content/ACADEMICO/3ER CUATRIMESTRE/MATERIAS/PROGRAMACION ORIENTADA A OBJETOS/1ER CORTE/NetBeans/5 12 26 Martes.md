# Librería ArrayList
~~~
import java.util.ArrayList;
~~~

~~~
import java.util.ArrayList;

public class arraylist {

    public static void main(String args[]) {
        //declaracion
        ArrayList<Integer>ListaNumeros = new ArrayList<>();
        
        //agregar elementos a la lista we
        ListaNumeros.add(1); //index 0
        ListaNumeros.add(2);
        ListaNumeros.add(3);
        ListaNumeros.add(4);
        ListaNumeros.add(5);
        
        //impresion de elementos de la lista.
        
        System.out.println("ListaNumeros(0= " + ListaNumeros.get(0));
        
        //impresion de todos los numeros en una lista
        System.out.println("ListaNumeros = " + ListaNumeros);
        
        //buscar elementos en una lista
        System.out.println(ListaNumeros.contains(65));
        
        //modificar un elemento en la lista
        
        ListaNumeros.set(2, 10);
        System.out.println("ListaNumeros = + ListaNumeros");
        
        //recorrer una lista por cada elemento
        //for each
        
        for(Integer num: ListaNumeros){
            System.out.println(num);
        }
        //eliminar elemento de una lista
        ListaNUmeros.remove(2)
        
    }
}
~~~
## Declaration of ArrayList
~~~
ArrayList<Integer>ListaNumeros = new ArrayList<>();
~~~
### Agregar elementos a la lista we
