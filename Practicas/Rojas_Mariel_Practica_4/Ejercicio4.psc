//Mariel Rojas
//Calcular la fecha del día anterior.

Algoritmo DiaAntes
	// Variables
	Definir fecha,dia,mes,anno,diaAnterior,mesAnterior,annoAnterior como entero
	
	//Constantes 
	
	//Inicio 
	Escribir "Ingresar una fecha (DD/MM/AA)"  
	Leer dia, mes,anno 
	
	Si dia > 31 entonces 
		Escribir "Valor ingresado incorrecto"
	Sino 
		Si dia = 1 Y mes = 4 o mes = 6 o mes =  9 o mes =11  Entonces
			diaAnterior = 30 
			mesAnterior = mes-1 
		Sino
			Si dia = 1 Y mes =3 o mes =  5 o mes =7 o mes = 8 o mes =  9 o mes = 12  Entonces
				     diaAnterior = 31
				     mesAnterior = mes-1 
				     
				Sino
					 Si mes = 1 Entonces
						 mesAnterior = 12
						 anno= anno-1
						 Escribir "La fecha de ayer fue:" " ",diaAnterior,"/" mesAnterior,"/" anno
					 FinSi
				    FinSi
				 
			    FinSi
			FinSi
			
	
	
	
	

	
	


FinAlgoritmo