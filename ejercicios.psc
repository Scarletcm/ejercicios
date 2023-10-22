// El consultorio del Dr. Paez tiene como política cobrar la consulta con
//base en el número de cita, de la siguiente forma:
//Las tres primeras citas a $200.00 c/u.
//Las siguientes dos citas a $150.00 c/u.
//Las tres siguientes citas a $100.00 c/u.
//Las restantes a $50.00 c/u, mientras dure el tratamiento.
//Se requiere un algoritmo para determinar:
//Cuánto pagará el paciente por la cita. El monto de lo que ha pagado el paciente por el tratamiento.
//Para la solución de este problema se requiere saber qué número de cita se efectuará, con el
//cual se podrá determinar el costo que tendrá la consulta y cuánto se ha gastado el tratamiento.

//Se declaran las variables necesarias.
//Se lee el número de cita.
//Se calcula el costo de la consulta en función del número de cita.
//Se actualiza el monto total pagado.
//Se imprime el costo de la consulta y el monto total pagado.

Funcion ejercicio16 
	Definir cita Como Entero
	Definir costoConsulta, MontoTotal Como Real
	Escribir "Ingrese el numero de cita"
	Leer cita
	si cita <= 3 Entonces
		costoConsulta = 200
		MontoTotal= MontoTotal + costoConsulta
		cita = cita - 1
	FinSi
	Si cita > 3 & cita <= 5 Entonces
		costoConsulta = 150
		MontoTotal = MontoTotal + costoConsulta
		cita = cita - 1
	Fin Si
	
	Si cita > 5 & cita <= 8 Entonces
		costoConsulta = 100
		MontoTotal = MontoTotal + costoConsulta
		cita = cita - 1
	Fin Si
	
	Si cita > 8 Entonces
		costoConsulta = 50
		MontoTotal = MontoTotal + costoConsulta
	Fin Si
	

	
	Escribir "El costo de la consulta es: $", costoConsulta
	Escribir "El monto total pagado es: $", MontoTotal
FinFuncion

Funcion ejercicio17
	//17) Fábricas "El Baraton" produce articulos con claves (1, 2, 3, 4, 5 y 6). Se requiere
	//un algoritmo para calcular los precios de venta, para esto hay que considerar lo siguiente Costo de producción = materia prima + mano de obra + gastos de fabricación.
//Precio de venta = costo de producción + 45 % de costo de producción.
//El costo de la mano de obra se obtiene de la siguiente forma: para los productos con clave 3 o
//4 se carga 75 % del costo de la materia prima; para los que tienen clave 1 y 5 se carga 80 %, y
//para los que tienen clave 2 o 6, 85 %.
//Para calcular el gasto de fabricación se considera que si el articulo que se va a
//producir tiene claves 2 o 5, este gasto representa 30 % sobre el costo de la
//materia prima; si las claves son 3 o 6, representa 35 %; si las claves son 1 o 4,
	//representa 28 %. La materia prima tiene el mismo costo para cualquier clave
	//definimos variables
	Definir clave, costo_materia_prima, costo_mano_obra, gasto_fabricacion, costo_produccion, precio_venta Como Real
	//solicitamos al usuaro que ingrese la clave del articulo y el costo de la materia prima
	Escribir "ingrese la clave del articulo"
	Leer clave
	Escribir "ingrese el costo de la materia prima: "
	Leer costo_materia_prima
	
	//calculamos el costo de la mano de obra
	Si clave = 3 O clave = 4 Entonces
		costo_mano_obra = 0.75 * costo_materia_prima
	Sino Si clave = 1 O clave = 5 Entonces
			costo_mano_obra = 0.80 * costo_materia_prima
		Sino
			si clave = 2 O clave = 5 Entonces
				costo_mano_obra = 0.85 * costo_materia_prima
			FinSi
			
			
		Fin Si
    Fin Si
	
	//Calculamos el gasto de fabricación
	Si clave = 2 O clave = 5 Entonces
		gasto_fabricacion = 0.30 * costo_materia_prima
	Sino Si clave = 3 O clave = 6 Entonces
			gasto_fabricacion = 0.35 * costo_materia_prima
		Sino 
			si clave = 1 o clave = 4 Entonces
				gasto_fabricacion = 0.28 * costo_materia_prima
			FinSi
			
		Fin Si
	Fin Si
	
	//Calculamos el costo de producción
	costo_produccion = costo_materia_prima + costo_mano_obra + gasto_fabricacion
	
	//Calculamos el precio de venta
	precio_venta = costo_produccion * 1.45
	
	//Mostramos el precio de venta
	Escribir "El precio de venta es: ", precio_venta
	
FinFuncion

Funcion ejercicio18
	// El banco XYZ ha decidido aumentar el límite de crédito de las tarjetas de crédito de sus clientes, para esto considera que:
	//Si su cliente tiene tarjeta tipo 1, el aumento será del 25%. Si tiene tipo 2 el aumento será del 35%
	//Si tiene tipo 3, el aumento será del 40%  Para cualquier otro tipo será del 50%
	//Realizar un diagrama de flujo que ayude al banco a determinar el nuevo límite de crédito que tendrá una persona en su tarjeta
	//definimos variables
	Definir tipo_tarjeta Como Entero
	Definir limite_credito_actual,porcentajeaumento, Nuevo_límite_crédito Como real
	//solicitamos al usuario que ingrese el tipo de su tarjeta
	Escribir "ingrese el tipo de tarjeta"
	Leer tipo_tarjeta
	Escribir "ingrese su limite de credito actual "
	Leer limite_credito_actual
	
	si tipo_tarjeta = 1  Entonces
		porcentajeaumento = 25/100
	SiNo
		si tipo_tarjeta = 2 Entonces
			porcentajeaumento = 35/100
		sino 
			si tipo_tarjeta = 3 Entonces
				porcentajeaumento = 40/100
			SiNo
				si tipo_tarjeta > 4 Entonces
					porcentajeaumento = 50/100
					
				FinSi
			FinSi
		FinSi
		
	FinSi
	Nuevo_limite_credito = limite_credito_actual * porcentajeaumento
	Escribir "Su nuevo limite de credito en su tarjeta es: $" Nuevo_limite_credito
