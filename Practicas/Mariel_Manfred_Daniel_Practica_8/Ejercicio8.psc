 
Algoritmo Ejercicio8
	// Variables
	Definir dim,m,fil,col,inicio,final,vector,i,j Como Entero
	// Inicio 
	dim = 5
	inicio=1
	Final=15
	
	
	Dimension m[dim,dim]
	Dimension vector[25]
	//Recorrer la matriz, llenandola con valores respectivos
	Para fil= 0 hasta 4  Hacer
		Para col= 0 hasta 4 hacer 
			m[fil,col]= aleatorio(inicio,final) 
		FinPara
		inicio=inicio+15
		final=final+15 
		Escribir ""
	FinPara
	
	//Eliminar números repetidos en la matriz
	//Crea vector.
//	i=0 
//	j=0  
//	Para fil= 0 hasta 24 Hacer  
//		Para col=0 hasta 24 hacer
//			Vector[i]=m[fil,col] 
//			i=i+1     //Se incrementa
//		FinPara	
//	FinPara
//	
//	Para i =0 hasta 22 Con Paso 1 hacer
//		Para j=i+1 hasta 24 Con Paso 1 hacer
//			Si vector[i] > vector[j] Entonces //Primer numero es el menor
//				//Ordenamiento burbuja
//				aux=vector[i]        
//				vector[i] = vector[j]
//				vector[j]=aux
//			FinSi
//		FinPara	
//	FinPara
//	//Datos del vector a la matriz
//	i=0
//	Para fil=0 hasta 5 Hacer 
//		Para col=0 hasta 5 hacer                       
//			m[fil,col] = vector[i]
//			i= i+1
//		FinPara
//	FinPara
	
	//Imprimir el carton del BINGO
	Escribir "[B] [I] [N] [G] [O]"
	Para fil= 0 hasta 4  Hacer 
		Para col= 0 hasta 4 hacer 
			Escribir "[",m[col,fil],"]" Sin Saltar 
		FinPara
		Escribir " "
	FinPara
	
FinAlgoritmo
