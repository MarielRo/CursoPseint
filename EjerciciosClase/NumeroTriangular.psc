//Mariel Rojas
Algoritmo NumeroTriangular
	Definir numero,contador, acumulador Como Entero
	contador=0
	acumulador =0
	
	Escribir "Digite un numero"
	leer numero
	repetir 
		contador = contador +1
		acumulador = acumulador + contador
		escribir acumulador
	Hasta Que acumulador >= numero 
	
	Si numero = acumulador 
		Escribir "El numero es triangular"
	Sino Escribir "El numero no es triangular "	
	FinSi
	
FinAlgoritmo
 