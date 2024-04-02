Algoritmo CalculadoraGeometrica
	
	Definir  area, lado, base, altura, diagMay, diagMen, ladoPara, basePara,angulGrados, diametro,baseMayor,baseMenor,ladoTrap,a,b,c,areaTrian,perimetro Como Real
	Definir val Como caracter
	
	Menu(val)
	
	Borrar Pantalla
	Segun val  Hacer
		"1": //CUADRADO
			Escribir "Cálculo del Cuadrado"
			Digitar("Digite el valor de uno de los lados del cuadrado", lado)
			Escribir "El área del cuadrado es de: ", CalAreaCuadrado(lado)
			Escribir "El perímetro del cuadrado es de: ",CalPeriCuadrado(lado)
			
		"2": //RECTANGULO
			Escribir "Cálculo del Rectangulo"
			Digitar("Digite el valor de la base", base)
			Digitar("Digite el valor de la altura", altura)
			Escribir "El área del rectangulo es de: ",CalAreaRecta(base,altura)
			Escribir "El perímetro del rectangulo es de: ",CalPeriRecta(base,altura)
			
		"3"://ROMBO
			Escribir "Cálculo del Rombo"
			Digitar("Digite el valor de la diagonal mayor", diagMay)
			Digitar("Digite el valor de la diagonal menor", diagMen)
			Escribir "El área del rombo es de: ", CalAreaRombo(diagMay,diagMen)
			Escribir "El perímetro es: ",CalPeriRombo(diagMay,diagMen)
			
		"4"://PARALELOGRAMO
			Escribir "Cálculo del Paralelogramo"
			Digitar("Digite el valor del lado", ladoPara)
			Digitar("Digite el valor de la base", basePara)
			Digitar("Digite el valor del angulo", angulGrados)
			Escribir "El área esde paralelogramo es de: ",CalAreaParale(ladoPara, basePara, angulGrados)
			Escribir "El perímetro del paralelogramo es de: ", CalPeriParale(ladoParalel, baseParalel)
			
			
		"5"://CIRCULO
			Escribir "Cálculo del Circulo"
			Digitar("Digite el valor del diametro", diametro)
			Escribir "El área del circulo es de: ", CalAreaCircu(diametro)
			Escribir "El perímetro del circulo es de: ", CalPeriCircu(diametro)
			
		"6"://TRAPECIO 	
			Escribir "Cálculo del Trapecio Isoceles"
			Digitar("Ingresar el valor de la base mayor del Trapecio", baseMayor) 
			Digitar("Ingresar el valor de la base menor del Trapecio", baseMenor) 
			Digitar("Ingresar el valor del lado del Trapecio",ladoTrap) 
			Escribir "El área es: ", CalAreaTrape(baseMayor,baseMenor,ladoTrap)
			Escribir "El perímetro es: ", CalPeriTrape(baseMayor,baseMenor,ladoTrap)
		
		"7"://TRIANGULO 	
			Escribir "Cálculo del Triangulo"
			Digitar("Ingresar el valor del primer lado del triangulo", a) 
			Digitar("Ingresar el valor del segundo lado del triangulo", b) 
			Digitar("Ingresar el valor del tercer lado del triangulo",c) 
			Escribir "El área es del triangulo es de: ", CalAreaTrian(a,b,c)
			Escribir "El perímetro del triangulo es de: ",CalPeriTrian(a,b,c)
	
		"8": 	
			Escribir "Haz salido de la calculadora geométrica"
	FinSegun	
FinAlgoritmo

//Se hace un subproceso para llamar e imprimir el Menú
SubProceso Menu(num Por Referencia)
	Escribir "****************************************************** "
	Escribir "		Bienvenidos a la Calculadora Geométrica"
	Escribir "                                                       "
	Escribir "	  1- Digite 1 para calcular un Cuadrado"
	Escribir "	  2- Digite 2 para calcular un Rectangulo"
	Escribir "	  3- Digite 3 para calcular un Rombo"
	Escribir "	  4- Digite 4 para calcular un Paralelogramo"
	Escribir "	  5- Digite 5 para calcular un Circulo"
	Escribir "	  6- Digite 6 para calcular un Trapecio Isóceles"
	Escribir "	  7- Digite 7 para calcular un Triangulo"
	Escribir "	  8- Digite 8 para salir del menu "
	Escribir "***************************************************** "
	Leer num
