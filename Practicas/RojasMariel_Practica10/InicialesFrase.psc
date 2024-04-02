// Mariel Rojas
// Ejercicio 3, Práctica 10

Algoritmo InicialesFrase
	//Definen variables
	Definir frase Como Caracter
	// se llaman las entrada de Argumentos para imprimir
	Solicitar(Frase)
	Iniciales(Frase)
FinAlgoritmo

SubProceso Solicitar(Frase Por Referencia)
	Escribir "Digite una frase deseada"
	Leer frase
FinSubProceso

SubProceso Iniciales(frase Por Referencia)
	Definir i,x,tam Como Entero
	tam = Longitud(Frase)
	x=0
	Para i = 0 Hasta tam Con Paso 1 Hacer //Para posicion hasta el tamaño de la palabra
		Si i = 0 Entonces
			Escribir Subcadena(Frase,i,i) Sin Saltar //Si la posicion se encuentra en cero, (1), entonces imprimir lo que este en esa posicion.
		Sino
			Si Subcadena(Frase,i,i) == " "  //Si la subcadena tiene mas de dos palabras,las que esten despues del espacio se guardan en x=1
				x=1                         //Se almacenan las iniciales que esten despues del espacio.
			Sino 
				Si x=1 Entonces          //Si x=1, entonces se imprime las iniciales dde la frase
					Escribir " " Subcadena(Frase,i,i) Sin Saltar 
					x=0 //Se reinicia el proceso 
				FinSi
			FinSi
		FinSi
	FinPara
	Escribir " "
FinSubProceso
