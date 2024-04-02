//Mariel, Daniel, Manfred.
//Ejercicio 4 
//Composición de un número ingresado.  

	Algoritmo Ejercicio4
		
		//Declarar Variables
		Definir uniM,centenas,decenas,unidades,num Como Entero
		
		//Inicio
		Escribir "Ingrese un número menor a 9999"
		Leer num
		Si num >= 0 Y num < 9999 Entonces
			//Se hace la descomposicion, para ver el valor de las unidades 
			//1234/10 = 123.4  
			unidades=num mod 10
			num=trunc(num/10) //Se guarda las decimales 
			
			//123/10 = 12.3 
			decenas=num mod 10
			num=trunc(num/10)
			
			//12/10 = 1.2 
			centenas=num mod 10
			num=trunc(num/10)
			
			//1/10 = 1 
			uniM=num mod 10
			num=trunc(num/10)
			
			Escribir "El numero tiene"
			Escribir unidades " Unidades"
			Escribir decenas " Decenas"
			Escribir centenas " Centenas"
			Escribir uniM " Unidades de Millar"
		Sino 
			Si num > 9999 Entonces
				Escribir "Número ingresado incorrecto"
			FinSi
		FinSi
		
	FinAlgoritmo