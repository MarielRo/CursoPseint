//Mariel Rojas 
// Validar un determinado usuario para ingresar a la p�gina de un correo electr�nico.
Algoritmo CorreoElectronico
	//Variables
	Definir usuario2 como caracter
	Definir contrasenna2 como real
	Definir Mariel Como Caracter
	
	//Constantes
	Definir USUARIO como caracter
	USUARIO = "Mariel" // No se define bien 
	Definir CONTRASENNA como real 
	CONTRASENNA = 123
	
	//Inicio
	Escribir "Digitar el Usuario"
	Leer usuario2
	
	Si USUARIO = "Mariel" Y usuario2= "Mariel" Entonces
		escribir "El usuario ingresado es correcto." 
	Sino  
		Escribir "El usuario ingresado es incorrecto."
	FinSi
	
	Escribir "Digitar la contrase�a"
	Leer contrasenna2
	Si CONTRASENNA = contrasenna2 Entonces
		escribir "La contrase�a ingresada es correcta." 
	Sino  
		Escribir "La contrase�a ingresada es incorrecta."
	FinSi
	
FinAlgoritmo