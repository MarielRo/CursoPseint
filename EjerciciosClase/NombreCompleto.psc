Algoritmo NombreCompleto
	//Definiciones
	Definir nombre Como Caracter
	Definir apellido1 Como Caracter
	Definir apellido2 Como Caracter
	Definir nombre2 Como Caracter
	Definir nCompleto Como Caracter
	Definir respuesta Como Caracter
	//Inicio
	Escribir "Digite un nombre";
	Leer nombre;
	Escribir  "Tiene Segundo Nombre?"
	Escribir  "Presione s para SI o n para NO"
	Leer respuesta
	Si respuesta = "s" o respuesta = "S" Entonces
		Escribir  "Digite su segundo nombre"
		Leer nombre2
	FinSi
	Escribir "Digite el Primer Apellido"
	Leer apellido1
	Escribir "Digite el Segundo Apellido"
	Leer apellido2
	
	//Acá vamos a armar el nombre completo y lo metemos en una variable para luego imprimirla
	nCompleto = nombre + " " + nombre2 + " " + apellido1 +" " + apellido2 
	Escribir nCompleto
	
	//Esta es otra alternativa, el nombre completo se arma y se imprime pero NO se almacena!
	//Escribir nombre + apellido1 + apellido2 
	
FinAlgoritmo
