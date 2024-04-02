// Mariel Rojas
// Ejercicio 1, Práctica 10
Algoritmo DivisoresCantidad
	// Definen Variables
	Definir num Como Entero
	// Entrada Argumentos, se llaman
	numDigi(num)
	Escribir Dividir(num),' es la cantidad de divisores que contiene el número ingresado'
FinAlgoritmo

SubProceso numDigi(num Por Referencia) 
	Escribir 'Digite un número deseado para saber la cantidad de sus divisores'
	Leer num // Se lee el número digitado
FinSubProceso

Funcion cantidadDiv = Dividir(num)
	// Definen Variables de la Funcion 
	Definir cantidadDiv,n Como Entero
	cantidadDiv <- 0
	Para n<-1 Hasta num Hacer
		Si (num MOD n=0) Entonces // Si el residuo del número al dividirlo es igual a cero
			cantidadDiv <- cantidadDiv+1 // Se guardan los números que si son divisores
			Escribir ' ',n,' ' Sin Saltar
		FinSi
	FinPara
	Escribir ' '
FinFuncion

