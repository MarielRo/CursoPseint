Algoritmo ConstanteKaprekar 
	//Variables
	Definir auxiliar,a,num,contador, numMenor, numMayor Como entero;
	Definir numText Como Caracter;
	definir bandera como logico
	//Dimension del vector
	Dimension a[4]
	//Inicio
	
	Escribir "***************************************"
	Escribir "     Constante de Kaprekar             "
	Escribir "***************************************"
	Escribir ""
	
	Escribir " Digite un número de cuatro digitos, en donde sus cuatro digitos no pueden ser iguales. "
	Leer num
	bandera  = falso
	Repetir // Validar si se repetin los digitos ddel numero
		Si (num <= 999) o ( num = 1111) o ( num = 2222) o ( num = 3333) o ( num = 4444) o (num = 5555) o (num = 6666) o ( num = 7777) o ( num = 8888) o ( num >= 9999)
			bandera = verdadero
			Escribir " El número ingresado repite sus digitos."
			Escribir ""
		FinSi
	Hasta Que bandera = verdadero o (num > 999) y ( num < 9999) y ( num <> 1111) y ( num <> 2222) y ( num<> 3333) y ( num <> 4444) y (num <> 5555) y (num <> 6666) y ( num <> 7777) y ( num <> 8888)
	
	
	contador = 0
	Si bandera = falso
		Repetir
			Escribir " Número por ordenar: " num
			Mayo(num,a, numMayor)
			Escribir " Ordenado de Mayor a Menor: " numMayor
			Meno( num,a, numMenor)
			Escribir " Ordenado de Menor a Mayor: " numMenor
			Escribir ""
			auxiliar = num
			num =  numMayor - numMenor
			contador = contador + 1
		Hasta Que num = auxiliar o  contador = 8 
	Sino 
		Escribir " Digite un número valido. "
		Escribir ""
	FinSi

	Si contador <= 8 Entonces
		Si auxiliar  = num entonces 
			Escribir " El número para llegar a la constante se restó " contador " veces."
			Escribir ""
		Sino 
			Si auxiliar  <> num Entonces
				Escribir " El número no coincide con la constante de Kaprekar. "
				Escribir ""
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo


//Verificar el mayor 
SubProceso Mayo( n1,v1, mayorN Por Referencia)
	Definir aux, fil, col, c1,c2,c3,c4 Como Entero;
	Definir numText Como Caracter
	
	//Cambiando el número ingresado a texto
	numText= ConvertirATexto(n1)
	Para fil = 0 Hasta 3 Hacer 
		v1[fil] = ConvertirANumero(Subcadena(numText,fil,fil)) 
	FinPara
	
	//Ordenando de mayor a menor
	Para fil=0 Hasta 3 Hacer 
		Para col=fil Hasta 3 Hacer
			si v1[col] > v1[fil]
				aux=v1[fil]
				v1[fil] = v1[col]
				v1[col]=aux
			FinSi
		FinPara
	FinPara
	
	Para fil = 0 Hasta 3 Hacer
		Si fil = 0 Entonces
			c1 = v1[fil] * 10 * 10 * 10 // Convierte a millar
		SiNo
			Si fil = 1 Entonces
				c2 = v1[fil] * 10 * 10 // Convierte a centenas
			SiNo
				Si fil = 2 Entonces
					c3 = v1[fil] * 10 // Convierte a decenas
				Sino 
					Si fil = 3 Entonces
						c4 = v1[fil] * 1 // Convierte a decenas
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara
	mayorN = c1 + c2 + c3 + c4 //Concatena 
FinSubProceso



// Ordenando de menor a mayor
SubProceso Meno( n2,v2, menorN Por Referencia)
	Definir aux, fil, col, c1, c2,c3, c4 Como Entero
	Definir numText1 Como Caracter
	
	numText1= ConvertirATexto(n2)
	Para fil = 0 Hasta 3 Hacer 
		v2[fil] = ConvertirANumero(Subcadena(numText1,fil,fil))  
	FinPara
	
	Para fil=0 Hasta 3 Hacer 
		Para col=fil Hasta 3 Hacer
			si v2[col] < v2[fil]
				aux=v2[fil]
				v2[fil] = v2[col]
				v2[col]=aux
			FinSi
		FinPara
	FinPara
	
	Para fil = 0 Hasta 3 Hacer
		Si fil = 0 Entonces
			c1 = v2[fil] * 10 * 10 * 10 // Convierte a millar
		SiNo
			si fil = 1 Entonces
				c2 = v2[fil] * 10 * 10 // Convierte a centenas
			SiNo
				Si fil = 2 Entonces
					c3 = v2[fil] * 10 // Convierte a decenas
				Sino 
					Si fil = 3 Entonces
						c4 = v2[fil] * 1  // Convierte a decenas
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara
	menorN = c1 + c2 + c3 + c4 //Concatena 
FinSubProceso


	