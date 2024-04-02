//Mariel Rojas.
//Ordenar dos vectores con los mismos digitos, pero uno por 
//Para el vector 1 ordenado por método Burbuja.
//Para el segundo vector ordenado por selección.

Algoritmo BurbujaSeleccion 
	
	//Variables
	Definir dim,v1,v2,i,j,aux como entero

	//Inicio
	dim=10
	Dimension v1[dim],v2[dim]
	//Primer vector
	Escribir "Vector 1"
	Para i = 0 hasta dim-1 Hacer
		v1[i]  = aleatorio(100,999)
		Escribir "[",v1[i],"]" Sin Saltar
	FinPara
	
	Escribir ""
	//Primer vector se iguala al segundo vector y se imprimen sus valores
	Escribir "Vector 2"
	Para i = 0 hasta dim-1 Hacer
		v2[i]=v1[i]
		Escribir "[",v2[i],"]" Sin Saltar
	FinPara
	
	
	Para i=0 Hasta dim-1-1  Hacer
		//Vector 1- Método Burbuja
		Para j=0 hasta dim-1-i Hacer
			Si j < dim-1 Entonces
				Si v1[j] >  v1[j+1]
					aux = v1[j]
					v1[j] = v1[j+1]
					v1[j+1] = aux
				FinSi
			FinSi
		FinPara
		
		// Vector 2 Ordenamiento por seleccion.
		Para j=i Hasta dim-1 Hacer
			si v2[j] < v2[i]
				aux=v2[i]
				v2[i] = v2[j]
				v2[j]=aux
			FinSi
		FinPara
	FinPara
	Escribir " "
	
	Escribir "Vector 1 Ordenado por el metodo Burbuja"
	Para i = 0 Hasta dim-1 Hacer 
		Escribir "[" v1[i] "]" Sin Saltar   //Imprimir el vector 1 ordenado por burbuja
	FinPara
	Escribir " "

	Escribir " "
	Escribir "Vector 2 Ordenado por metodo de seleccion" 
	Para i = 0 Hasta dim-1 Hacer        
		Escribir "[",v2[i],"]" Sin Saltar  //Imprimir el vector 2 Ordenado por seleccion 
	FinPara
	
FinAlgoritmo
