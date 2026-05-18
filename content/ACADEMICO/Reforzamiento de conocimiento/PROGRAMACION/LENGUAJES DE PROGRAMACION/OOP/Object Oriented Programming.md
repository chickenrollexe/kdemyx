Forma de organizar tu código, en vez de tener variables y funciones sueltas las puedes agrupar en clases.
## Que son las clases
Plantillas
**Por ejemplo un plano de una casa.**
*No es una casa pero contiene propiedades y métodos para construir.*
___

### Propiedades:
Variables que pertenecen a una clase.
Por ejemplo

```
class dog
```
contiene 3 propiedades

```
name
breed
age
```
estas propiedades serán definidas al crear al perro y por ende exclusivas a ese mismo perro
    dependiendo del lenguaje de programación podemos definir si estas propiedades pueden ser cambiadas o solamente pueden ser leídas, etc.
___

#### Métodos
Función que pertenece a una clase.
Al estar dentro de una clase puedo utilizar las propiedades y otros métodos dentro de la misma clase
*Por ejemplo a la clase dog*
Si queremos que dog pueda ladrar 
1. crear una función "ladrar" 
2. que diga el nombre del pedro (propiedad ya creada anteriormente) 
3. y un ladrido.

```
class Dog{
name
breed
age

function bark(){
  print(name + "is barking")
  }
}
```
___

##### Objetos
Si una clase es un plano, un objeto es ese plano hecho a realidad.
*Con el ejemplo de la clase dog*
Podemos instanciar esta clase y obtenemos el objeto dog.
- Instanciar: Crear objeto a partir de una clase.
- Objeto: Clase llevada a realidad.
**Sintaxis para crear clase**
La mayoría de veces es poniendo "new" y después el nombre de la clase.

```
dog1 = new Dog
```

Una vez esto, podemos modificar sus propiedades o llamar algún método.

Se puede instanciar múltiples objetos de una misma clase por lo cual poder duplicar dicha clase.
___

##### Constructor
Método especial que se ejecuta automáticamente cuando se crea un objeto.
Al momento de instanciar podamos pasar parámetros al constructor e incluso inicializar algún estado o propiedad.
*Ejemplo clase Dog*

```
class Dog{
name
breed
age

constructor(name, breed, age){
  this.name = name;
  this.breed = breed;
  this.age = age;
}

function bark(){
  print(name + "is barking")
  }
}
dog 1 = new Dog ("Max", "Labrador", 3);

dog2 = new Dog ("Luna", "Labrador", 5);
```
En vez de tener que instanciar la clase y después poner la propiedades.
Podemos crear un constructor que acepte las propiedades como parámetros e inicializarlos desde el principio y de esta manera podemos obligar a que estas propiedades tengan un valor inicial.
___

##### Herencia
Extender las propiedades y métodos de una clase.
*Cuando una clase hereda las propiedades y métodos de otra clase.*
Es decir, si quieres crear una clase exactamente igual pero con algunas diferencias.
___

###### Interfaz
Contrato que dice que cualquier clase use esta interfaz DEBE tener estos métodos.
Es decir, no le importa como se haga, simplemente que tenga esos métodos.
**Como hacerlo?**

```
interface Nombre{
  function accion();
  }
```
Ejemplo con clase Dog

```
interface Flying{
  function takeoff():
  function land();
}
```
Y para poder implementar se utiliza:

```
implements nombre del interface
```
Ejemplo clase dog

```
interface Flying{
  function takeoff();
  function lang()
}

class Dog implements Flying {
name
breed
age
isFlying=false

constructor(name, breed, age){
  this.name = name;
  this.breed = breed;
  this.age = age;
}

function bark(){
  print(name + "is barking")
  }
  
function takeoff(){
 isFlying = true;
}
function lang(){
  isFlying = false;
 }
}
````
___

###### Polimorfismo
Interactuar con varios objetos usando su clase base o interfaz implementada.
*Nos permite interactuar con diferentes objetos o clases independientemente de lo que sean solamente sabiendo que implementan una interfaz especifica e interactuando con esa interfaz o que extienden una clase especifica y podemos interactuar con los métodos o propiedades de esa clase*
Por ejemplo con clase Dog
- Si tu aplicación tiene diferentes animales que vienen de una clase animal y una interfaz volar, si quieres volar no te hace falta preocuparte si es un pajaro o una paloma.
- O si quieres saber el nombre de un animal te da igual lo que sea ya que sabes que un animal siempre tiene la propiedad nombre.

Imagen para comprender muy fácilmente lo que es polimorfismo:
![[IMG-20260505223431452.png]]