FinFuncion
Funcion ejercicio19
	//Una compañía de paquetería internacional tiene servicio en algunos países de
	//América del Norte, América Central, América del Sur, Europa y Asia. El costo por
	//el servicio de paquetería se basa en el peso del paquete y la zona a la que va
	//dirigido. Ver tabla
	//Parte de sus políticas implica que los paquetes con un peso superior a 5kg
	//no son transportados , esto es por cuestión de logística y de seguridad.
	Definir peso_paquete Como Real
	Definir zona_destino como cadena
	Escribir "ingrese la zona de destino"
	Leer zona_destino
	Escribir "ingrese peso del paquete"
	Leer peso_paquete
	Si peso_paquete > 5 Entonces
		Escribir "El peso del paquete es superior a 5 kg. No se puede enviar."
	Fin Si
	
	// Calcular el costo de envío
	Si zona_destino =   "América del Norte" Entonces
		costo_envio = 11.00 * peso_paquete
	Sino Si zona_destino = "América Central" Entonces
			costo_envio = 10.00 * peso_paquete
		Sino Si zona_destino = "América del Sur" Entonces
				costo_envio = 12.00 * peso_paquete
			Sino Si zona_destino = "Europa" Entonces
					costo_envio = 24.00 * peso_paquete
				Sino si zona_destino = "Asia" Entonces
						
					costo_envio = 1.5 * peso_paquete
				Fin Si
				
			finsi	
fin si
				
		fin si
fin si		
Escribir "El costo de envío es: ", costo_envio
FinFuncion


Funcion ejercicio20
	//Se desea realizar una estadistica de los pesos de los alumnos de la UNEMI de acuerdo a la siguiente tabla
	//alumnos de menos 40 kg
	//alumnos entre 40 y 50 kg
	//alumnos mas de 50 y menos de 60 kg
	//alumnos mas de 60 kg.
	//La entrada de los pesos se terminará cuando se ingrese el valor
	//de peso cero. Al final deberá presentar cuantos alumnos hay por
	//rango de pesos y el promedio de cada rango.
	Definir peso Como Real;
    Definir totalMenos40, total40a50, total50a60, totalMas60 Como Entero;
    Definir sumaMenos40, suma40a50, suma50a60, sumaMas60 Como Real;
	
    totalMenos40 <- 0;
    total40a50 <- 0;
    total50a60 <- 0;
    totalMas60 <- 0;
    sumaMenos40 <- 0;
    suma40a50 <- 0;
    suma50a60 <- 0;
    sumaMas60 <- 0;
	
    Escribir "Ingrese el peso de los alumnos (0 para finalizar):";
	
    Leer peso;
	
    Mientras peso <> 0 Hacer
        Si peso < 40 Entonces
            totalMenos40 <- totalMenos40 + 1;
            sumaMenos40 <- sumaMenos40 + peso;
        Sino Si peso >= 40 Y peso <= 50 Entonces
				total40a50 <- total40a50 + 1;
				suma40a50 <- suma40a50 + peso;
			Sino Si peso > 50 Y peso < 60 Entonces
					total50a60 <- total50a60 + 1;
					suma50a60 <- suma50a60 + peso;
				Sino
					totalMas60 <- totalMas60 + 1;
					sumaMas60 <- sumaMas60 + peso;
				FinSi
			FinSi
		FinSi
		Leer peso;
	FinMientras
	
	Escribir "Alumnos con peso menor a 40 kg:", totalMenos40, " - Promedio:", sumaMenos40 / totalMenos40;
	Escribir "Alumnos con peso entre 40 kg y 50 kg:", total40a50, " - Promedio:", suma40a50 / total40a50;
	Escribir "Alumnos con peso entre 50 kg y 60 kg:", total50a60, " - Promedio:", suma50a60 / total50a60;
	Escribir "Alumnos con peso mayor a 60 kg:", totalMas60, " - Promedio:", sumaMas60 / totalMas60;
FinFuncion


Funcion ejercicio21
	//Escribir un algoritmo que lea cuatro números y determine si el numero 1 
	//es la mitad del numero 2; Y si el numero 3 es divisor del 4
	Definir num1, num2, num3, num4 Como entero
	Escribir "ingrese num1"
	Leer num1
	Escribir "ingrese num2"
	Leer num2
	Escribir "ingrese num3"
	Leer num3
	Escribir "ingrese num4"
	Leer num4
	// Determinar si el número 1 es la mitad del número 2
            mitad_num2 = num2 / 2
			Si num1 = mitad_num2 Entonces
				Escribir "El número 1 es la mitad del número 2."
			Sino
				Escribir "El número 1 no es la mitad del número 2."
			Fin Si
			
			//Determinar si el número 3 es divisor del número 4
				Si num3 mod num4 = 0 Entonces
					Escribir "El número 3 es divisor del número 4."
				Sino
					Escribir "El número 3 no es divisor del número 4."
Fin Si
FinFuncion
Algoritmo ejercicios
	//ejercicio16
	//ejercicio17
	//ejercicio18
	//ejercicio19
	//ejercicio20
	ejercicio21
FinAlgoritmo




	
	
	

