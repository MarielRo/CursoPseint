//********************************
//Instituto Nacional Aprendizaje
//Mariel Rojas Sanchez 
//Proyecto Final
//Cifrado Texto-Playfair
//Agosto 2022
//********************************


Algoritmo CifradoPlayfair
	
	//Variables Algoritmo Principal
	Definir nume,dim,filaA, filaB, colA, colB,fil1,fil2,col1,col2,fi1,fi2,co1,co2  Como Entero
	Definir clave,alfabeto,text,matrizA,Abc,claveAbc,text1 Como Caracter
	Definir bandera Como Logico
	dim=5
	//Dimension de la matriz
	Dimension matrizA[dim,dim]
	
	//Se crea un Menú para poder escoger si desea cifrar o descifrar
	Repetir
		Escribir "1-Presione 1 si desea cifrar un mensaje"
		Escribir "2-Presione 2 si desea descifrar una mensaje"
		Escribir "3-Presione 3 para salir"
		Leer nume
		Segun nume
			1:  Escribir " " "*********"
				Escribir " " " Cifrado "
				Escribir " " "*********"
				Datos(" Digite la clave.", clave)  //Se llama el subproceso para ver la clave ingresada
				Datos(" Digite el mensaje que desea cifrar,",text) //Se llama el subproceso para ver el mensaje por cifrar
				Bandera = Falso //Se inicializa bandera en falso para que haga el proceso de cifrado cuando el usuario digite esa opcion 
				Matriz(clave,text,matrizA,bandera) //Se llama el subproceso encargado de llenar la matriz con la clave+abecedario
			2:
				Escribir " " "*************"
				Escribir " " " Descifrado "
				Escribir " " "*************"
				Datos(" Digite el mensaje que desea descifrar.",text)//Se llama el subproceso para ver el mensaje por descifrar
				Datos("Digite la clave para descifrar.", clave)//Se llama el subproceso para ver la clave ingresada
				Bandera = verdadero //Se inicializa bandera en verdadero para que haga el proceso de cifrado cuando el usuario digite esa opcion
				Matriz(clave,text,matrizA,bandera) //Se llama el subproceso encargado de llenar la matriz con la clave+abecedario
			3:
				Escribir " Haz salido del programa."
				
			4: De Otro Modo:
				Escribir " Haz digitado un número invalido, por favor digite un numero del 1 al 3."
		FinSegun
	Hasta Que nume=3
	
	
FinAlgoritmo


//Este subproceso se encarga de solicitarle la clave y el mensaje al usuario, los lee y se imprime en pantalla
SubProceso Datos(text, clave Por Referencia) //Se hace por referencia para poder utilizarlo,como es por referencia se puede cambiar su valor para el descifrado
	Escribir text
	Leer clave
	clave=Mayusculas(clave) //La clave es necesario pasarla a mayuscula para usarla en la matriz
FinSubProceso

//Esta funcion se encarga de eliminar las letras repetidas de la clave ingresada.
Funcion repetidas = LimpiarClave(clave)
	//Variables
	Definir tamannio,fil, cont1 Como Entero
	Definir repetidas,palabra,analizaLetra,analizadas Como Caracter
	
	Repetir
		
		palabra=Subcadena(clave,cont1,cont1) // Se almacena cada una de las letras de la clave
		analizaLetra = analizaLetra + palabra //Se guarda palabra y las letras 
		tamannio = cont1 //El contador se inicializa como el valor del tamaño de la clave
		//Al tamaño se le suma uno para que no inicie en cero y se va verificando cada letra de la clave
		Para fil=tamannio + 1 Hasta Longitud(clave)  //Cambia en longitud y la fila se va incrementando
			
			Si palabra <> Subcadena(clave,fil,fil)  Entonces //Si la letra no se encuentra en la subcadena entonces se guarda en analizadas
				analizadas = analizadas+ Subcadena(clave,fil,fil) // Se guardan las letras que ya fueron analizadas y no se repiten
			FinSi
			
		FinPara
		
		clave = analizaLetra + analizadas //Se acumulan las letras por analizar y las analizadas
		analizadas = "" //Se reinicia para que el siguiente ciclo no vaya sucio.
		cont1 = cont1 + 1//Incrementa el contador una unidad
		
	Hasta Que cont1 >= Longitud(clave)
	
	analizaLetra= "" //Se limpia 
	analizadas = "" //Se limpia 
	cont1= 0 //Inicializa contador
	Repetidas=clave 
	
