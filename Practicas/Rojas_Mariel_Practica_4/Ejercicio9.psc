//MarielRojas
//Calcular el promedio final de las calificaciones obtenidos por un alumno en su curso.
Algoritmo PromedioFinal
	
	//Variables 
	Definir calificacionPrimeraFase, calificacionSegundaFase, calificacionPortafolio, promedio como real 
	
	//  Inicio
	Escribir "Ingresar el valor de Calificaci�n de la Primera Fase del Proyecto Final. "
	Leer calificacionPrimeraFase
	Escribir "Ingresar el valor de Calificaci�n de la Segunda Fase del Proyecto Final. "
	Leer calificacionSegundaFase
	Escribir "Ingresar el valor de Calificaci�n del Portafolio. "
	Leer calificacionPortafolio
	
	Promedio <- (calificacionPrimeraFase + calificacionSegundaFase + calificacionPortafolio) /3  
	Escribir "El promedio final es: ", promedio
	
FinAlgoritmo
