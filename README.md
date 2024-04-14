<h1> <img src = "https://bootcampvirtual.udd.cl/blog/wp-content/uploads/2022/07/bootcamp-publicidad.png" width = "100px"> "PROYECTO 1: Algoritmo de Sistema de Costos"</h1>

<h2>Planteamiento</h2>

Construir un algoritmo en pseudocódigo que simule un sistema para calcular el costo de un producto con base en su precio original y el porcentaje de descuento aplicado. 

<h3>Requerimientos</h3>

- 1. Leer el precio original del producto.
- 2. Aplicar un descuento al producto si es aplicable (por ejemplo, si el cliente tiene un cupón de descuento).
- 3. Aplicar impuestos al producto (por ejemplo, el IVA u otros impuestos).
- 4. Si el cliente compra más de un artículo, aplicar un descuento por cantidad.
- 5. Calcular el costo de envío basado en el destino y el peso del paquete.
- 6. Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
- 7. Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).

<h4>Solución explicada paso a paso</h4>

- Primer paso: Declarar las variabes que se usaran en el programa
    - Definir precioOriginal, descuento, iva, cantidad, peso, costoEnvio, costoFinal, precioDescuento, precioImpuestos, precioCantidad, costoEnviototal Como real

- Segundo paso: Crear un arreglo bidimensional de una matiz 2 por 2 para la selección del Estado y el Costo:
    - Dimension destino[2,2]:
        - destino[1,1] <- "Nueva York"
        - destino[1,2] <- "10"
        - destino[2,1] <- "Otros Estados"
        - destino[2,2] <- "5"
- Tercer paso: Definir los prompts para ingresar los datos:
    - Escribir "Ingresar precio original:"
    - Leer precioOriginal
    
    - Escribir "Ingresar porcentaje de descuento:"
    - Leer descuento
    
    - Escribir "Ingresar porcentaje de impuesto:"
    - Leer iva
    
    - Escribir "Ingresar la cantidad de productos:"
    - Leer cantidad
    
    - Escribir "Ingresar peso del paquete en KG:"
    - Leer peso     
  
- Cuarto Paso: Al momento de buscar ingresar el dato del lugar de envío, realizar un control de flujo por medio de condición y bucle:
    - Escribir "Ingresar el destino del envío:"
    - Para i = 1 Hasta 2 con paso 1 Hacer
        - Escribir i, ".", destino[i,1]
    - FinPara
    - Leer destino[1,2]   

- Quinto Paso: Agregar  operaciones aritméticas y operadores de comparación para realizar los cálculos:
    -  Si descuento > 0 Entonces
        - precioDescuento <- precioOriginal - (precioOriginal * (descuento / 100))
    - Sino
        - precioDescuento <- precioOriginal
    - FinSi
    
    - precioImpuestos <- precioDescuento * (1 + (iva / 100))
    
    - Si cantidad > 1 Entonces
        - precioCantidad <- (precioImpuestos - (precioImpuestos * (5 / 100))) * cantidad
    - Sino 
        - precioCantidad <- precioImpuestos
    - FinSi
    

- Sexto Paso: Para ejecutar correctamente la selección del lugar de destino, se debe de convertir el costo del envío del arreglo bidimensional a número:
    - cadenaCostoEnvio <- destino[1,2]
	    - costoEnvio <- ConvertirANumero(cadenaCostoEnvio)
	
	- costoEnviototal = (costoEnvio) + (peso * 2 )
		
    - costoFinal <- precioCantidad + costoEnviototal

- Septimo Paso: Definir los prompts que alimentaran las variables para ejecutar el proceso:
    - Escribir "Detalle de la compra:"
    - Escribir "Precio sin impuesto y con descuento: ", precioDescuento
    - Escribir "Precio con impuestos incluidos: ", precioImpuestos
    - Escribir "Precio con descuento adicional por cantidad: ", precioCantidad
    - Escribir "Costo por envío: ", costoEnviototal
    - Escribir "Costo total de producto + envío: ", costoFinal
 
- Octavo Paso: Probar el pseudo codigo reailzado en Pseint, con el siguiente resultado:
<img src = "https://github.com/NicoBrainFitness/Proyecto1M1/blob/main/Resultado%20Pseint_P1M1.png"
