//Ejercicio2
//Mariel,Daniel,Manfred 
//Diferencia entre la suma de los cuadrados de los primeros cien números naturales y 
//el cuadrado de la suma correspondiente.

	Algoritmo Ejercicio2 
		//Definir Variables
		Definir sumaCuadra,cuadraSuma,i como Entero
		
		//Inicio 
		//SUMA CUADRADOS 
		sumaCuadra <- 0 // La suma se inicializa en 0. 
		Para i = 1 Hasta 100 Con Paso 1 Hacer
			sumaCuadra = sumaCuadra + (i*i) // (1*1)+(2*2)+(3*3)..(100*100)
			
		FinPara
		Escribir "La suma de los cuadrados de los primeros 100 numeros:", sumaCuadra
		
		//CUADRADO DE LA SUMA 
		cuadraSuma <- 0;
		Para i <- 1 Hasta 100 Con Paso 1 Hacer
			cuadraSuma <- cuadraSuma + i //(1+2+3+4...+100) Aqui nada mas se suman los primeros 100 numeros.
		FinPara
		Escribir "El cuadrado de la suma de los primeros 100 numeros:", Cuadrasuma ^ 2  //se eleva al cuadrado la suma de los primeros 100
		Escribir "La diferencia entre la suma de los cuadrados y el cuadrado de la suma es: " Cuadrasuma ^ 2 - sumaCuadra 
		
	FinAlgoritmo
