//Mariel,Daniel y Manfred.
//Ejercicio5 
//Fecha y hora,suma de horas.

Algoritmo Ejercicio5
	//Declaracion de Variables
	Definir mes,anio,dia,hora,maxDia,hora1,horaNueva,diaNuevo Como entero
	Definir anioBisiesto Como Logico
	
	//Inicio 
	//AÑO
	Escribir "Digite un año"
	leer anio 
	Si anio mod 400 = 0 Entonces //Año Bisiesto
		anioBisiesto = Verdadero
	SiNo
		Si anio mod 4 == 0 Y anio mod 100 <> 0
			anioBisiesto = Verdadero
		SiNo
			anioBisiesto = Falso
		FinSi
	FinSi
	
	//MES
	Repetir 
		Escribir "Escriba un número de mes entre 1 y 12"
		Leer mes
	Hasta Que mes >= 1 Y mes <= 12
	Si mes = 2 Entonces       //Febrero cuando el mes es bisiesto.
		Si anioBisiesto = Verdadero Entonces
			maxDia = 29
		SiNo
			maxDia = 28
		FinSi
	Sino 
		Si mes = 4 o mes = 6 o mes = 9 o mes = 11 Entonces
			maxDia = 30
		SiNo
			maxDia = 31
		FinSi
	FinSi
	
	//DIA
	Repetir
		Escribir "Escriba un número de día entre 1 y " maxDia
		Leer dia
	Hasta Que dia >=1 Y dia <= maxDia
	
	
	//HORA
	Escribir "Escriba la hora en formato de 24 horas" 
	Leer hora
	
	//IMPRIME LA FECHA
	Escribir "la fecha digitada es " dia "/" mes "/" anio " con las " hora " horas"
	
	//SUMA DE LA FECHA
	Escribir "Cuantas horas desea sumar a la fecha ingresada,no ingresar mas de 120 horas"
	Leer hora1
	
	Si hora1 + hora <= 24 Entonces //Hora menor a 24 horas 
		horaNueva = hora1 + hora
		Escribir horaNueva
	Sino 	
		Si  hora1 + hora >= 24 Y hora1 + hora <= 47 Entonces //Un dia
			horaNueva = hora1 + hora - 24  //22+3=25-24 
			diaNuevo = dia + 1
		Sino 	
			Si  hora1 + hora >= 48 Y hora1 + hora <= 71 Entonces //dos dias
				horaNueva = hora1 + hora - 24  
				diaNuevo = dia + 2
			Sino 	
				Si  hora1 + hora >= 72 Y hora1 + hora <= 95 Entonces //Tres dias
					horaNueva = hora1 + hora - 24  
					diaNuevo = dia + 3
				Sino 	
					Si  hora1 + hora >= 96 Y hora1 + hora <= 119 Entonces //Cuatro dias
						horaNueva = hora1 + hora - 24  
						diaNuevo = dia + 4
					Sino 	
						Si  hora1 + hora >= 120  //Cinco dias
							horaNueva = hora1 + hora - 24  
							diaNuevo = dia + 5
						FinSi		
					FinSi		
				FinSi	
			FinSi	
		FinSi
	FinSi
	
	//NUEVO MES
	Si diaNuevo > maxDia
		mes= mes +1
		diaNuevo = diaNuevo - maxDia
	FinSi
	
	//NUEVO AÑO
	Si mes = 13
		anio= anio +1
		mes = 1
	FinSi
	
	Escribir "La fecha nueva es " diaNuevo "/" mes "/" anio " con las " horaNueva  " horas"

FinAlgoritmo
