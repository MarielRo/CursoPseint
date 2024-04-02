//Mariel Rojas
//Realizar la suma de dos matrices bidimensionales


Algoritmo SumaDosMatrices
	
	//Variables
	
	Definir i,j Como Entero
	Definir A, B, suma Como Entero
	
	
	//Dimensionar vectores
	Dimension A[3,3]
	Dimension B[3,3]
	Dimension suma[3,3]
	
	//Inicio
	
	// Solicitar valores de la matriz A
	Escribir "Digite los valores de matriz A"
	para i = 0 hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			Escribir "Digite los valores de A para (",i,")(",j,")"
			Leer A[i,j]
		FinPara
	FinPara
	
	// Solicitar valores de la matriz B
	Escribir "Digite los valores de matriz B"
	Para i = 0 hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			Escribir "Digite los valores de B para (",i,")(",j,")"
			Leer B[i,j]
		FinPara
	FinPara
	
	//Valores ingresados de la matriz A
	Escribir "Valores de la matriz A"
	Para i = 0 hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			Escribir " [",A[i,j],"] " Sin Saltar
		FinPara
		Escribir " "
	FinPara
	
	//Valores ingresados de la matriz B
	Escribir "Valores de la matriz B"
	para i = 0 hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			Escribir " [",B[i,j],"] " Sin Saltar
		FinPara
		Escribir " "
	FinPara
	
	// Suma[I,J] = A[I,J] + B[I,J]
	Escribir "La suma de la matriz A + la matriz B es "
	para i = 0 hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			Suma[i,j] = A[i,j] + B[i,j]
			Escribir " [",Suma[i,j],"] " Sin Saltar
		FinPara
		Escribir " "
	FinPara
	
FinAlgoritmo