FinFuncion

//Esta funcion se encarga de eliminar las letras repetidas del abecedario y de la clave
Funcion repetidas1 = LimpiarTodo(clave)
	Definir tamannio1,fil, cont2 Como Entero
	Definir repetidas1,palabra1,analizaLetra1,analizadas1,abcedario,claveAbc  Como Caracter
	
	abcedario= "ABCDEFGHIKLMNOPQRSTUVWXYZ"//Abecedario completo, sin la J que equivale a I, la Ñ equivale a N. 
	abcedario  = Mayusculas(abcedario ) //Convierte a mayuscula (por si acaso)
	
	claveAbc = clave + abcedario  // Se concatena la clave y el abecedario 
	//Se limpia la clave + el abecedario, para luego meter todo en la matriz.
	Repetir
		
		palabra1 = Subcadena(claveAbc,cont2,cont2) // // Se almacena cada una de las letras de la clave y el abecedario
		analizaLetra1 = analizaLetra1 + palabra1  //  //Se guarda palabra y las letras 
		tamannio1 = cont2 //El contador se inicializa como el valor del tamaño de la clave
		
		Para fil = tamannio1+1 Hasta Longitud(claveAbc) Con Paso 1 Hacer //Al tamaño se le suma uno para que no inicie en cero y se va verificando cada letra de la clave
			
			si palabra1  <> Subcadena(claveAbc,fil,fil)  Entonces //Si la letra no se encuentra en la subcadena entonces se guarda en analizadas
				analizadas1 = analizadas1+ Subcadena(claveAbc,fil,fil) // Se guardan las letras que ya fueron analizadas y no se repiten
			FinSi
			
		FinPara
		
		claveAbc = analizaLetra1 + analizadas1 //Se acumulan las letras por analizar y las analizadas
		analizadas1 = "" //Se limpia 
		cont2 = cont2 + 1 //Incrementa el contador una unidad
		
	Hasta Que cont2 >= Longitud(claveAbc)
	repetidas1 = claveAbc // Variable que se puede retornar
FinFuncion

// Se verifica si existe una Ñ, un espacio en blanco o si es J o I
Funcion sustitucion = Sustituir(text)  
	
	//Variables
	Definir fil,col,cont,tamanio Como Entero
	Definir  auxiliar,sustitucion Como Caracter
	Definir bandera Como Logico
	tamanio=Longitud(text) //tamaño del mensaje
	
	Repetir
		Si cont > 0 Entonces // Mayor a 2 para restarle 1 al contador y que quede en la posicion 1 y no en '1
			//Cont-1 -> letra anterior == cont -> letra actual
			Si Subcadena(text, cont-1,cont-1) == Subcadena(text, cont,cont) //Si existen dos letras seguidas iguales, se le agrega una x entre ellas
				auxiliar = auxiliar + "X" //Si no existen letras repetidas, una Ñ, o J el auxiliar queda vacio y no se realiza nada
			FinSi
		FinSi
		Si Subcadena(text, cont,cont) == "Ñ"  // Si existe una Ñ en el mensaje, se sustituye por una N
			auxiliar= auxiliar+ "N"
		SiNo
			Si Subcadena(text, cont,cont) == " " // Si existe un espacio vacio en el mensaje, se sustituye por una N
				auxiliar = auxiliar+ ""
			SiNo
				Si Subcadena(text, cont,cont) == "J" // Si existe una J en el mensaje, se sustituye por una N
					auxiliar = auxiliar + "I"
				SiNo
					auxiliar = auxiliar + Subcadena(text, cont,cont) //Si no existen letras repetidas, una Ñ, o J el auxiliar queda igualado a la palabra y no se realiza nada
				FinSi
			FinSi
		FinSi
		cont = cont +1 //Aumenta contador una unidad
	Hasta Que cont >= Longitud(text)
	
	text = auxiliar //El texto se iguala al auxiliar 
	Si (Longitud(text)mod 2 <> 0) //Si el texto por cifrar es impar entonces se le agrega una X al final.
		text = text+ "X"
	FinSi
	
	sustitucion = text
