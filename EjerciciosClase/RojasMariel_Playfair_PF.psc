Algoritmo CifradoPlayfair
	
	//VARIABLES PRINCIPALES
	Definir num,dim,filaA, filaB, colA, colB,fil1,fil2,col1,col2,fi1,fi2,co1,co2  Como Entero
	Definir clave,alfabeto,text,matrizA,Abc,claveAbc,text1 Como Caracter
	Definir bandera Como Logico
	dim=5
	//DIMENSIONES
	Dimension matrizA[dim,dim]
	
	//Se crea el menú de opciones para el cifrado y descifrado
	Repetir
		Escribir "Presione 1 si desea cifrar un mensaje"
		Escribir "Presione 2 si desea descifrar una mensaje"
		Escribir "Presione 3 para salir"
		Leer num
		Segun num
			1:  Escribir " " "*********"
				Escribir " " " Cifrado "
				Escribir " " "*********"
				//Se llama a la funcion que lee la clave ingresada
				Datos("Digite la clave", clave) 
				//Se llama a la funcion que lee el texto ingresado
				Datos("Digite el mensaje que desea cifrar",text)
				Bandera = Falso
				Matriz(clave,text,matrizA,bandera) 
			2:
				Escribir " " "*************"
				Escribir " " " Descifrado "
				Escribir " " "*************"
				Datos("Digite el mensaje que desea descifrar",text)
				Datos("Digite la clave para descifrar", clave)
				Bandera = verdadero
				Matriz(clave,text,matrizA,bandera) 
			3:
				Escribir "Haz salido del programa"
				
		FinSegun
	Hasta Que num=3
	
	
FinAlgoritmo


//Solicita datos, de la clave y el mensaje.
SubProceso Datos(text, clave Por Referencia) //Por referencia para utilizarlo en el Algoritmo principal
	Escribir text
	Leer clave
	// La clave o texto ingresado pasará a mayuscula si es que el usuario la ha ingresado en minuscula 
	clave=Mayusculas(clave) 
FinSubProceso


Funcion repetidas = LimpiarClave(clave)
	//Se definen las variables que se van a utilizar dentro de la funcion 
	Definir tamannio,fil, cont1 Como Entero
	Definir repetidas,palabra,analizaLetra,analizadas Como Caracter
	
	//Limpia la clave 
	Repetir
		
		palabra=Subcadena(clave,cont1,cont1) // se almacena cada una de las letras de la clave
		
		//Letras  a comparar
		//  letrasComparar almacenan las letras que se van a comparar, guarda lo que tiene letrasComparar más lo que tiene letter
		
		analizaLetra = analizaLetra + palabra //Se guarda palabra y las letras 
		
		tamannio = cont1
		
		Para fil=tamannio + 1 Hasta Longitud(clave)  //Cambia en longitud y la fila se va incrementando
			
			Si palabra <> Subcadena(clave,fil,fil)  Entonces 
				analizadas = analizadas+ Subcadena(clave,fil,fil) // Se guardan las letras que ya fueron comparadas en analizadas
			FinSi
			
		FinPara
		
		clave = analizaLetra + analizadas
		analizadas = ""
		cont1 = cont1 + 1
		
	Hasta Que cont1 >= Longitud(clave)
	
	
	//Se limpia lo que esta dentro de las variables.
	
	analizaLetra= "" 
	analizadas = "" 
	cont1= 0
	Repetidas=clave 
	
FinFuncion


Funcion repetidas1 = LimpiarTodo(clave)
	Definir tamannio1,fil, cont2 Como Entero
	Definir repetidas1,palabra1,analizaLetra1,analizadas1,abcedario,claveAbc  Como Caracter
	
	//Escribir clave// Llama a la funcion anterior que contiene la clave sin repetir
	abcedario= "ABCDEFGHIKLMNOPQRSTUVWXYZ"//Abecedario completo 
	
	abcedario  = Mayusculas(abcedario ) //Convierte a mayuscula (por si acaso)
	
	claveAbc = clave + abcedario  // Se concatena la clave y el abecedario 
	//Se limpia la clave + el abecedario, para luego meter todo en la matriz.
	Repetir
		
		palabra1 = Subcadena(claveAbc,cont2,cont2) // En letter se almacena la clave junto con el abecedario
		//Letras  a comparar
		analizaLetra1 = analizaLetra1 + palabra1  //  
		
		tamannio1 = cont2
		
		Para fil = tamannio1+1 Hasta Longitud(claveAbc) Con Paso 1 Hacer
			
			si palabra1  <> Subcadena(claveAbc,fil,fil)  Entonces //  Si letter es diferente de cade1 entonces se guardan las letras que ya fueron comparadas
				analizadas1 = analizadas1+ Subcadena(claveAbc,fil,fil)
			FinSi
			
		FinPara
		
		claveAbc = analizaLetra1 + analizadas1
		analizadas1 = ""
		cont2 = cont2 + 1
		
	Hasta Que cont2 >= Longitud(claveAbc)
	
	repetidas1 = claveAbc // Variable que se puede retornar
	//Escribir claveAbc "hola"
	
