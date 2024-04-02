//Mariel,Daniel y Manfred.
//Ejercicio7
//Desechar cartas

Algoritmo Ejercicio7
	//Declarar variables
	Definir i,j,conta,naipe Como Entero
	Definir num Como Logico
	
	//Inicio 
	naipe = 52
	conta = 0 //Contabiliza las cartas que se muestran 
	j=0
	num= Falso
	
	
	Mientras num = Falso
		i= 1 + azar(13) //Azar 13 porque son las cartas de un mismo simbolo en el naipe A=1...J=11,Q=12,K=13
		Escribir i
		Si i >= naipe
			i=0
		FinSi
		
		Segun i hacer 
			1: naipe = naipe -1 //Se resta el número de cartas que muestra la carta volteada
				conta = conta + 1 // Se contabilizan las cartas que se muestran
				j = j + i         //Las cartas que restan
			2: naipe = naipe -2
				conta = conta + 1
				j = j + i
			3: naipe = naipe -3
				conta = conta + 1
				j = j + i
			4: naipe = naipe -4
				conta = conta + 1
				j = j + i
			5: naipe = naipe -5
				conta = conta + 1
				j = j + i
			6: naipe = naipe -6
				conta = conta + 1
				j = j + i	
			7: naipe = naipe -7
				conta = conta + 1
				j = j + i
			8: naipe = naipe -8
				conta = conta + 1
				j = j + i
			9: naipe = naipe -9
				conta = conta + 1
				j = j + i
			10: naipe = naipe -10
				conta = conta + 1
				j = j + i
			11: naipe = naipe -11
				conta = conta + 1
				j = j + i
			12: naipe = naipe -12
				conta = conta + 1
				j = j + i
			13:naipe = naipe -13
				conta = conta + 1
				j = j + i
			De Otro Modo:
				num = verdadero
		FinSegun
	FinMientras
	
	Escribir "Se mostraron " conta " cartas"
	Escribir "Se desecharon " j " cartas"
	Escribir "Sobraron " naipe " cartas"
	
FinAlgoritmo
