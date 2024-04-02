//Mariel Rojas
//Número de empleado (número)
//Salario Base (Monto en números)
//Incentivo (Monto en números)
//dDeducciones (Monto en números) 
//Salario Bruto(Monto en números)



Algoritmo SalariosEmpresa
	//Variables
	Definir base,ince,dedu,bruto Como Real
	Definir dim,m,num,i,j,emple Como Entero

	//Inicio
	Escribir "Ingrese el numero de empleados"
	Leer dim 
	Dimension m[dim,4]
	
	Repetir 
		Escribir " "
		Escribir "Digite 1 para agregar sus datos"
		Escribir "Digite 2 para observar los datos"
		Escribir "Digite 3 para salir del menu principal"
		Leer num 
		
	    Segun num Hacer 
			1: Si num = 1 
					Escribir "Ingrese su Salario Base " 
					Leer base
					Escribir "Ingrese su Incentivo " 
					Leer ince
					Escribir "Ingrese las Deducciones " 
					Leer dedu
					
					m[dim,0] = base
					m[dim,1] = ince
					m[dim,2] =  dedu
					m[dim,3] = ((base+ince)-dedu)
					
				FinSi
				
			2: Si num = 2 
					Para i=0 hasta dim-1                                  
						Para j=0 hasta 3 hacer                       
							Escribir "[",m[i,j],"]" Sin saltar    
						FinPara
						Escribir " "
					FinPara
					Escribir " "
			    FinSi
			
			3: Escribir "Haz salido del menu"
			De otro modo: Escribir "Digito ingresado incorrecto"
				Escribir "Ingrese un valor valido"
		FinSegun
	Hasta Que num = 3	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
