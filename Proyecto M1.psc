Algoritmo Proyecto1M1
    // Declaración de variables
    Definir precioOriginal, descuento, iva, cantidad, peso, costoEnvio, costoFinal, precioDescuento, precioImpuestos, precioCantidad, costoEnviototal Como real
    Dimension destino[2,2] // Implementación de control de flujo: condiciones, bucles y uso de arreglos unidimensionales y/o bidimensionales
    
    // Definición de los destinos con su costo de envío
    destino[1,1] <- "Nueva York"
    destino[1,2] <- "10"
    destino[2,1] <- "Otros Estados"
    destino[2,2] <- "5"
    
    // Ingreso de datos
    Escribir "Ingresar precio original:"
    Leer precioOriginal
    
    Escribir "Ingresar porcentaje de descuento:"
    Leer descuento
    
    Escribir "Ingresar porcentaje de impuesto:"
    Leer iva
    
    Escribir "Ingresar la cantidad de productos:"
    Leer cantidad
    
    Escribir "Ingresar peso del paquete en KG:"
    Leer peso
    
    Escribir "Ingresar el destino del envío:"
    Para i = 1 Hasta 2 con paso 1 Hacer
        Escribir i, ".", destino[i,1]
    FinPara
    Leer destino[1,2] // Leemos el costo de envío para el destino seleccionado
    
    // Implementación de operaciones aritméticas y operadores de comparación
    
    Si descuento > 0 Entonces
        precioDescuento <- precioOriginal - (precioOriginal * (descuento / 100))
    Sino
        precioDescuento <- precioOriginal
    FinSi
    
    precioImpuestos <- precioDescuento * (1 + (iva / 100))
    
    Si cantidad > 1 Entonces
        precioCantidad <- (precioImpuestos - (precioImpuestos * (5 / 100))) * cantidad
    Sino 
        precioCantidad <- precioImpuestos
    FinSi
    
	cadenaCostoEnvio <- destino[1,2]
	costoEnvio <- ConvertirANumero(cadenaCostoEnvio)
	
	costoEnviototal = (costoEnvio) + (peso * 2 )
	
	
    costoFinal <- precioCantidad + costoEnviototal
    
    // Ejecución del Proceso 
    Escribir "Detalle de la compra:"
    Escribir "Precio sin impuesto y con descuento: ", precioDescuento
    Escribir "Precio con impuestos incluidos: ", precioImpuestos
    Escribir "Precio con descuento adicional por cantidad: ", precioCantidad
    Escribir "Costo por envío: ", costoEnviototal
    Escribir "Costo total de producto + envío: ", costoFinal
    
FinAlgoritmo