FinFuncion

//Este SubProceso se encarga de llenar la matriz con la clave y el abecedario,ademas la imprime en pantalla.
SubProceso Matriz(clave,text,matrizA,bande)
	//Variables 
	Definir i,n,dim,posicion,fil,col,conta,tamanio,filaA,colA,filaB,colB,posFilaA, posFilaB, posColumA, posColumB Como Entero
	Definir abcd,abcedario,claveAbc,letra1,letra2,text1 como Caracter

	abcd= LimpiarTodo(clave) //Llama la funcion anterior 
	dim = 5 //Dimension de la matriz
	posicion=0 //Posicion se incializa en cero

	Escribir ""
	Escribir " Matriz completa con la clave que haz digitado" 
	Para fil=0 Hasta dim-1 Hacer
		Para col=0 Hasta dim-1 Hacer
			abcedario = Subcadena(abcd,posicion,posicion) // clave + abecedario se le saca la subcadena
			matrizA[fil,col] = abcedario //Se iguala la matriz con la clave + el abecedario
			Escribir " " "[" matrizA[fil,col] "]" "" Sin Saltar//Imprime la matriz llena 
			posicion = posicion+1//Posicion aumenta una unidad cada vuelta
		FinPara
		Escribir ""
	FinPara
	posicionar(text,matrizA,bande) //Llama la funcion posicionar
FinSubProceso