FinFuncion

//Se verifica si existe una Ñ, un espacio en blanco o si es J o I
Funcion sustitucion = Sustituir(text)  
	
	//Se definen las variables que se van a utilizar dentro de la funcion 
	Definir fil,col,cont,tamanio Como Entero
	Definir  auxiliar,sustitucion Como Caracter
	Definir bandera Como Logico
	tamanio=Longitud(text)
	
	Repetir
		Si cont > 0 Entonces //Mayor a 2 para restarle 1 al contador y que quede en la posicion 1
			Si Subcadena(text, cont-1,cont-1) == Subcadena(text, cont,cont) //No puede ser cero porque si no se convierte -1
				auxiliar = auxiliar + "X"
			FinSi
		FinSi
		
		// segun Subcadena(text, cont,cont) 
		
		Si Subcadena(text, cont,cont) == "Ñ" 
			auxiliar= auxiliar+ "N"
		SiNo
			Si Subcadena(text, cont,cont) == " " 
				auxiliar = auxiliar+ ""
			SiNo
				Si Subcadena(text, cont,cont) == "J" 
					auxiliar = auxiliar + "I"
				SiNo
					auxiliar = auxiliar + Subcadena(text, cont,cont)
				FinSi
			FinSi
		FinSi
		cont = cont +1
	Hasta Que cont >= Longitud(text)
	
	text = auxiliar
	Si (Longitud(text)mod 2 <> 0) //Si el texto por cifrar es impar entonces se le agrega la x al final.
		text = text+ "X"
	FinSi
	
	sustitucion = text

FinFuncion


SubProceso Matriz(clave,text,matrizA,bande)
	//Se definen las variables que se van a utilizar dentro de la funcion 
	Definir i,dim,posicion,n,fil,col,conta,tamanio,filaA,colA,filaB,colB,posFilaA, posFilaB, posColumA, posColumB Como Entero
	Definir abcd,abcedario,claveAbc,letra1,letra2,text1 como Caracter

	abcd= LimpiarTodo(clave)
	dim = 5
	posicion=0
	n=5
	Escribir ""
	Escribir "Matriz completa con la clave que haz digitado"
	Para fil=0 Hasta dim-1 Hacer
		Para col=0 Hasta dim-1 Hacer
			abcedario = Subcadena(abcd,posicion,posicion)
			matrizA[fil,col] = abcedario 
			Escribir " " "[" matrizA[fil,col] "]" "" Sin Saltar
			posicion = posicion+1
		FinPara
		Escribir ""
	FinPara
	posicionar(text,matrizA,bande)
FinSubProceso



Funcion posicionar(text,matrizA,bandera1)
	
	Definir i,dim,posicion,n,fil,col,conta,tamanio,filaA,colA,filaB,colB,fil1,fil2,col1,col2,fi1,fi2,co1,co2 Como Entero
	Definir abcd,abcedario,claveAbc,letra1,letra2,text1,clave,acumulador1,acumulador2 Como Caracter
	n=5 //********
	text1= Sustituir(text)
	Escribir text1 "hola"
	tamanio=Longitud(text1)
	Escribir tamanio "hola"
	
	col=0
	fil=0
	
	Para i=0 Hasta tamanio-1 Hacer
		
		conta=conta+1
		
		Si conta == 1  Entonces
			
			letra1=Subcadena(text1,i,i)
			
		SiNo
			Si conta == 2 Entonces
				
				letra2 = Subcadena(text1,i,i)
				
				Repetir
					
					Repetir
						Si MatrizA[fil,col] == letra1 Entonces
							filaA = fil
							colA = col
							//Escribir letra1
						SiNo
							Si MatrizA[fil,col] == letra2  Entonces
								filaB = fil
								colB = col
							FinSi
						FinSi
						
						col = col+ 1
						
					Hasta Que col >= n
					
					col = 0
					fil = fil+1
					
				Hasta Que  fil >= n
				fil = 0
			FinSi
			
			Si bandera1 = Falso Entonces
				CifrarText(matrizA,text,filaA,colA,filaB,colB,fil1,fil2,col1,col2)
			SiNo
				Si bandera1= Verdadero Entonces
					DescifrarText(matrizA,text,filaA,colA,filaB,colB, fi1,fi2,co1,co2)
				FinSi
			FinSi
			
			acumulador1 = acumulador1+matrizA[fil1,col1]+matrizA[fil2,col2]
			acumulador2 = acumulador2+matrizA[fi1,co1]+matrizA[fi2,co2]
		FinSi
		
		Si conta >= 2 Entonces
			conta = 0;
		FinSi
		
	FinPara
	Si bandera1 = Falso Entonces
		Escribir "El mensaje secreto que haz cifrado es : " acumulador1
	SiNo
		Si bandera1= Verdadero Entonces
			Escribir "El mensaje secreto que haz descifrado es : " acumulador2
		FinSi
	FinSi

	Escribir ""
