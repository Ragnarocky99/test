Algoritmo MantenimientoLibros
	
    Definir codigo, titulo, autor Como Cadena
    Definir estado Como Cadena
    Definir cantidad Como Entero
    Definir n, opcion, i, pos Como Entero
    Definir codBuscar Como Cadena
	
    Dimension codigo[100]
    Dimension titulo[100]
    Dimension autor[100]
    Dimension cantidad[100]
    Dimension estado[100]
	
    n <- 0
	
    Repetir
		
        Escribir "===== MENU DE LIBROS ====="
        Escribir "1. Alta de libro"
        Escribir "2. Baja logica"
        Escribir "3. Modificar cantidad disponible"
        Escribir "4. Consultar libro"
        Escribir "5. Salir"
        Escribir "Seleccione una opcion:"
        Leer opcion
		
        Segun opcion Hacer
			
            1:
                Si n < 100 Entonces
					
                    Escribir "Ingrese codigo del libro:"
                    Leer codBuscar
					
                    pos <- 0
					
                    Para i <- 1 Hasta n Hacer
                        Si codigo[i] = codBuscar Entonces
                            pos <- i
                        FinSi
                    FinPara
					
                    Si pos = 0 Entonces
						
                        n <- n + 1
						
                        codigo[n] <- codBuscar
						
                        Escribir "Ingrese titulo:"
                        Leer titulo[n]
						
                        Escribir "Ingrese autor:"
                        Leer autor[n]
						
                        Escribir "Ingrese cantidad disponible:"
                        Leer cantidad[n]
						
                        estado[n] <- "A"
						
                        Escribir "Libro registrado correctamente."
						
                    SiNo
                        Escribir "Ya existe un libro con ese codigo."
                    FinSi
					
                SiNo
                    Escribir "No hay espacio para mas libros."
                FinSi
				
            2:
                Escribir "Ingrese codigo del libro a dar de baja:"
                Leer codBuscar
				
                pos <- 0
				
                Para i <- 1 Hasta n Hacer
                    Si codigo[i] = codBuscar Entonces
                        pos <- i
                    FinSi
                FinPara
				
                Si pos = 0 Entonces
					
                    Escribir "El libro no existe."
					
                SiNo
					
                    Si estado[pos] = "A" Entonces
                        estado[pos] <- "I"
                        Escribir "Libro dado de baja correctamente."
                    SiNo
                        Escribir "El libro ya esta inactivo."
                    FinSi
					
                FinSi
				
            3:
                Escribir "Ingrese codigo del libro:"
                Leer codBuscar
				
                pos <- 0
				
                Para i <- 1 Hasta n Hacer
                    Si codigo[i] = codBuscar Entonces
                        pos <- i
                    FinSi
                FinPara
				
                Si pos = 0 Entonces
					
                    Escribir "El libro no existe."
					
                SiNo
					
                    Si estado[pos] = "A" Entonces
						
                        Escribir "Cantidad actual: ", cantidad[pos]
                        Escribir "Ingrese nueva cantidad disponible:"
                        Leer cantidad[pos]
						
                        Escribir "Cantidad modificada correctamente."
						
                    SiNo
                        Escribir "El libro esta inactivo."
                    FinSi
					
                FinSi
				
            4:
                Escribir "Ingrese codigo del libro a consultar:"
                Leer codBuscar
				
                pos <- 0
				
                Para i <- 1 Hasta n Hacer
                    Si codigo[i] = codBuscar Entonces
                        pos <- i
                    FinSi
                FinPara
				
                Si pos = 0 Entonces
					
                    Escribir "El libro no existe."
					
                SiNo
					
                    Escribir "Codigo: ", codigo[pos]
                    Escribir "Titulo: ", titulo[pos]
                    Escribir "Autor: ", autor[pos]
                    Escribir "Cantidad disponible: ", cantidad[pos]
                    Escribir "Estado: ", estado[pos]
					
                    Si estado[pos] = "A" Entonces
                        Escribir "Estado descriptivo: Activo"
                    SiNo
                        Escribir "Estado descriptivo: Inactivo"
                    FinSi
					
                FinSi
				
            5:
                Escribir "Saliendo del sistema..."
				
            De Otro Modo:
                Escribir "Opcion incorrecta. Intente nuevamente."
				
        FinSegun
		
    Hasta Que opcion = 5
	
FinAlgoritmo
