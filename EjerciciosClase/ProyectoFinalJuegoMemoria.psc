//********************************
//Mariel Daniela Rojas Sánchez   
//Módulo Lógica Computacional    
//Proyecto Final                 
//Juego de memoria
//Agosto, 2022
//********************************



Algoritmo JuegoMemoria
	
	Definir dim,num,jugador1,jugador2,fil, col,cont1,cont2 Como Entero
	Definir posicion, VectorCart2,seleccionCartas,difi,longCartas,selecCartas,crearMazo,revolMazo,cartaAzar Como Entero
	Definir bandera1, bandera2 como Logico
	Definir cartas Como Caracter	
	Escribir ""
	Escribir " ****************************************************************************************"
	Escribir "                                ¡JUEGO DE MEMORIA!"
	Escribir " ****************************************************************************************"
	Escribir ""
	Escribir "Seleccione la dificultad con la que desea jugar"
	Escribir ""
	dim=13
	Dimension vecCart[dim]
	Dimension vectorVal[dim]
	

	// Los vectores se identifican con letras del abecedario, para escoger las parejas.
	
	cartas[0]="USA" ; cartas[1]="MEXICO" ; cartas[2]="CANADA"  ; cartas[3]="COLOMBIA" ; cartas[4]="ITALIA" ;
	//Nivel Intermedio
	cartas[5]="RUSIA" ; cartas[6]="FRANCIA" ; cartas[7]="PANAMA"  ; cartas[8]="CHINA" ;
	//Nivel dificil
	cartas[9]="IRAN" ; cartas[10]="BRASIL"  ; cartas[11]="SUIZA" ; cartas[12]="JAPON" ;

	// El vectorCartas, es el vector que el usuario elige, si elige 1, la carta será la carta A
	//Si elige 2 , la carta será la carta B , y así sucesivamente. Luego se revulve todo para que el usuario no se aprenda todo de memoria.
	
	//Nivel fácil
	posicion[0]=1 ; posicion[1]=2 ; posicion[2]=3 ; posicion[3]=4 ; posicion[4]=5;
	//Nivel Intermedio
	posicion[5]=6 ; posicion[6]=7 ; posicion[7]=8 ; posicion[8]=9;
	//Nivel dificil
	posicion[9]=10 ; posicion[10]=11 ; posicion[11]=12 ; posicion[12]=13 ;
	

	//Se escoge la dificultad del juego.
	
	Escribir " 1-Nivel fácil, con 5 parejas."
	Escribir " 2-Nivel intermedio, con 9 parejas."
	Escribir " 3-Nivel difícil, con 13 parejas."
	Leer difi
	
	Segun difi
		1:
			longCartas=5
			EntradaJuego("Elegiste el nivel fácil")
		2:
			longCartas=9
			EntradaJuego("Elegiste el nivel Intermedio")
		3:
			longCartas=13
			EntradaJuego("Elegiste el nivel Difícil")
		De Otro Modo: Escribir "Número equivocado"
	FinSegun
	
	// SelecCartas es es limite de cartas seleccionadas
	//Se crea el mazo, si son 
	Dimension selecCartas[longCartas] , crearMazo[longCartas*2], revolMazo[longCartas*2] // Es el que controla las parejas
	
	Para fil=0 Hasta longCartas-1
		selecCartas[fil]=posicion[fil] 
	FinPara
	//   10*9  = 5 *4
	//longCartas*2 duplica la cantidad de cartas seleccionadas, ejem:5=10
	//El para principal es el que crea el mazo, el mazo se crea duplicando la cantidad de cartas seleccionadas
	//Ej 01234   01234  12345 678910     310945
	//la primera secuencia 01234 representa las posiciones del primer vector y la segunda secuencia representa las posciciones del segundo vector
	//Luego se llena el vector crearMazo con esos valores
	Para fil=0 Hasta (longCartas*2) - 1 Hacer
		Si cont1 > longCartas -1 Entonces
			cont1=0
		FinSi
		crearMazo[fil]=selecCartas[cont1]
		cont1 = cont1 + 1		
	FinPara
	
	//Revuelve las cartas posiciones i =  12345678910
	//El contador 1 da las vueltas externas
	//El contador 2 da las vueltas internas
	//Aqui se revuelve el mazo 
	
	// Se revuelven las cartas
	cont1=0
	Repetir
		//Crea las cartas aleatorias
		cartaAzar=Aleatorio(1,10)
		
		Repetir
			//Busca los valores repetidos 
			Si revolMazo[cont2] = cartaAzar
				bandera2=Verdadero //Encontró una carta repetida
			FinSi
			cont2=cont2+1
			
			//cuando se sale por contador significa que no hay cartas repetidas
		Hasta Que cont2>=longCartas*2 o bandera2==Verdadero
		
		//Guarda en la posicion del primer contador el valor de la carta aleatoria, simpre y cuando flag1 sea flaso o sea no hay números repetidos
		Si bandera2==Falso Entonces
			revolMazo[cont1]=cartaAzar
           Escribir cont1
		SiNo
			bandera2=Falso
		FinSi
		
		cont2=0 // este reinicia el contador interno
		cont1=cont1+1
	Hasta Que cont1>=longCartas*2-1 
	
	
	Para fil=0 Hasta (longCartas*2) -1 Hacer
		//Comparar vector
		Si fil+1 == 10 Entonces //Para que no empiece en cero.
			
			Escribir "[",vectorVal[vecCart[crearMazo[revolMazo[fil]]]], "]" Sin Saltar
		SiNo
			Escribir fil+1
		FinSi
	FinPara
	
	
FinAlgoritmo

  
SubProceso EntradaJuego(text1)
	Definir numLocal Como Entero
	Escribir text1
	Borrar Pantalla
	Repetir
		Escribir "Presione 1 para iniciar el juego"
		leer numLocal
		Si numLocal <> 1 Entonces
			Escribir "Número ingresado incorrecto"
			
		FinSi
	Hasta Que numLocal=1
	
	

FinSubProceso

