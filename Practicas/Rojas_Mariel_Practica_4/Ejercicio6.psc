//Mariel Rojas
// Verificar si un número ingresado es par-positivo, par-negativo, impar-positivo o impar-negativo.
Algoritmo NumerosParesImparesPositivosNegativos 
	//Variables 
	Definir numero como entero
	//Inicio 
	Escribir "Ingresar un número"
	Leer numero
	
	Si numero % 2 = 0 Y numero > 0 
	  Escribir "Es par-positivo"
	Sino 
		Si numero % 2 <> 0 Y numero > 0 
			Escribir "Es impar-positivo"
			
		Sino 
			Si numero % 2 <> 0 Y numero < 0  
				Escribir "Es impar-negativo"
				
		    Sino 
				Si numero % 2 = 0 Y numero < 0  
					Escribir "Es par-negativo"
				Sino 
				 
			 	FinSi
			FinSi		
		FinSi
	FinSi
	
FinAlgoritmo