FinSubProceso 


//Subproceso para escribir el texto sobre lo que se va a solicitar al usuario y el valor.
SubProceso Digitar(text,val1 Por Referencia)
	Escribir text
	leer val1	
FinSubProceso

//CUADRADO
Funcion area=CalAreaCuadrado(lado  Por Valor) 	
	Definir area como Real
	area=lado*lado
FinFuncion
Funcion perimetro=CalPeriCuadrado(lado)
	Definir perimetro Como Real
	perimetro=lado*4	
FinFuncion

//RECTANGULO
Funcion area=CalAreaRecta(bas,alt Por Valor)
	Definir area Como Real
	area=bas*alt
FinFuncion
Funcion perimetro=CalPeriRecta(bas,alt Por Valor)
	Definir perimetro Como Real
	perimetro= 2*(bas+alt)
FinFuncion

//ROMBO
Funcion area=CalAreaRombo(digMayor,digMenor Por Valor)
	Definir area Como Real
	area=((diagMay)*(diagmen))/2
FinFuncion
Funcion perimetro=CalPeriRombo(diagMayor,diagMenor Por Valor)
	Definir perimetro Como Real
	
	perimetro=2*raiz(diagMayor^2+diagMenor^2)
FinFuncion

//PARALELOGRAMO
Funcion area=CalAreaParale(ladoPara,basePara,anguloGrados Por Valor)  //Calculo área paralelogramo
	Definir angulo, alturaPara, area, alt Como Real
	angulo = (anguloGrados*3.14)/180
	alturaPara = sen(angulo)*ladoPara
	area=basePara*alturaPara
FinFuncion
Funcion perimetro=CalPeriParale(ladPara,basPara Por Valor) //Calculo perímetro paralelogramo
	Definir perimetro Como Real
	
	perimetro=(ladPara+basPara)*2
FinFuncion

//CIRCULO
Funcion area=CalAreaCircu(diametro Por Valor) 
	Definir area, radio Como Real
	radio=diametro/2
	area=(3.14)*(radio^2)
FinFuncion
Funcion perimetro=CalPeriCircu(diametro Por Valor)
	Definir perimetro, radio Como Real
	radio=diametro/2
	perimetro=((2)*(3.14)* (radio))
FinFuncion

//TRAPECIO 
Funcion area= CalAreaTrape(baseMayor,baseMenor,ladoTrap Por Valor)
	Definir area,alturaTrap,x Como Real
	x =  (baseMayor - baseMenor)/2
	alturaTrap=raiz((ladoTrap^2)-(x^2))
	area = ((baseMayor + baseMenor)/2)* (alturaTrap)
FinFuncion
Funcion perimetro=CalPeriTrape(baseMayor,baseMenor,ladoTrap Por Valor)
	Definir perimetro Como Real
	perimetro = baseMayor+baseMenor+ladoTrap+ladoTrap
FinFuncion

//TRIANGULO
SubProceso area=CalAreaTrian(a,b,c) 
	Definir s,area Como Real
	Si c < a-b O c > a+b
		Escribir "Datos digitados inválidos "
		Escribir "Digite valores válidos para poder realizar la operación requerida"
	Sino
		Si c > a-b Y c < a+b
			s=(a+b+c)/2
			area = raiz(s*(s-a)*(s-b)*(s-c))
		FinSi
	FinSi
FinSubProceso
Funcion perimetro=CalPeriTrian(a,b,c Por Valor)
	Definir perimetro Como Real
	perimetro= a + c + b	
FinFuncion







