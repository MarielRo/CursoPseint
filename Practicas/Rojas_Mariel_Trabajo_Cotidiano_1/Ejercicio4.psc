//Mariel Rojas
Algoritmo MatrizIdentidad
	
	//Variables
	Definir dim,i,j,matriz como entero
	//Inicio 
	Escribir "Digite la dimension de la matriz deseada"
	Leer dim  
	Dimension matriz[dim,dim]
	
	
	Para i = 0 hasta dim-1  Hacer       
		Para j = 0 hasta dim-1  hacer
			 matriz[i,j] <- 0
	    FinPara     
    FinPara
	
	Para i = 0 hasta dim-1  Hacer       
		matriz[i,i] = 1
    FinPara
	
	//Imprimir 
	Para i = 0 hasta dim-1   Hacer     
		Para j = 0 hasta dim-1  hacer
			Escribir matriz[i,j]," " Sin Saltar
			
	    FinPara
		Escribir  " "
    FinPara
	
	
FinAlgoritmo