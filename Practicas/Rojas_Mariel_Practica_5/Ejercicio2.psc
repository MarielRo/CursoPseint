//Mariel Rojas
//Calcular el impuesto dependiendo de la cantidad de salario mensual 

Algoritmo ImpuestoRenta
	
	// Variables
	Definir salario,salarioImpuesto,impuestoTotal como real 

	
	// Inicio 
	Escribir "Digite su salario mensual"
	Leer salario 
	Si salario <= 840000 Entonces
		Escribir "Su salario mensual esta excendo de impuestos"
	Sino 
		Si salario >= 840000 Y salario <= 1233000  Entonces   
			salarioImpuesto = (salario - ((salario-840000)* 0.1))    // (1233000-840000)= 393000 
		    Escribir "Su salario total con impuestos es de:",  salarioImpuesto
			Escribir "Su impuesto es de:",  salario-salarioImpuesto
		Sino 
			
			Si salario >= 1233000 Y salario <= 2163000  Entonces                // 393000*10% = 39300 Impuesto anterior
				salarioImpuesto = (salario -39300-((salario-1233000)* 0.15))	//(2163000-1233000) = 930000 Excedente actual
				Escribir "Su salario total con impuestos es de : ",  salarioImpuesto
				Escribir "Su impuesto es de: ",  salario-salarioImpuesto
		    SiNo
				
				Si salario >= 2163000 Y salario <= 4325000 Entonces              // 930000*15% = 1395000 Impuesto anterior
					salarioImpuesto = (salario - 39300-139500 - ((salario-2163000)* 0.2))	//(4325000-2163000)= 2162000 Exedente actual 
					Escribir "Su salario total con impuestos es de : ",  salarioImpuesto
					Escribir "Su impuesto es de: ",  salario-salarioImpuesto                        
				Sino
					
					Si salario >= 4325000  Entonces                              // 2162000 * 20% = 432400 Impuesto anterior 
						salarioImpuesto = (salario - 393000-139500-216300 -((salario-4325000)* 0.25))	
						Escribir "Su salario total con impuestos es de :", salarioImpuesto
						Escribir "Su impuesto es de:", salario-salarioImpuesto
					FinSi 	
				FinSi
			FinSi
		FinSi 
	FinSi
	
	
FinAlgoritmo
