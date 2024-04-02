//Mariel Rojas
// Imprima un triángulo de números que muestre a todos los valores anteriores al número ingresado.

Algoritmo TrianguloNumeros
	//Variables
	Definir numero,valorA,valorB,valorC como entero
	//Inicio 
	Escribir "Digite un numero "
	Leer numero
	
	Para valorA = 1 Hasta numero Con Paso 1 Hacer
		valorC = valorA
		Escribir ValorC Sin Saltar
		Para valorB = +1 Hasta valorA Con Paso 1 Hacer
			Escribir valorC Sin Saltar
	    FinPara
		Escribir " "  
	FinPara	

FinAlgoritmo
