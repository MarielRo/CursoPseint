Algoritmo sin_titulo
	
FinAlgoritmo

Funcion cifText=CifrarText(matrizClaveLocal,msgLoc1,flag)
	
	Definir filaA, filaB, columA, columB, long1, posFilaA, posFilaB, posColumA, posColumB, nLocal1,i Como Entero
	Definir cont Como Caracter
	nLocal1=5
	long1=Longitud( msgLoc1)
	Si flag=Verdadero Entonces
		
		Para i=0 Hasta long1-1 Hacer
			//CIFRADO
			Si filaA == filaB Entonces //Método de filas
				
				Si columA == nLocal1-1 o columB == nLocal1-1
					
					poscolumA = 0
					posColumB = 0
					
				SiNo
					
					posColumA = columA+1
					posColumB = columB+1
					
				FinSi
				
			SiNo
				Si columA == columB Entonces //Método de columnas
					
					Si filaA == nLocal1-1 o filaB == nLocal1-1
						
						posFilaA = filaA-1
						posFilaB = filaB-1
						Escribir posColumA
					SiNo
						
						posFilaA = filaA+1
						posFilaB = filaB+1
						
					FinSi
					
					Escribir posColumA "/" posColumB
					
				FinSi
				
			FinSi
			
			Si filaA<>filaB y columA<>columB  Entonces //Método de diagonal.
				
				posColumA = columB    
				posFilaA = filaA
				posColumB = columA   
				posFilaB = filaB
				
			FinSi
			Escribir "Hola" cont = cont + matrizClaveLocal[posFilaA, poscolumA] + matrizClaveLocal[posfilaB, poscolumB]
			
		FinPara
	FinSi
	
	
FinFuncion


Funcion DesText=DescifrarText(matrizClaveLocal, msgLoc, flag2)
	
	Definir filaA, filaB, columA, columB, posFilaA, posFilaB, posColumA, posColumB, nLocal2,i,long2 Como Entero
	Definir cont Como Caracter
	nLocal2=5
	long2 = Longitud( msgLoc)
	
	si flag2=Falso Entonces
		
		Para i=0 Hasta long2-1 Hacer
			//DESCIFRADO
			Si filaA==filaB Entonces //Método de filas
				
				
				Si columA == 0 o columB == 0
					
					//   colPosA   cambiar nombre de variable
					
					posFilaA=nLocal2-1
					posFilaB=nLocal2-1
					
				SiNo
					
					posFilaA=columA-1
					posFilaB=columB-1
					
					Escribir posFilaA "/" posFilaB
				FinSi
				
			SiNo
				Si columA==columB Entonces //Método de columnas 
					
					Si filaA==0 o filaB==0
						
						
						posColumA=nLocal-1
						posColumB=nLocal-1
						
					SiNo
						
						posColumA=filaA-1
						posColumB=filaB-1
						
					FinSi
					
					
					Escribir posColumA "/" posColumB
				FinSi
				
			FinSi
			Si filaA<>filaB y columA<>columB  Entonces //Método de la diagonal 
				
				posColumA = columB    
				posFilaA = filaA
				posColumB = columA   
				posFilaB = filaB
				
			FinSi
			cont = cont + matrizClaveLocal[posFilaA, poscolumA] + matrizClaveLocal[posfilaB, poscolumB]
			Escribir "hola"  matrizClaveLocal[posFilaA, poscolumA], matrizClaveLocal[posfilaB, poscolumB]
		FinPara
	FinSi
	
FinFuncion

	
	
	