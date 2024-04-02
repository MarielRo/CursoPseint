//Mariel Rojas
//Calcular la cantidad de digitos de un numero dado.
Algoritmo CantidadDigitos
	
	//Variables
	Definir numero como entero
	
	//Inicio 
	Escribir "Digite un numero mayor a cero y menor que 999 999 999"
	Leer numero 
	
	Si numero >= 0 Y numero <=  9  // Numeros de un digito  
		Escribir "El numero ingresado tiene un digito"
	Sino
		Si numero >= 10 Y numero <=  99 // Numeros de dos digitos
			Escribir "El numero ingresado tiene dos digitos"
		Sino
			Si numero >= 100 Y numero <=  999 // Numeros de tres digitos
				Escribir "El numero ingresado tiene tres digitos"
			SiNo
				Si numero >= 1000 Y numero <= 9999 // Numeros de cuatro digito
					Escribir "El numero ingresado tiene cuatro digitos"
				SiNo
					Si numero >= 10000 Y numero <=  99999 // Numeros de cinco digitos
						Escribir "El numero ingresado tiene cinco digitos"
					SiNo
						Si numero >= 100000 Y numero <=  999999 // Numeros de seis digitos
							Escribir "El numero ingresado tiene seis digitos"
						SiNo
							Si numero >= 1000000 Y numero <=  9999999 // Numeros de siete digitos
								Escribir "El numero ingresado tiene siete digitos"
							SiNo
								Si numero >= 10000000 Y numero <=  99999999 // Numeros de ocho digitos
									Escribir "El numero ingresado tiene ocho digitos"
								SiNo
									Si numero >= 100000000 Y numero <=  999999999 // Numeros de nueve digitos
										Escribir "El numero ingresado tiene nueve digitos"
									Sino	
										Escribir "El numero ingresado es incorrecto"
									FinSi
								FinSi	
							FinSi	
						FinSi	
					FinSi	
				FinSi	
			FinSi	
		FinSi	
		
	FinSi
FinAlgoritmo
