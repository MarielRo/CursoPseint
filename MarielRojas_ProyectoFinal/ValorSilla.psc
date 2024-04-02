//Mariel Rojas
//Entrevista N1
// Se dice que una matriz tiene un punto de silla si alguna posición de la matriz es el
//menor valor de su fila y a la vez el mayor de su columna. Escribir un programa que tenga como entrada 
//una matriz de números enteros y calcule la posición de un punto de silla (si es que existe).
Algoritmo ValorSilla
	
	//Definir variables
	Definir n,silla,fil,col,may,men,matriz,posi Como Entero
	
	//Dimension 
	n=3
	Dimension matriz[n,n]

	//Inicio
	llenarMatriz(matriz)
	
	Para fil=0 hasta n-1
		Para col=0 hasta n-1
			Escribir "[" matriz[fil,col] "]" Sin saltar
		FinPara
		Escribir ""
	FinPara
	
	
	//Busca punto silla menor y mayor
	Para fil=0 hasta n-1    //Evaluar menor valor de su fila 
		
		
		Para col=0 hasta n-1  //Evalua el mayor de su columna
			Si matriz[fil,col] > may Y matriz[fil,col] < men //Busca el numero mayor y menor 
				silla =  matriz[fil,col]
				
			FinSi
		FinPara
		
		
	FinPara 
	Escribir "El numero silla " silla
FinAlgoritmo


SubProceso llenarMatriz(matriz)
	Definir fil,col,n como entero
	n=3
	//Inicio 
	//Llena la matriz de manera aleatoria
	Para fil=0 hasta n-1
		Para col=0 hasta n-1
			matriz[fil,col]= azar(99)+1
		FinPara
	FinPara
FinSubProceso
