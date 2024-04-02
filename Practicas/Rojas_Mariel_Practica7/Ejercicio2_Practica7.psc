//Mariel Rojas 

Algoritmo PosicionMaximaMatriz
	
	//Variables
	Definir dim,i,j,matriz,may,fil,col como entero
	
	//Inicio 
	Escribir "Digite la dimension de la matriz deseada"
	Leer dim  
	Dimension matriz[dim,dim]
	
	// Se le asignan al vector aleatoriamente  del 1 al 999.
	Para i= 0 hasta dim-1 Hacer  
		Para j=0 hasta dim-1 hacer
			matriz[i,j] = azar(999) +1 
		FinPara	
	FinPara
	
	//Numero mayor y su posicion en la matriz
	may = matriz[1,1]
	Para i=0 hasta dim-1                                  //Para las filas de 0 a el valor de la matriz
		Para j=0 hasta dim-1 hacer                       //Para las columnas de 0 a el valor de la matriz
			Escribir "[",matriz[i,j],"]" Sin saltar     //Se imprimen los valores de la matriz
			si matriz[i,j] > may                          //Matriz mayor a numero 
				may = matriz[i,j]                         //Matriz igual al numero mayor 
				fil = i                                   
				col = j
			FinSi	
		FinPara
		Escribir " "
	FinPara
	Escribir "El mayor es: ", may
	Escribir "La numero mayor esta en la fila y columna: " "[",fil,",",col "]"
	
FinAlgoritmo
