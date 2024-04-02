//Mariel Rojas
//Crear un algoritmo que sea capaz de calcular el área y el perímetro de las siguientes figuras geométricas: 
//Cuadrado, Rectángulo, Triángulo, Rombo, Trapecio Isósceles.

Algoritmo AreasFigurasGeometricas

	//Variables
	Definir numero como entero
	//Cuadrado
	Definir areaCuadra,perimetroCuadra, ladoCuadra como real
	// Rectangulo 
	Definir areaRecta,perimetroRecta,baseRecta,alturaRecta como real
	//Triangulo
	Definir areaTrian,perimetroTrian,baseTrian,alturaTrian, ladoTrian Como real  
	//Rombo
	Definir areaRomb,perimetroRomb,diagonalMayor,diagonalMenor,ladoRomb Como real
	//Trapecio
	Definir areaTrap,perimetroTrap,baseMayor,baseMenor,alturaTrap,ladoTrap Como real
	//Constantes
	
	//Inicio
	Repetir 
		Escribir " "
		Escribir "Bienvenidos al menu principal"
		Escribir "Digite 1 para Cuadrado"
		Escribir "Digite 2 para Rectangulo"
		Escribir "Digite 3 para Triangulo"
		Escribir "Digite 4 para Rombo"
		Escribir "Digite 5 para Trapecio"
		Escribir "Digite 6 para salir del menu"
		Leer numero 
		
	    Segun numero Hacer 
			1: Si numero = 1 //Cuadrado
					Escribir "Ingresar el valor del lado del cuadrado" 
					Leer ladoCuadra
					areaCuadra = ladoCuadra * ladoCuadra
					Escribir "El area del cuadrado es: " , areaCuadra
					perimetroCuadra = ladoCuadra*4
					Escribir "El perimetro del cuadrado es: " , perimetroCuadra
				FinSi
				
				
			2: Si numero = 2 //Rectangulo
					Escribir "Ingresar el valor de la base del rectangulo" 
					Leer baseRecta
					Escribir "Ingresar el valor de la altura del rectangulo" 
					Leer alturaRecta
					areaRecta = (baseRecta) * (alturaRecta)
					Escribir "El area del rectangulo es: " , areaRecta
					perimetroRecta = 2*(baseRecta+alturaRecta)
					Escribir "El perimetro del rectangulo es: " , perimetroRecta
				FinSi
				
				
			3: Si numero = 3 //Triangulo
					Escribir "Ingresar el valor de la base del triangulo" 
					Leer baseTrian
					Escribir "Ingresar el valor de la altura del triangulo" 
					Leer alturaTrian
					areaTrian = ((baseTrian) * (alturaTrian))/2
					Escribir "El area del Triangulo es: " , areaTrian
					perimetroTrian = baseTrian*3
					Escribir "El perimetro del Triangulo es: " , perimetroTrian
				FinSi
				
			4: Si numero = 4 //Rombo
					Escribir "Ingresar el valor de la diagonal mayor del rombo"
					Leer diagonalMayor
					Escribir "Ingresar el valor de la diagonal Menor del rombo" 
					Leer diagonalMenor
		            Escribir "Ingrese el valor de un lado del rombo"
					Leer ladoRomb
					areaRomb = ((diagonalMayor) * (diagonalMenor))/2
					Escribir "El area del Rombo es: " , areaRomb
					perimetroRomb = ladoRomb*4
					Escribir "El perimetro del Triangulo es: " , perimetroRomb
				FinSi
				
			5: Si numero = 5 //Trapecio
					Escribir "Ingresar el valor de la base mayor del Trapecio" 
					Leer baseMayor
					Escribir "Ingresar el valor de la base menor del Trapecio" 
					Leer baseMenor
					Escribir "Ingresar el valor de la altura del Trapecio" 
					Leer alturaTrap
					Escribir "Ingresar el valor del lado del Trapecio" 
					Leer ladoTrap
					areaTrap = ((baseMayor + baseMenor)* alturaTrap)/2
					Escribir "El area del Trapecio es: " , areaTrap
					perimetroTrap = baseMayor+baseMenor+ladoTrap+ladoTrap
					Escribir "El perimetro del Trapecio es: " , perimetroTrap
				FinSi	
				
			6: Escribir "Haz salido del menu principal"
			De otro modo: 
		FinSegun
	Hasta Que numero = 6 	
	
FinAlgoritmo
