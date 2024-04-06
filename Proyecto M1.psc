Algoritmo CalcularCostoProducto
    // Declaraci�n de variables
    Definir precioOriginal, descuentoAplicado, impuestos, cantidad, pesoPaquete, costoEnvio, costoProducto, descuentoCantidad Como Real
    
    // Leer el precio original del producto
    Escribir "Ingrese el precio original del producto:"
    Leer precioOriginal
    
    // Leer si hay un descuento aplicado
    Escribir "�Hay alg�n descuento aplicado? (Si/No):"
    Leer respuestaDescuento
    Si respuestaDescuento = "Si" Entonces
        Escribir "Ingrese el porcentaje de descuento aplicado:"
        Leer descuentoAplicado
    Sino
        descuentoAplicado = 0
    FinSi
    
    // Leer los impuestos aplicables
    Escribir "Ingrese los impuestos aplicables (%):"
    Leer impuestos
    
    // Leer la cantidad de productos
    Escribir "Ingrese la cantidad de productos comprados:"
    Leer cantidad
    
    // Leer el peso del paquete y el destino para calcular el costo de env�o
    Escribir "Ingrese el peso del paquete (en kg):"
    Leer pesoPaquete
    Escribir "Ingrese el destino del paquete:"
    Leer destino
    
    // Calcular el descuento por cantidad
    Si cantidad > 1 Entonces
        descuentoCantidad = 0.05 // Supongamos un descuento del 5% por cada producto adicional
    Sino
        descuentoCantidad = 0
    FinSi
    
    // Calcular el costo final del producto
    costoProducto = (precioOriginal * (1 - (descuentoAplicado / 100))) * (1 + (impuestos / 100)) * (1 - descuentoCantidad) + costoEnvio
    
    // Mostrar el costo final del producto con desglose
    Escribir "Costo final del producto:"
    Escribir "Precio con descuento aplicado:", precioOriginal * (1 - (descuentoAplicado / 100))
    Escribir "Impuestos:", precioOriginal * (impuestos / 100)
    Escribir "Descuento por cantidad:", precioOriginal * descuentoCantidad
    Escribir "Costo de env�o:", costoEnvio
    Escribir "Costo total:", costoProducto
FinAlgoritmo

Funci�n CalcularCostoEnvio(peso, destino)
// L�gica para calcular el costo de env�o basado en el peso y el destino
// Puedes implementar esta funci�n seg�n los criterios espec�ficos de tu sistema
Definir costo Como Real
Si destino = "Nacional" Entonces
	costo = peso * 5 // Supongamos $5 por kg para env�os nacionales
Sino Si destino = "Internacional" Entonces
        costo = peso * 10 // Supongamos $10 por kg para env�os internacionales
    Sino
        costo = 0 // Si el destino no est� definido, el costo de env�o es cero
    FinSi
FinSi
FinFunci�n
