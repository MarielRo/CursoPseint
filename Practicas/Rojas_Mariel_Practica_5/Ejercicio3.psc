Algoritmo SerieFibonacci
	//Variables
Definir numero,contador,acumulador Como Entero  
	acumulador = 0
	contador = 0 
	//Inicio
	Escribir "Digite un numero"
	leer numero
	Escribir  "Serie:"
	repetir 
		contador = contador +1              //0+1     1+1
		acumulador = acumulador + contador //0=0+1    1+2
		Escribir "     ", contador,"+" 
	Hasta Que acumulador >= numero 
	
	Si numero = acumulador 
		Escribir "     = ",acumulador
		Escribir "El numero indicado coincide con la serie "
	Sino 
		Si  acumulador > numero
			Escribir "El numero indicado sobrepasa, la serie es ",  acumulador 
		FinSi	
	FinSi
	
FinAlgoritmo