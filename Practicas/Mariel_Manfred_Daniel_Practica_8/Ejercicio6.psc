//Mariel,Daniel y Manfred.
//Ejercicio6
//Primeros 30 números primos
//2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 
//59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113

	Algoritmo Ejercicio6
		//Variables
		Definir num,i,j,conta,a,b,x,numPrimos como entero
		
		//Inicio
		Dimension numPrimos[6,5]
		conta=0 //Inicializa contador en cero.
		b=0
		x=0
		//Contabilizan los numeros 
		Para num = 1 Hasta 115 Con Paso 1 Hacer //Hasta 115 porque es donde se contienen los primeros 30 números primos
			a = 1                                   
			conta = 0
			//Se va reccoriendo la matriz y verificando los números primos
			Repetir 
				si num mod a == 0 Entonces   // Si el numero da como residuo cero entonces se guarda el numero
					conta = conta + 1
				FinSi
				a = a + 1 //Incrementa la variable
			Hasta Que a > num
			
			Si conta = 2 Entonces //Verifica si es primo 
				Para i=x Hasta x Hacer //Se recorre la matriz 
					Para j=b Hasta b Hacer
						numPrimos[i,j] = num
					FinPara
				FinPara
				b=b+1
				Si b=5 Entonces
					x=x+1
					b=0
				FinSi
			FinSi
		FinPara
		
		//Imprime la Matriz
		Para i=0 Hasta 5 Hacer
			Para j=0 Hasta 4 Hacer
				Escribir "[" numPrimos[i,j] "]"  Sin Saltar
			FinPara
		Escribir ""
		FinPara
	FinAlgoritmo