FinFuncion


SubProceso CifrarText(matrizA,text,filaA, colA,filaB, colB,fil1 Por Referencia,fil2 Por Referencia,col1 Por Referencia,col2 Por Referencia)
	
	Definir n,tamanio,i,posFilaA, posFilaB, posColA, posColB Como Entero
	Definir cont,text2,clave,acumulador1 Como Caracter
	
	n=5
	text2 = Sustituir(text)
	tamanio=Longitud( text2 )
	//Se realiza el cifrado 
	Si filaA = filaB Entonces //Se verifican las filas, entonces se mueven las columnas
		
		Si colA = n-1 o colB = n-1
			poscolA = 0
			posColB = 0
		SiNo
			posColA = colA+1
			posColB = colB+1
		FinSi
		posColA = colA 
		posColB = colB
	SiNo
		
		Si colA == colB Entonces //Se verifican las columnas, entonces se mueven las filas
			
			Si filaA == n-1 o filaB == n-1
				posFilaA = filaA-1
				posFilaB = filaB-1
			SiNo
				posFilaA = filaA+1	
				posFilaB = filaB+1
			FinSi
		FinSi
		
		posfilaA=filaA
		posfilaB=filaB 
	FinSi
	
	Si filaA <> filaB y colA<>colB  Entonces //Si las letras comparadas no estan en la misma fila ni columna se hace el metodo de la diagonal.
		
		
		posColA = colB    
		posFilaA = filaA
		posColB = colA   
		posFilaB = filaB
		
	FinSi
	
	fil1 = posFilaA
	col1 = poscolA
	fil2 = posFilaB
	col2 = poscolB
	
	
FinSubProceso



SubProceso DescifrarText(matrizA,text,filaA, colA,filaB, colB ,fi1 Por Referencia,fi2 Por Referencia,co1 Por Referencia,co2 Por Referencia)
	
	Definir n,tamanio,i,posFilaA, posFilaB, posColA, posColB Como Entero
	Definir cont,text2,clave,acumulador2 Como Caracter
	
	n=5
	text2 = Sustituir(text)
	tamanio=Longitud( text2 )
	//Se realiza el cifrado 
	Si filaA = filaB Entonces //Se verifican las filas, entonces se mueven las columnas
		
		Si colA = n-1 o colB = n-1
			poscolA = 0
			posColB = 0
		SiNo
			posColA = colA-1
			posColB = colB-1
		FinSi
		posColA = colA 
		posColB = colB
	SiNo
		
		Si colA = colB Entonces //Se verifican las columnas, entonces se mueven las filas
			
			Si filaA = n-1 o filaB = n-1
				posFilaA = filaA-1
				posFilaB = filaB-1
			SiNo
				posFilaA = filaA-1	
				posFilaB = filaB-1
			FinSi
		FinSi
		
		posfilaA=filaA
		posfilaB=filaB 
	FinSi
	
	Si filaA <> filaB y colA <> colB  Entonces //Si las letras comparadas no estan en la misma fila ni columna se hace el metodo de la diagonal.
		
		posColA = colB    
		posFilaA = filaA
		posColB = colA   
		posFilaB = filaB
		
	FinSi
	
	fi1 = posFilaA
	co1 = poscolA
	fi2 = posFilaB
	co2 = poscolB
	
	
FinSubProceso