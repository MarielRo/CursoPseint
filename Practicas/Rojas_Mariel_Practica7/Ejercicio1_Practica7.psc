//Mariel Rojas 

Algoritmo NumeroRepetido
	
	//Variables
	Definir i,v,conta,num,dim como entero
	
	//Inicio 
	dim=30
	Dimension v[dim]
	Para i= 0 hasta dim-1 Hacer      
		v[i] = azar(10) +1 // Se le asignan al vector aleatoriamente 30 numeros del 1 al 99.
	FinPara
	
	Para i= 0 hasta dim-1 Hacer      
		Escribir "[",v[i],"]" Sin Saltar  //Imprimir al azar los valores del vector 
	FinPara
	Escribir " "

	conta = 0 // Contador va a valer 0 en la primera vuelta
	num = 0 
	Para num=1 hasta 10 Con Paso 1 Hacer     // Numero del 1 al 10 que se repiten 
		Para i=0 Hasta dim-1 Con Paso 1 Hacer
			Si v[i] = num Entonces            // Cuando el vector sea igual al numero 
				conta = conta + 1             // Guardar el valor de cuantas veces el numero se repite 
			FinSi                             // Cuando i sea igual a 29, ya se acabo el ciclo para un numero
			si i= dim-1 entonces                //  entonces imprimir cuantas veces se repitio 
				Escribir" El numero " ,num, " se repite ", conta, " veces "	
				conta = 0  // El valor de conta se tiene que reiniciar en cada vuelta 
			FinSi          // para que no se sume con el valor de la vuelya anterior
		FinPara
	FinPara
FinAlgoritmo