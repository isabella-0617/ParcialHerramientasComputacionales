##### ParcialHerramientasComputacionales
#### Isabella Salcedo Hernández

## INTRODUCCIÓN
Para el desarrollo de este parcial, se resuleve el problema planteado el cual se trata de un sistema de facturación que a partir de la información del rol del cliente, el precio del producto y la cantidad a llevar, pueda calcular correctamente el valor final a pagar teniendo en cuenta los diferentes descuentos que se aplican para cada tipo de cliente.

Para esto, se implementa un algoritmo en MATLAB que reciba entradas por teclado y toma decisiones dependiendo de ellas. Para el rol, solo se admite que el usuario ingrese "estudiante" o "profesor" en minúscula y luego se solicitará la información de la compra para con este valor y la cantidad de productos a llevar, calcular el valor final así: 

* Precio = valor x cantidad x descuento

Y la salida al final del proceso será "El **Rol** con cedula **Numero**, debe pagar **Valor** por el producto **Codigo**". Esta implementación podré verse en el archivo *"cafeteria.m"*

En esta misma carpeta, se encuentra un archivo con nombre *"preguntas.txt"* en el cual se explica brevemente los tipos de errores que se presentaron en la implementación del algoritmo y las estrategias utilizadas para resolver estos errores.
___

### Descripción de la información
El programa se iniciará pidiendo que se ingrese por teclado:

* Rol del cliente (estudiante o profesor)
* Número de cédula 
* Código del producto
* Cantidad a llevar 
* Precio unitario del producto seleccionado

El programa solo podrá tomar dos caminos, hacer un descuento sobre el valor total calculado de 50% si es estudiante o de 20% si es profesor y al final aparecerá en pantalla el precio total.
___

### Descripción funcional
El algoritmo desarrollado, realiza procesos de validación por cada entrada por teclado:
1. Validación de rol: Se verifica que la cadena de caracteres ingresada corresponda a la cadena que forma la palabra "estudiante" o "profesor" como se muestra a continuación:

~~~ matlab
    if strcmp(rol,'estudiante') | strcmp(rol,'profesor')
        break
    else
        disp('DEBE INGRESAR "estudiante" o "profesor"')
    end
~~~
2. Validación cédula: Se realiza una validación de que el valor ingresado sea numérico y además de esto, se verifica que se cumpla con la cantidad de dígitos que contiene un número de cédula (10 dígitos).
3. Validación de cantidad y precio: Se valida que las entradas sean numéricas.
4. Verificación de descuento: Se verifica si el rol es estudiante o profesor para realizar el descuento según corresponda.

Como se puede observar, el código que se ingresa no requiere validación ya que no se especifica que deba ser solo de caracter numérico por lo que la entrada admitirá un valor alfanumérico.
___

### Criterios de validación
Los criterios de evaluación de entrada se realizaron mediante el uso de funciones como *isletter(A)* la cual retorna un vector con valores 1 o 0 marcando las posiciones en las que la variable 'A' contenga texto. Por ejemplo si *A = 32H* la función retornará: {[0 0 1]} si A fuera un valor numérico el vector resultante sería un vector de ceros por lo que si sumamos cada entrada del vector debería dar como resultado el número '0' por esto, la validación se hace por medio del condicional *if* y la función *sum(isletter(A))* para comprobar si el valor de esta suma es cero y continuar con el código pero si el valor no corresponde a cero, el programa le pedirá nuevamente al susuario que escoja una opción válida.
