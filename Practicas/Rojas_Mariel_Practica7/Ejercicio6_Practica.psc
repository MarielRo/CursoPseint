//Mariel Rojas

Algoritmo NumerosAleatorios
	//Variables
	Definir dim,v,i,pos,aux,may,men como entero
	
	
	//Inicio 
	dim=15
	may= 0
	men= 15
	
	Dimension v[dim] //Dimension vector

	Para i=1 hasta dim-1 Hacer 
		v[i] = Aleatorio(1,15)
	FinPara
	
	Para i=1 hasta dim-1 Hacer
		aux = v[i]
		pos=i-1
		mientras pos>=0 y v[pos] > aux Hacer
			v[pos+1]=v[pos]
			pos=pos-1
		FinMientras
		v[pos+1]=aux
		
	FinPara
	
	Para i=1 hasta dim-1 Hacer
		Escribir "[",v[i],"]" Sin saltar
	FinPara
	Escribir ""


	//	Mientras  Hacer
	//		Si centro > 10  Entonces 
	//			centro = trunc((may + alto)/2)
	//		FinSi
	//	FinMientras
	//
	//	Escribir centro

	
FinAlgoritmo
