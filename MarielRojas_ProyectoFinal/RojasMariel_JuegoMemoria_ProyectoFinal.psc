//********************************
//Mariel Daniela Rojas Sánchez   
//Módulo Lógica Computacional    
//Proyecto Final                 
//Juego de memoria
//Agosto, 2022
//********************************

Algoritmo JuegoMemoria
	
	//DEFINICION VARIABLES
	Definir dim,num,jugadorNombre,jugadorCompu,fil, col,contador,contador2,totalmazo, vector,i,j,cart1,cart2,ele,ele1 Como Entero
	Definir posicion,seleccionCartas,difi,cantiCartas,mazoCompleto,revolMazo,cartaAzar,iniciatur Como Entero
	Definir bandera Como Logico
	Definir cartas,nombre Como Caracter
	
	//INICIO
	
	Escribir ""
	Escribir " ****************************************************************************************"
	Escribir "                                ¡JUEGO DE MEMORIA!"
	Escribir " ****************************************************************************************"
	Escribir ""
	Escribir " Digite su Nombre"
	Leer nombre
	Escribir " Seleccione la dificultad con la que desea jugar"
	Escribir ""
	//Se escoge la dificultad del juego.
	Escribir " 1-Nivel fácil, con 5 parejas."
	Escribir ""
	Escribir " 2-Nivel intermedio, con 9 parejas."
	Escribir ""
	Escribir " 3-Nivel difícil, con 13 parejas."
	Leer difi
	
	Segun difi
		1:  cantiCartas=5
			Inicio("Elegiste el nivel fácil","con 5 parejas por descubrir")
		2:  cantiCartas=9
			Inicio("Elegiste el nivel Intermedio","con 9 parejas por descubrir")
		3:  cantiCartas=13
			Inicio("Elegiste el nivel difícil","con 15 parejas por descubrir")
		De Otro Modo: Escribir "Número equivocado"
	FinSegun
	
	totalMazo = cantiCartas*2
	Escribir totalMazo
	
	//DIMENSION MATRICES Y VECTORES
	dim=13
	Dimension cartas[dim]
	Dimension posicion[dim]
	Dimension seleccionCartas[cantiCartas] // Se selecciona el limite de cartas que el usuario eligió
	Dimension mazoCompleto[totalMazo] //Se crea el mazo, donde este se multiplica *2 el nivel seleccionado, si son 5 parejas, seria 5*2, si son 9 parejas serian 9*2
	Dimension revolMazo[totalMazo] //Se revuelven los vectores para que las cartas nunca tengan el mismo valor y el usuario no sepa como ganar.
	

	// Los vectores se identifican con Países para escoger las parejas.
	//Nivel Fácil
	cartas[0]="USA" ; cartas[1]="MEXICO" ; cartas[2]="CANADA"  ; cartas[3]="COLOMBIA" ; cartas[4]="ITALIA" ;
	//Nivel Intermedio
	cartas[5]="RUSIA" ; cartas[6]="FRANCIA" ; cartas[7]="PANAMA"  ; cartas[8]="CHINA" ;
	//Nivel dificil
	cartas[9]="IRAN" ; cartas[10]="BRASIL"  ; cartas[11]="SUIZA" ; cartas[12]="JAPON" ;
	
	
	
	//Se crea un vector con las posiciones 
	//Esto para que el usuario elegiga las posiciones 
	//Nivel fácil
	posicion[0]=1 ; posicion[1]=2 ; posicion[2]=3 ; posicion[3]=4 ; posicion[4]=5;
	//Nivel Intermedio
	posicion[5]=6 ; posicion[6]=7 ; posicion[7]=8 ; posicion[8]=9;
	//Nivel dificil
	posicion[9]=10 ; posicion[10]=11 ; posicion[11]=12 ; posicion[12]=13 ;
	

	//INICIO
	Para fil=0 Hasta cantiCartas-1
		seleccionCartas[fil]=posicion[fil] //La cantidad de cartas elegidas se iguala al vector que contiene las posiciones.
	FinPara
	
	//Se llena el vector con los valores de los vectores, que contienen las cartas y el de las posiciones
	Para fil=0 Hasta totalMazo - 1 Hacer
		Si contador > cantiCartas -1 Entonces
			contador = 0
		FinSi
		mazoCompleto[fil]=seleccionCartas[contador] //Se crea el mazoCompleto que duplica la cantidad de cartas que fueron seleccionadas
		contador = contador + 1		
	FinPara
	
	// Se revuelven las cartas
	contador=0
	Repetir
		//Crea las cartas aleatorias
		cartaAzar=Aleatorio(1,totalmazo)
		
		Repetir
			Si revolMazo[contador2] = cartaAzar //Busca los valores repetidos si hay repetidos bandera se pone en verdadero
				bandera = Verdadero //Encontró una carta repetida
			FinSi
			contador2 = contador2 + 1
		Hasta Que contador2 >= totalMazo o bandera == Verdadero //No hay repetidas
		
		Si bandera==Falso Entonces //Cuando bandera es falso significa que no hay repetidos
			revolMazo[contador] = cartaAzar
			
			contador = contador+1 //Si no hay repetidos se guarda la posicion en el primer contador
		SiNo
			bandera =Falso
		FinSi
		
		contador2 = 0 
	Hasta Que contador >= totalMazo
	
	Escribir " Seleccione un número para destapar las cartas." Sin Saltar
	Escribir "" 
	
    iniciaTur= Aleatorio(1,2)
	Repetir
		
		Para fil=0 Hasta totalMazo-1 Hacer
			
			Si fil+1 == ele
				Escribir "[" cartas[mazoCompleto[revolMazo[fil]-1]-1] "]" Sin Saltar
				cart1 = mazoCompleto[revolMazo[fil]-1] //Guarda el valor de mazoCompleto y el mazo revuelto en cartas1 
			SiNo
				Si fil+1 == ele1
					Escribir "[" cartas[mazoCompleto[revolMazo[fil]-1]-1] "]" Sin Saltar;
					cart2 = mazoCompleto[revolMazo[fil]-1] //Guarda el valor de mazoCompleto y el mazo revuelto en cartas2
				SiNo
					Escribir "[ ",fil+1," ]" " " Sin Saltar //Imprime el vector con las posiciones para el usuario
				FinSi
			FinSi
		FinPara
		
		//Si encuentra una pareja se le suman puntos a quien la encuentre
		Si cart1 == cart2 y cart1 <> 0 Entonces 
			Si iniciatur = 1
				jugadorNombre=jugadorNombre+1
			SiNo
				jugadorCompu=jugadorCompu+1
			FinSi
		FinSi
		
		// Si el usuario que inicio el juego 
		Si iniciatur == 1 Entonces
			Si cart1 == cart2 y cart1 <> 0 Entonces //Si se encuentra una pareja entonces vuelve a jugar
				iniciatur = 1
			sino 
				iniciatur = 2 //Si no se una pareja entonces sigue jugando el otro jugador
			FinSi
		SiNo
			Si iniciatur = 2 Entonces
				Si cart1 == cart2 y cart1 <> 0 //Si se encuentra una pareja entonces vuelve a jugar
					iniciatur = 2
				SiNo
					iniciatur = 1 //Si no encuentra parejas, continua el otro jugador
				FinSi
			FinSi
		FinSi
		
		Escribir ""
		Escribir ""
		Escribir "Los puntos de " nombre " son :" jugadorNombre
		Escribir "Los puntos de la computadora :" jugadorCompu
		
		Escribir ""
		si iniciatur = 1 Entonces
			
			Escribir ""
			Escribir "Turno de " nombre
			Escribir "Seleccione la primera carta que desee descubrir"
			Leer ele
			Escribir "Seleccione la segunda carta que desee descubrir"
			Leer ele1
		SiNo
			Escribir ""
			Escribir "Turno de la computadora"
			Escribir "Seleccione la primera carta que desee descubrir"
			Leer ele
			Escribir "Seleccione la segunda carta que desee descubrir"
			Leer ele1
		FinSi
		
	Hasta Que fil = canticartas
	

FinAlgoritmo
//Subproceso que escribe cual nivel de dificultad eligio el usuario.
SubProceso Inicio(text, text1)
	Definir n Como Entero
	Escribir text
	Borrar Pantalla
	Escribir ""
	Escribir ""
	Escribir text1
	
	Repetir
		Escribir "******************************************************"
		Escribir " Presione un número del 1 para iniciar el juego  "
		Escribir "******************************************************"
		leer n
		Si n <> 1  Entonces
			Escribir " Número ingresado Invalido "
		FinSi
	Hasta Que n=1
FinSubProceso



	




