
//Mariel,Daniel,Manfred
//matriz de 6x6, con valores aleatorios (entre 1 y 99) ordenados de izquierda a derecha y de 
//arriba hacia abajo y otra 6x6 Ordenada de abajo hacia arriba y de derecha a izquierda


Algoritmo Ejercicio9
	//Variables
	Definir fil,col,i,j,matriz,vector,v,aux,menu como entero
	
	//Inicio 
	Dimension matriz[6,6]
	Dimension Vector[36]
	
	
	// Se le asignan al vector aleatoriamente  del 1 al 999.
	Para fil= 0 hasta 5 Hacer  
		Para col=0 hasta 5 hacer
			matriz[fil,col] = azar(99) +1 
		FinPara	
	FinPara
	
	
	Escribir "Matriz ordenada ascentente y descenentemente"
	
	Repetir
		Escribir "Digite 1 para ver la matriz ordenada de izquierda a derecha y de arriba hacia abajo"
		Escribir "Digite 2 para ver la matriz ordenada de derecha a izquierda y de arriba a abajo"
		Escribir "Digite 3 para salir"
		Leer menu
		Segun menu
				//Ordena de izquierda a derecha y de arriba hacia abajo
			1:  i=0 
				j=0  
				Para fil= 0 hasta 5 Hacer  
					Para col=0 hasta 5 hacer
						Vector[i]=matriz[fil,col] 
						i=i+1     //Se incrementa
					FinPara	
				FinPara
				
				Para i =0 hasta 34 Con Paso 1 hacer
					Para j=i+1 hasta 35 Con Paso 1 hacer
						Si vector[i] > vector[j] Entonces //Primer numero es el menor
							//Ordenamiento burbuja
							aux=vector[i]        
							vector[i] = vector[j]
							vector[j]=aux
						FinSi
					FinPara	
				FinPara
				//Datos del vector a la matriz
				i=0
				Para fil=0 hasta 5 Hacer 
					Para col=0 hasta 5 hacer                       
						matriz[fil,col] = vector[i]
						i= i+1
					FinPara
				FinPara
				
				//Imprime la matriz
				Para fil=0 hasta 5 Hacer 
					Para col=0 hasta 5 hacer                       
						Escribir "[",matriz[fil,col],"]" Sin saltar     
					FinPara
					Escribir " "
				FinPara
				
				//Ordena de derecha a izquierda y de arriba a abajo.
			2:	
				i=0 
				j=0  
				Para col= 5 hasta 0 Hacer  //primer columna y despues fila
					Para fil=5 hasta 0 hacer
						Vector[i]=matriz[col,fil] 
						i=i+1     //Se incrementa
					FinPara	
				FinPara
				
				Para i =0 hasta 34 Con Paso 1 hacer
					Para j=i+1 hasta 35 Con Paso 1 hacer
						Si vector[i] < vector[j] Entonces //Primer numero es el menor
							//Ordenamiento burbuja
							aux=vector[i]        
							vector[i] = vector[j]
							vector[j]=aux
						FinSi
					FinPara	
				FinPara
				//Datos del vector a la matriz
				i=0
				Para col=5 hasta 0 Hacer //Para las filas de 0 a el valor de la matriz
					Para fil=5 hasta 0 hacer                       
						matriz[col,fil] = vector[i]
						i= i+1
					FinPara
				FinPara	
				
				//Imprime la matriz
				Para fil=5 hasta 0 Hacer 
					Para col=5 hasta 0 hacer                       
						Escribir "[",matriz[col,fil],"]" Sin saltar     
					FinPara
					Escribir " "
				FinPara
			3: Escribir "Haz salido del programa"	
				
		FinSegun
	Hasta Que menu=3
	
FinAlgoritmo
