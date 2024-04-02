//Mariel Rojas 
// Imprimir en pantalla descendentemente los números impares del 100 al 0.
Algoritmo NumerosImpares
	//Variables 
	Definir contador,ingrese Como Entero 
	contador = 99
	//Inicio 
	Escribir "Ingrese 1 para comenzar"
	Leer ingrese
	Si ingrese = 1
		Escribir "Aquí estan los números impares del 100 al 0 "
		Mientras contador >= 0
			Escribir contador
			contador = (contador-2)
		FinMientras
	Sino 
		Repetir 
			Escribir "Dígito ingresado incorrecto,ingrese 1 para comenzar"
			Escribir "Ingrese 1 para comenzar"
			Leer ingrese
		Hasta que ingrese = 1
		Escribir "Aquí estan los números impares del 100 al 0 "
		Mientras contador >= 0
			Escribir contador
			contador = (contador-2)
		FinMientras
	FinSi
	
	
	
	
FinAlgoritmo