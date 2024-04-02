//Mariel Rojas
Algoritmo PrecioDescuento
	
	// Variables
	Definir precioAbrigo,precioZapatos,precioBilleteras,precioArticulo como real
	Definir descuentoAbrigo,descuentoZapatos,descuentoBilleteras,descuentoArticulos como real 
	Definir numero como entero
	
	//Inicio 
	Repetir 
		Escribir " "
		Escribir "Digite 1 para saber el precio final de los abrigos"
		Escribir "Digite 2 para saber el precio final de los zapatos"
		Escribir "Digite 3 para saber el precio final de las billeteras"
		Escribir "Digite 4 para saber el precio final de otros articulos"
		Escribir "Digite 6 para salir del menu principal"
		Leer numero 
		
	    Segun numero Hacer 
			1: Si numero = 1 //Descuento Abrigos 30%
					Escribir "Ingresar el precio del abrigo" 
					Leer precioAbrigo
					descuentoAbrigo = precioAbrigo * 0.3
					Escribir "El precio final con el descuento aplicado es de: ", precioAbrigo-descuentoAbrigo
				FinSi
				
			2: Si numero = 2 //Descuento zapatos 45%
				 Escribir "Ingresar el precio de los zapatos" 
				 Leer precioZapatos
				 descuentoZapatos = precioZapatos * 0.45
				 Escribir "El precio final con el descuento aplicado es de: ", precioZapatos-descuentoZapatos
			    FinSi
				
			3: Si numero = 3 //Descuento billeteras 30%
					Escribir "Ingresar el precio de la billetera" 
					Leer precioBilleteras
					descuentoBilleteras = precioBilleteras * 0.3
					Escribir "El precio final con el descuento aplicado es de: ", precioBilleteras-descuentoBilleteras
			    FinSi
				
			4: Si numero = 4 //Descuento articulos 10%
					Escribir "Ingresar el precio de otro articulo"
					Leer precioArticulo
					descuentoArticulos = precioArticulo * 0.1
					Escribir "El precio final con el descuento aplicado es de: ", precioArticulo-descuentoArticulo
				FinSi
				
			5: Escribir "Haz salido del menu principal"
			De otro modo: 
		FinSegun
	Hasta Que numero = 5	
	
FinAlgoritmo