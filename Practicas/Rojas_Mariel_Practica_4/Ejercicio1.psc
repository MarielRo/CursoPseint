//Mariel Rojas
//Calcular el área y la circunferencia de un círculo, con base a un radio ingresado por el usuario.  
Algoritmo RadioCircunferencia
	
	//Constantes 
	Definir NUMERO_PI como Real 
	NUMERO_PI = 3.14
	
	//Variables 
	Definir radio,area,diametro,circunferencia como Real
	
	//Inicio 
	Escribir "Ingresar el valor del radio deseado" 
	Leer radio 
	area = (NUMERO_PI) * (radio) * (radio) 
	Escribir "El área del circulo es "  area
	
	diametro = 2*radio
	
	circunferencia= (NUMERO_PI) * diametro 
	Escribir "El valor de la circunferencia es " , circunferencia 
	
FinAlgoritmo
