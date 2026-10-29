
Algoritmo CortesDeControlVentas
	
    Definir sucursal, vendedor, producto Como Cadena
    Definir sucursalAnt, vendedorAnt Como Cadena
    Definir importe Como Real
    Definir totalVendedor, totalSucursal, totalGeneral Como Real
	
    // Leer el primer registro del archivo
    Leer sucursal, vendedor, producto, importe
	
    // Inicializar los acumuladores
    sucursalAnt <- sucursal
    vendedorAnt <- vendedor
	
    totalVendedor <- 0
    totalSucursal <- 0
    totalGeneral <- 0
	
    Mientras sucursal <> "FIN" Hacer
		
        // Control de cambio de sucursal
        Si sucursal <> sucursalAnt Entonces
			
            // Cerrar el vendedor anterior
            Escribir "Total vendedor ", vendedorAnt, ": ",totalVendedor
			
            // Cerrar la sucursal anterior
            Escribir "Total sucursal ", sucursalAnt, ": ",totalSucursal
			
            // Reiniciar acumuladores
            totalVendedor <- 0
            totalSucursal <- 0
			
            // Actualizar las claves de control
            sucursalAnt <- sucursal
            vendedorAnt <- vendedor
			
        SiNo
			
            // Control de cambio de vendedor
            Si vendedor <> vendedorAnt Entonces
				
                Escribir "Total vendedor ", vendedorAnt, ": ",totalVendedor
				
                totalVendedor <- 0
                vendedorAnt <- vendedor
				
            FinSi
			
        FinSi
		
        // Acumular el importe de la venta
        totalVendedor <- totalVendedor + importe
        totalSucursal <- totalSucursal + importe
        totalGeneral <- totalGeneral + importe
		
        // Leer el siguiente registro
        Leer sucursal, vendedor, producto, importe
		
    FinMientras
	
    // Cerrar el último vendedor
    Escribir "Total vendedor ", vendedorAnt, ": ",totalVendedor
	
    // Cerrar la última sucursal
    Escribir "Total sucursal ", sucursalAnt, ": ",totalSucursal
	
    // Mostrar el total general
    Escribir "Total general: ", totalGeneral
	
FinAlgoritmo