//Esta funcion se encarga de determinar las posiciones de cada letra en la matriz
Funcion posicionar(text,matrizA,bandera1)
	//Variables
	Definir i,dim,posicion,n,fil,col,conta,tamanio,filaA,colA,filaB,colB,fil1,fil2,col1,col2,fi1,fi2,co1,co2 Como Entero
	Definir abcd,abcedario,claveAbc,letra1,letra2,text1,clave,acumulador1,acumulador2 Como Caracter
	n=5 //******** 
	text1= Sustituir(text) //Llama la funcion de sustitucion
	tamanio=Longitud(text1) // Tamaño del mensaje 
	col=0
	fil=0
	
	Para i=0 Hasta tamanio-1 Hacer
		conta=conta+1
		Si conta == 1  Entonces //Toma la primer letra de la palabra y se repite hasta el tamaño de la palabra
			letra1=Subcadena(text1,i,i)
		SiNo
			Si conta == 2 Entonces //Toma la segunda letra de la palabra y se repite hasta el tamaño de la palabra
				letra2 = Subcadena(text1,i,i) 
				Repetir
					
					Repetir
						Si MatrizA[fil,col] == letra1 Entonces //La primer letra se iguala a la matriz para sacar su posicion
							filaA = fil
							colA = col
							//Escribir letra1
						SiNo
							Si MatrizA[fil,col] == letra2  Entonces //La segunda letra se iguala a la matriz para sacar su posicion
								filaB = fil
								colB = col
							FinSi
						FinSi
						
						col = col+ 1 // Se incrementa la posicion de la columna para seguir con la otra letra
						
					Hasta Que col >= n
					
					col = 0 // // Se reinicia la posicion para que no se acumule en la siguiente vuelta
					fil = fil+1// Se incrementa la posicion de la fila para seguir con la otra letra
					
				Hasta Que  fil >= n
				fil = 0 // Se reinicia la posicion de la fila para que no se acumule en la siguiente vuelta
			FinSi
			
			//Aqui se llaman los SubProceso de cifrado y descifrado
			Si bandera1 = Falso Entonces
				CifrarText(matrizA,text,filaA,colA,filaB,colB,fil1,fil2,col1,col2)
			SiNo
				DescifrarText(matrizA,text,filaA,colA,filaB,colB, fi1,fi2,co1,co2)
			FinSi
			//Se concatena cada una de las letras de la palabra que ya fueron posicionadas
			acumulador1 = acumulador1+matrizA[fil1,col1]+matrizA[fil2,col2]
			acumulador2 = acumulador2+matrizA[fi1,co1]+matrizA[fi2,co2]
		FinSi
		
		Si conta >= 2 Entonces //El contador va revisando letras de dos en dos por lo que si es mayor a dos, se reinicia a cero
			conta = 0;
		FinSi
		
	FinPara
	//Se imprime en pantalla el mensaje cifrado o descifrado
	Si bandera1 = Falso Entonces
		Escribir "El mensaje secreto que haz cifrado es : " acumulador1
	SiNo
		Escribir "El mensaje secreto que haz descifrado es : " acumulador2
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
	Si filaA = filaB Entonces //Si las filas son iguales, entonces 
		
		Si colA = n-1  // Se verifica si las letras estan en la última posicion de la columna
			poscolA = 0 // si estan entonces se reinicia la columna a cero
		SiNo
			posColA = colA+1 //Si no se mueve una columna
		FinSi
		
		Si colB = n-1 // Se verifica si las letras estan en la última posicion,
			posColB = 0 // si estan entonces se reinicia la columna a cero
		SiNo
			posColB = colB+1 //Si no se mueve una columna
		FinSi
		posColA = colA //Se iguala el valor de la columna con el de la posicion nueva de la columna
		posColB = colB //Se iguala el valor de la columna con el de la posicion nueva de la columna
	SiNo
		
		Si colA == colB Entonces //Se verifican las columnas, entonces se mueven las filas
			
			Si filaA == n-1 // Se verifica si las letras estan en la última posicion de la fila
				posFilaA = filaA-1 // si estan entonces se reinicia la fila
			SiNo
				posFilaA = filaA+1	//Si no se avanza una fila
			FinSi
			
			Si  filaB == n-1 // Se verifica si las letras estan en la última posicion de la fila
				posFilaB = filaB-1 // si estan entonces se reinicia la fila
			SiNo
				posFilaB = filaB+1 //Si no se avanza una fila
			FinSi
		FinSi
		
		posfilaA=filaA //Se iguala el valor de la fila con el de la posicion nueva de la fila
		posfilaB=filaB //Se iguala el valor de la fila con el de la posicion nueva de la fila
	FinSi
	
	Si filaA <> filaB y colA<>colB  Entonces //Si las letras comparadas no estan en la misma fila ni columna se hace el metodo de la diagonal.
		posColA = colB    // El valor nuevo de la columna de la letra 1 es igual al valor de la columna donde estaba la letra 2 
		posFilaA = filaA  // El valor nuevo de la fila de la letra 1 es igual al valor de la fila donde estaba la letra 1
		posColB = colA    // El valor nuevo de la columna de la letra 2 es igual al valor de la columna donde estaba la letra 1 
		posFilaB = filaB // El valor nuevo de la fila de la letra 2 es igual al valor de la fila donde estaba la letra 2
		
	FinSi
	//Se igualan los nuevos valores para ser llamados arriba
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
		Sino	
			posColA = colB    
			posFilaA = filaA
			posColB = colA   
			posFilaB = filaB
		FinSi
		
		posfilaA=filaA
		posfilaB=filaB 	
		
	FinSi
	

	fi1 = posFilaA
	co1 = poscolA
	fi2 = posFilaB
	co2 = poscolB
	
FinSubProceso