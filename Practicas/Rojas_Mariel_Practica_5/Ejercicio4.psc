//Mariel Rojas
//Elaborar un menu que solicite, nombre, apellido, segundo apellido, nombre completo

Algoritmo NommbreCompletoMenu
	//Variables
	Definir nombre,apellido,segundoApellido,nombreCompleto Como Caracter
	Definir numero Como Entero
	
	//Inicio 
	
	
	Repetir 
		Escribir "Bienvenidos al menu principal"
		Escribir "Digite 1 para escribir su nombre"
		Escribir "Digite 2 para escribir su apellido"
		Escribir "Digite 3 para escribir su segundo apellido"
		Escribir "Digite 4 para observar su nombre completo"
		Escribir "Digite 5 si desea salir del menu principal"
		Leer numero 
	    Segun numero Hacer 
			1: Escribir "Escriba su nombre"
				Si numero = 1 
					Leer nombre 
				FinSi
			
			2: Escribir "Escriba su apellido"
				Si numero = 2 
					Leer apellido 
				FinSi
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			3: Escribir "Escriba su segundo apellido"
				Si numero = 3 
					Leer segundoApellido
				FinSi
				
			4: Escribir "Nombre completo:"
				Si numero = 4 
					Escribir "Su nombre completo es: ", nombre + " " +apellido + " "+ segundoApellido 
				FinSi
				
				
			5: Escribir "Haz salido del menu principal"
			De otro modo: 
				Escribir numero 
		FinSegun
	Hasta Que numero = 5 	
	
	
	
FinAlgoritmo
