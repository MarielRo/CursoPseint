//Mariel Rojas

Algoritmo Matriz5x5
	// Variables
	Definir dim,m,fil,col,inicio,final,sum,pos Como Entero
	// Inicio 
	dim = 5
	inicio=1
	Final=10
	Dimension m[dim,dim]
	Para col= 0 hasta dim-1  Hacer //Para columnas
		Si col < dim-1 Entonces       // Hacer unicamente para las 4 filas ya que en la 5 se debe sumar
			Para fil= 0 hasta dim-1 hacer // Se repite el proceso para las filas
				
				m[col,fil]= aleatorio(inicio,final) // Se llenan las filas con los valores aleatoriamente 
				Si col < dim-1 Entonces 
					Escribir "[",m[col,fil],"]" Sin Saltar //Se llenan los valores de las 4 filas
				FinSi
				
			FinPara
		SiNo
		    Para fil= 0 hasta dim-1 Hacer  // Este es para llenar la ultima fila, sumando las columnas.
				
				Para pos=0 Hasta dim-1 Hacer // La posicion es por filas, 0-4
					sum=sum + m[pos,fil]       //Se suman las columnas y las filas se mantienen 
				FinPara
				Escribir "[",sum,"]" Sin saltar
				sum=0            // Se reinicia el valor de la suma de cada columna para que no se sume con el siguiente valor
				
			FinPara
		FinSi 
		inicio=inicio+10; // Los valores de inicio y final varian cada vez que se llena una fila.
		final=final+10;   // Los valores siguen el patron que van de 10 en diez en cada fila. 
		Escribir "";
		
	FinPara
	
FinAlgoritmo







