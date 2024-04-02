//Mariel Rojas
//Calcular en metros el área y el perímetro de una propiedad, donde las medidas del largo y el ancho de la propiedad están en pies. 
Algoritmo ConversionPiesMetros
	//Variables
	Definir largoTerreno,anchoTerreno,areaPies,perimetroPies,metros,areaMetros,perimetroMetros Como Real
	
	// Constantes
	Definir UN_PIE Como Real
	UN_PIE = 0.3048
	
	//Inicio 
	Escribir "Ingrese el largo del terreno(en pies)"
	Leer largoTerreno
	Escribir "Ingrese el ancho del terreno(en pies)"
	Leer anchoTerreno
	
	metros = UN_PIE*0.3048
	
	areaPies = (largoTerreno*anchoTerreno) 
	areaMetros= areaPies*0.3048 
	Escribir "El area del cuadrado es:", areaMetros
	
	perimetroPies = largoTerreno + largoTerreno + anchoTerreno + anchoTerreno
	perimetroMetros = perimetroPies*0.3048
	Escribir "El perimetro del cuadrado es:", perimetroMetros 
	
FinAlgoritmo
