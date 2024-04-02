//Mariel Daniela Rojas Sánchez   
//Módulo Lógica Computacional    
//Proyecto Final                 
//Cifrado de Playfair
//Agosto, 2022
//********************************


Algoritmo CifradoPlayFair
	//DEFINICION VARIABLES
	Definir fila,columna,num,opci,dim Como Entero
	Definir clave,msj,matriz,abece,text Como Caracter
	
	
	
	//DIMENSION MATRICES Y VECTORES
	dim=5
	Dimension matriz[dim,dim] //Se dimensiona la matriz
	abece= "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	

	//INICIO
	Escribir ""
	Escribir " ****************************************************************************************"
	Escribir "                             CIFRADO DE TEXTO - PLAYFAIR                                 "
	Escribir " ****************************************************************************************"
	Escribir ""
	Escribir "       Bienvenido al cifrado y descifrado de Playfair   "
	Escribir "       Este programa se encarga de cifrar o descifrar textos ocultos."
	
	
	Repetir 
		
		Escribir " "
		Escribir "1- Digite 1 para cifrar un texto deseado "
		Escribir "2- Difite 2 para descifrar un texto deseado "
		Escribir "3- Para salir del programa"
		Leer opci
		
		Segun opci Hacer
			1: Escribir "Haz seleccionado la opción de cifrar" 
				IngresarClave(clave)
				IngresarTexto("Ingrese el texto que quiere cifrar",text)
				
			2: Escribir "Haz seleccionado la opción de descifrar" 
				IngresarTexto("Ingrese el texto que quiere descifrar",text)
				IngresarClave(clave)
				
			3: Escribir "Haz salido el Cifrado de Playfair"
				
			4: De Otro Modo:
				Escribir "Número ingresado incorrecto"	
		 FinSegun
	 hasta que opci=3	




	
FinAlgoritmo

Subproceso IngresarClave(clave)
	Escribir "Ingrese la clave que desea utilizar"
	Leer clave
	Si clave= Minusculas(clave)
		clave = Mayusculas(clave)
	FinSi
FinSubProceso

Subproceso IngresarTexto(text1,text)
	Escribir text1
	Leer text
FinSubProceso



