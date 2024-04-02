//Mariel Rojas
//Trabajo Cotidiano - Vectores - Mayor, Menor
Algoritmo PromedioNotas
	
	//Variables
	Definir vector,x,may,men,num como real 
	Definir i Como Entero
	
	//Dimensionar vector
	Dimension vector[15]   //Se dimensionan las valores = vector 
	
	//Asignaccion Vector 
	Para i= 0 hasta 14 Hacer      
		vector[i] = azar(99) +1 // Se le asignan al vector aleatoriamente 15 numeros del 1 al 99.
	FinPara
	
	//Imprimir al azar los valores del vector 
	Para i= 0 hasta 14 Hacer      
		Escribir "[",vector[i],"]" Sin Saltar 
		Escribir " "
	FinPara
	
	//Numero mayor y menor
	may=[i]
	men=[i]
	Para i= 0 hasta 14 Hacer
		num = vector[i]
	    Si num > may
		   may = num
	   Sino 
		   Si num < men
			   men = num
		   FinSi
	   FinSi
   FinPara
   
	Escribir "El numero may es: ",may
	Escribir "El numero menor es: ",men
	
	//Definir la posicion del numero mayor y del numero menor.
	Para x = 0 hasta 14 Hacer
		Si vector[x]= may 
			Escribir "La posicion del numero mayor esta en : ", x
		FinSi	
		Si vector[x]= men
			Escribir "La posicion del numero menor esta en : ", x
		FinSi
		
	FinPara
	

FinAlgoritmo