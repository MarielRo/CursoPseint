// Mariel Rojas
// Ejercicio 4, Práctica 10
Algoritmo NumerosAmistosos
	//Definen Variables
	Definir num1, num2 Como Entero
//Imprimen valores de las funciones 
	PedirNumeros(num1)
	PedirNumeros(num2)
	contarNumeros(num1,num2)
FinAlgoritmo

SubProceso PedirNumeros(num Por Referencia)
	Escribir "Ingrese dos números"
	Leer num
FinSubProceso

SubProceso contarNumeros(num1,num2)
Definir suma, cont Como Entero
	cont=1
	suma=0
	Mientras cont < num1 Hacer
		Si num1 mod cont==0 Entonces //Divisores del primer número
			suma=suma+cont            //Se van sumando los divisores.
		FinSi
		cont=cont+1                   //El contador va contando
	FinMientras
	Si suma = num2 Entonces          //Si la suma es igual a el número 2, entonces son números amistosos
		Escribir "Los números ingresados son amistosos"
	SiNo 
		Escribir "Los números no son amistosos"
	FinSi
	
FinSubProceso


	
	





