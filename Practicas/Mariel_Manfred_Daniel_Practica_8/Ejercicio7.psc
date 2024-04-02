//Mariel,Daniel y Manfred.
//Ejercicio7
//Desechar cartas

Algoritmo Ejercicio7
	//Declarar variables
	Definir i,des,conta,naipe Como Entero
	Definir num como logico
	
	//Inicio 
	naipe = 52
	conta = 0 //Contabiliza las cartas que se muestran 
	des=0 //Cartas desechadas 
	num= verdadero
	Repetir 
		i= 1 + azar(13) //i va a tomar numeros del 1 al 13 porque son las cartas de un mismo simbolo en el naipe A=1...J=11,Q=12,K=13
		//Escribir i // i es la carta que se muestra, volteada
		Si i >= naipe 
			i=0
		FinSi
		
		Segun i hacer 
			1: naipe = naipe -2 //Se resta el número de cartas que muestra la carta volteada y la carta volteada
				conta = conta + 1 // Se contabilizan las cartas que se muestran
				des = des + i     //Las cartas que se desechan se van sumando
				
			2: naipe = naipe -3
				conta = conta + 1
				des = des + i
				
			3: naipe = naipe -4
				conta = conta + 1
				des = des + i
				
			4: naipe = naipe -5
				conta = conta + 1
				des = des + i
				
			5: naipe = naipe -6 //1 la volteo, 5 cartas 
				conta = conta + 1
				des = des + i
				
			6: naipe = naipe -7
				conta = conta + 1
				des = des + i	
				
			7: naipe = naipe -8
				conta = conta + 1
				des = des + i
				
			8: naipe = naipe -9
				conta = conta + 1
				des = des + i
				
			9: naipe = naipe -10
				conta = conta + 1
				des = des + i
				
			10: naipe = naipe -11
				conta = conta + 1
				des = des + i
				
			11: naipe = naipe -12
				conta = conta + 1
				des = des + i
				
			12: naipe = naipe -13
				conta = conta + 1
				des = des + i
				
			13:naipe = naipe -14
				conta = conta + 1
				des = des + i
			De Otro Modo:
				num = falso
		FinSegun
	Hasta Que num = falso
	
	Escribir "Se mostraron " conta " cartas"
	Escribir "Se desecharon " des " cartas"
	Escribir "Sobraron " naipe " cartas"
	
FinAlgoritmo