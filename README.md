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

