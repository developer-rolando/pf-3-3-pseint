SubProceso menu
	Escribir "*** Menu de opciones ***";
	Escribir "Sumar -> 1";
	Escribir "Restar -> 2";
	Escribir "Multiplicar -> 3";
	Escribir "Dividir -> 4";
	Escribir "Salir -> 5";
FinSubProceso

SubProceso menu2
	Escribir "¿Quieres realizar otra operacion con este resultado?";
	Escribir "Si -> 1";
	Escribir "No -> 2";
FinSubProceso

SubProceso resultado <- suma(a, b)
	Definir resultado Como Real;
	resultado <- a + b;
FinSubProceso

SubProceso resultado <- resta(a, b)
	Definir resultado Como Real;
	resultado <- a - b;
FinSubProceso

SubProceso resultado <- multiplicacion(a, b)
	Definir resultado Como Real;
	resultado <- a * b;
FinSubProceso

SubProceso resultado <- division(a, b)
	Definir resultado Como Real;
	resultado <- a / b;
FinSubProceso

SubProceso resultado <- operacionSuma(num1, num2)
	Definir resultado Como Real;
	Escribir "Operacion: Suma";
	resultado <- suma(num1, num2);
	Escribir resultado;
FinSubProceso

SubProceso resultado <- operacionResta(num1, num2)
	Definir resultado Como Real;
	Escribir "Operacion: Resta";
	resultado <- resta(num1, num2);
	Escribir resultado;
FinSubProceso

SubProceso resultado <- operacionMulti(num1, num2)
	Definir resultado Como Real;
	Escribir "Operacion: Multiplicacion";
	resultado <- multiplicacion(num1, num2);
	Escribir resultado;
FinSubProceso

SubProceso resultado <- operacionDivision(num1, num2)
	Definir resultado Como Real;
	Escribir "Operacion: Division";
	Si num2 <> 0 Entonces
		resultado <- division(num1, num2);
		Escribir resultado;
	SiNo
		Escribir "¡No se puede dividir entre 0, intenta de nuevo!";
	FinSi
FinSubProceso

SubProceso calculadora
	Definir option, option2 Como Entero;
	Definir bucle Como Logico;
	Definir num1, num2, resultado Como Real;
	
	bucle <- Verdadero;
	
	
	Mientras bucle == Verdadero Hacer
		
		menu;
		Leer option;
		
		Si option <> 5 y option2 <> 1 Entonces
			Escribir "Ingresa el primer numero: ";
			Leer num1;
			Escribir "Ingresa el segundo numero: ";
			Leer num2;
		FinSi
		
		Si option <> 5 y option2 == 1 Entonces
			Escribir "Resultado de la operacion anterior: ", resultado;
			
			num1 <- resultado;
			Escribir "Ingresa el segundo numero: ";
			Leer num2;
		FinSi
		
		Segun option Hacer
			1: 
				resultado <- operacionSuma(num1, num2);
			2: 
				resultado <- operacionResta(num1, num2);
			3:
				resultado <- operacionMulti(num1, num2);
			4:
				resultado <- operacionDivision(num1, num2);
			5: 
				Escribir "Saliendo de la calculadora";
				bucle <- Falso;
			De Otro Modo:
				Escribir "Opción incorrecta";
				
		FinSegun
		
		Si option <> 5 Entonces
			menu2;
			Leer option2;
		FinSi
		
	FinMientras
FinSubProceso

Algoritmo Calculadora21
	calculadora;
FinAlgoritmo