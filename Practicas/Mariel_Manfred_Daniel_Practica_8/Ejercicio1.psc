//Ejercicio 1
//Multiplos de 3 y 5 
//Mariel, Manfred, Daniel. 

	Algoritmo Ejercicio1
		//	Declarar variables
		Definir i,multiplos,suma1,suma2 Como Entero 
		
		//Inicio 
		Escribir "Suma de los multiplos de 3 y 5"
		suma1 <- 0 //Se inicializa como cero
		suma2 <- 0 
		
		Escribir "Los multiplos de 3,del 1 al 999 son"
	    Para i = 1 hasta 999/3 con paso 1 hacer //999/3, es el limite dividido entre 3.
		  multiplos = i * 3
		  Escribir multiplos ", " Sin Saltar
		  suma1 <- suma1 + multiplos //Se suma lo que tiene suma que inicializa en cero,mas el valor del multiplo
	    FinPara
	  
		Escribir "  "
		Escribir "La suma de los multiplos de 3 es: " suma1 
		Escribir "  "
	  
		Escribir "Los multiplos de 5 son del 1 al 999 son"
	  
	    Para i = 1 hasta 999/5 con paso 1 hacer //999/3, es el limite dividido entre 5.
			multiplos <- i * 5
			Escribir multiplos ", " Sin Saltar
			suma2 <- suma2 + multiplos 
	    FinPara
	    Escribir "  "	
	    Escribir "La suma de los multiplos de 5 es: " suma2 
		
	FinAlgoritmo

