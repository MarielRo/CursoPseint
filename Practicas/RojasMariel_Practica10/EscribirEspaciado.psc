// Mariel Rojas
// Ejercicio 2, Pr�ctica 10

Algoritmo EscribirEspaciado
	//Definen Variables
    Definir palabra,letra,espacio Como Caracter
	Definir i,tam Como Entero
	//Imprimen valores de las funciones 
	Ingreso(palabra)
	Espaciado(letra,palabra,i,tam)
FinAlgoritmo

SubProceso Ingreso(palabra Por Referencia)
	Escribir "Digite una palabra para separar"
	Leer palabra
FinSubProceso

SubProceso Espaciado(letra,palabra,i,tam)
	tam=Longitud(Palabra) //Tama�o de la palabra ingresada
	Repetir
		Letra=Subcadena(palabra,i,i) //Palabra ingresada toma la posicion de cada letra hasta que la posicion sea igual al tama�o de la palabra ingresada 
		Escribir letra, " " Sin Saltar //Se imprime un espacio luego de cada letra
		i=i+1 //Se incrementa la posicion de cada letra, para pasar por toda la palabra 
	Hasta Que i=tam
FinSubProceso
