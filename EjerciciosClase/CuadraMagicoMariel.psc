Algoritmo CuadradoMagico
	
	//DECLARACION DE VARIABLES
	Definir matriz,fil,col,matriz2,num,veces,posicion,cont1,cont2, dim,numrepetido Como Entero
	Definir bandera1,bandera2 como logico
	
	//DIMENSION DE MATRICES
	dim=3
	Dimension matriz[dim,dim],matriz2[dim,dim] //Dimensionan las matrices.
	
	//INICIO
	
	//MATRIZ CON POSICIONES
	//Se le signan números a las posiciones de la matriz
	matriz[0,0] = 1
	matriz[0,1] = 2
	matriz[0,2] = 3
	matriz[1,0] = 4
	matriz[1,1] = 5
	matriz[1,2] = 6
	matriz[2,0] = 7
	matriz[2,1] = 8
	matriz[2,2] = 9
	
	//Imprime al usuario el nombre del juego.
	Escribir "******************************************"
	Escribir " Bienvenido al juego del Cuadrado Mágico "
	Escribir "******************************************"
	Escribir ""
	Escribir " 	Instruciones del juego:    "
	Escribir " *Debe llenar el cuadrado mágico con números sin repetir. "
	Escribir " *Las filas,columnas y diagonales deben sumar 15."
	Escribir " "
	
	//Se imprime la matriz, para observar las posiciones que el usuario puede escoger para colocar el número deseado.
	Para fil=0 Hasta 2 Hacer
		Para col=0 Hasta 2 Hacer
			Escribir "[" matriz[fil,col] "]" " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir " "
	
	Repetir
		bandera1=Falso //Se inicializa la bandera en falso.
		cont1=0 //Se inicializa contador1 en cero. este contador llevará la cuenta de las vueltas.
		Escribir "Ingrese una posición en la matriz para colocar el número deseado. "
		Leer posicion
		
		//Para las filas de la matriz.
		Repetir 
			//Para las columnas de la matriz.
			Repetir
				Si matriz[cont1,cont2] == posicion
					Escribir "Que número desea digitar en la posicion " posicion "?"
					Leer num
					matriz2[cont1,cont2] = num
					bandera1=Verdadero
				FinSi
				cont2=cont2+1
			Hasta Que cont2>=dim o bandera1==Verdadero
			
			cont2=0 // Se reinicia el contador de las columnas
			cont1=cont1+1
		Hasta Que cont1>=dim o bandera1==Verdadero
		
		bandera1=Falso // Reinicia la bandera del ciclo repetir anterior.
		
		//Imprime la segunda matriz con los nú eros que el usuario va ingresando.
		Para fil=0 Hasta 2 Hacer
			Para col=0 Hasta 2 Hacer
				Escribir "[" matriz2[fil,col] "]" " " Sin Saltar
			FinPara
			Escribir ""
		FinPara
		
		cont1=0// Se reinicia el contador
		
		//Se hace la busqueda de todos los espacios vacios.
		//Para las filas de la matriz.
		Repetir 
			//Para las columnas de la matriz.
			Repetir
				si matriz2[cont1,cont2]==0
					bandera1=Verdadero
				FinSi
				cont2=cont2+1
			Hasta Que cont2>=dim o bandera1==Verdadero
			cont2=0 // Se reinicia el contador de las columnas
			cont1=cont1+1
		Hasta Que cont1>=dim o bandera1==Verdadero
		
		
		
		
	Hasta Que bandera1==Falso
	bandera2=falso
	Para fil=0 Hasta 2 Hacer
		Para col=0 Hasta 2 Hacer
			Si matriz2[cont1,cont2] == matriz2[fil,col]
				bandera2=Verdadero
			FinSi
		FinPara
	FinPara
	Escribir "Haz digitado un número repetido"
	Escribir "Por lo tanto no es un cuadrado mágico"
	
	

//	bandera2=falso
//	Para fil=0 Hasta 2 Hacer
//		Para col=0 Hasta 2 Hacer
//			Si  num= posicion
//				bandera2=Verdadero
//			FinSi
//		FinPara
//	FinPara
//	Escribir "Haz digitado un número repetido"
//	Escribir "Por lo tanto no es un cuadrado mágico"
	
//	//Para no repetir números
//	bandera2=falso
//	//Para las filas de la matriz.
//	Repetir 
//		//Para las columnas de la matriz.
//		Repetir
//			
//			cont2=cont2+1
//			bandera2=Verdadero
//		Hasta Que cont2>=dim o bandera2==Verdadero
//		Si bandera2=Verdadero
//			Escribir "Haz perdido, existe un número repetido en el cuadro mágico"
//		FinSi
//		cont2=0 // este reinicia el contador interno
//		cont1=cont1+1
//	Hasta Que cont1>=dim o bandera2==Verdadero
	
	
FinAlgoritmo
