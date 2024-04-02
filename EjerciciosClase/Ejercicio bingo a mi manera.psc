
Algoritmo Ejercicio8
	// Variables
	Definir dim,m,fil,col,inicio,final,b,num1,num,num2,rempla Como Entero
	// Inicio 
	dim = 5
	inicio=1
	Final=15
	
	
	Dimension m[dim,dim]
	//Recorrer la matriz, llenandola con valores respectivos
	Para fil= 0 hasta 4  Hacer
		rempla = 0
		Para col= 0 hasta 4 hacer 
			m[fil,col]= aleatorio(inicio,final) 
			Si num == m[fil,col] 
				rempla=1
			FinSi
			Si rempla == 1
				num = num -1
			FinSi
		FinPara
		inicio=inicio+15
		final=final+15   
		Escribir ""
		
//		Para num = 1 hasta 75 con paso 1 Hacer
//			
//		FinPara
		
//		//NUMEROS SIN REPETIR
//			Para col=1 hasta 5 Hacer
//				Si num= bingo[col,i]
//					j=1
//				FinSi
//			FinPara
//			Si j=1 Entonces
//				fil=fil-1
//			SiNo
//				t=ConvertirATexto(num)
//				Si i=0 Entonces
//					l= Longitud(t)
//					Si l = 1 
//						t= "0" +t
//					FinSi
//				FinSi
//				bingo[fil,i] = num
//				b[fil,i] = t
//			FinSi
//			
//			si fil=5 Entonces
//				i=i +1
//			FinSi
//		FinPara
		
		
		
	FinPara
	
	
	//Imprimir el carton del BINGO
	Escribir "[B] [I] [N] [G] [O]"
	Para fil= 0 hasta 4  Hacer 
		Para col= 0 hasta 4 hacer 
		  Escribir "[",m[col,fil],"]" Sin Saltar 
	  FinPara
	  Escribir " "
	FinPara
FinAlgoritmo
