# Definición
Repetir código.
Repetir instrucciones cierta cantidad de veces.
## Tipos de ciclos:
- for
- while
- do while
___

## for
Repetir un numero fijo de veces. Repetir bloque de código un numero especifico o predeterminado de veces.
    Sabes cuando el código tiene que acabar.
### Ejemplo

```
for(5);
print("hola");
```
Decir hola 5 veces
for(5)
print("hola);
    sintaxis de ejemplo
#### Funcionalidades:
- **Util para recorrer arreglos y listas**
Es ideal para iterar sobre vectores, matrices, listas y otras estructuras de datos.
*Si tienes los días de la semana en una lista, por cada día de la lista imprimar el día respectivo*
- **Repetición Controlada:** 
Permite ejecutar un conjunto de instrucciones repetidamente hasta que se cumple una condición o se agota el número de vueltas configuradas.
- **Inicialización y Actualización:** Incluye la inicialización de una variable de control, la condición de parada y una expresión final (incremento o decremento) en una sola línea.
- **Estructura del Bucle:** Generalmente sigue la sintaxis: 
`for (inicialización; condición; incremento/decremento)
`{ // código a repetir }`
##### Usos Comunes:
- **Contadores:** 
Realizar acciones un número exacto de veces (ej. "repetir 10 veces").
- **Procesamiento de datos:** 
Sumar elementos de una lista, calcular promedios o buscar información en arreglos.
- **Iteración incondicional:** 
Ejecutar el bloque de código sin importar cambios internos, solo completando las vueltas definidas
___

## while
Evalúa la condición antes de ejecutar el código.
    No se ejecutara obligatoriamente.
### Ejemplo

```
contador=0

print(contador)
while(contador<3)
contador = contador + 1
```
Contar del 1 al 3.
1. Crear variable contador que empiece en el 0.
contador=0
2. Y mientras el contador sea menor que 3.
contador<3
3. Decir el numero donde esta el contador.
print(contador)
4. Y sumar +1 al contador.
contador = contador + 1
*Y así el 1 empezara en el 0, 2 en el 1 y 3 en el 2 y como 2<3 aquí terminaría el código ya que si fuera mayor el 2 la condición seria falsa y terminaría.*
#### Funcionalidades:
Es ideal para situaciones donde el número de repeticiones es desconocido de antemano.
- **Uso con Iteraciones Desconocidas:** 
Se utiliza comúnmente para leer archivos hasta el final, recibir datos de usuario hasta una señal de parada o esperar eventos.
- **Evaluación previa:**
La condición se verifica al inicio, si es falsa inicialmente, el código dentro nunca se ejecuta.
- **Evitar bucles infinitos**
Es crucial modificar las variables dentro del bucle para que la condición eventualmente se vuelva falsa.
___

## do while
Ejecutar el código solamente si tu condición sea verdadera, si la condiciones es verdadera, el ciclo se repite, si es falsa, termina.
    Aquí es lo mismo que el while (mientras se cumpla el while).
### Ejemplo
1. Hacer "imprimir"
do (print)
2. Mientras que "imprimir" sea igual a la palabra "hola"
while
  print == hola
    sintaxis de ejemplo
*O sea que mientras tu no pongas "hola" el código no se ejecutara.*
#### Funcionalidades
- **Ejecución garantizada:**
Cuando quieres que se ejecute tu código al menos una vez antes de evaluar tu condición.
- **Validación de datos:**
Ideal para solicitar información al usuario y repetirla si la entrada no es valida.
*Por ejemplo:*
Asegurar que un numero sea positivo

```
print("Ingresa un numero");
do(print)
while (num>0)
```
- **Menú de usuario**
Se utiliza comúnmente para mostrar un menú, procesar la opción seleccionada y seguir mostrando el menú hasta que el usuario elija salir.
*Por ejemplo:*

```
do
print("opcion 1");
print("opcion 2");
print("Opcion 3-Salir");

while(opcion !3)

```
##### Estructura: 
La sintaxis básica incluye `do { ... } while (condición);`, donde el punto y coma final es obligatorio.
___
**Resumen de diferencia de estructuras**
`while`: Solo ejecutar si se cumple la condición
`do while`: Ejecutar al menos una vez mientras la condición sea verdadera.
`for`:  Se usa cuando se conoce el límite exacto y repite el código. 
`if`:  Solo lo ejecuta una vez si se cumple la condición.
