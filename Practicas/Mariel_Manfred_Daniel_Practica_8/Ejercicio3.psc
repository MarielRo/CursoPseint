//Mariel,Manfred,Daniel
//Ejercicio 3
//Vector inverso a un vector insertado

Algoritmo Ejercicio3
	
	  //Declarar variables
	  Definir i,num,vec,final como entero
		
		// Dimensiona el vector
		Dimension vec[8]
	  
		//Inicio
		i=0
		final=8
		Repetir //Recorre el vector
			Escribir "Digite 8 numeros "
			Leer num
			vec[i] = num
			i=i+1 
		Hasta Que i = final
		
		//Imprime el vector
		Escribir"El vector ingresado es:"
		i=0
		Repetir 
			Escribir "[" vec[i] "]" Sin saltar
			i=i+1 
		Hasta Que i = final
		Escribir " "
		
		//Imprime el vector inverso 
		Escribir"El vector inverso es:"
		i=7
		Repetir 
			Escribir "[" vec[i] "]" Sin saltar
			i= i-1 
		Hasta Que i = -1
	FinAlgoritmo
