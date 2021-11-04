Algoritmo notas_definitivo
	Definir i,j como Entero;
	Definir acum,media como Real;
	Definir notas como Real;
	Dimension notas[10];
	Escribir "Introduzca las notas de los alumnos:";
	Mientras i<=9 Hacer
		Leer notas[i];
		Si notas[i]>=0&notas[i]<=10 Entonces
			acum<-acum+notas[i];
			i<-i+1;
		SiNo
			Escribir "Valor erróneo, por favor, introduzca una nota que esté entre 0 y 10.";
		FinSi
	FinMientras
	media<-acum/10;
	Escribir "Nota media de la clase:",media;
	Escribir "Lista de notas que están por encima de la media:";
	Para j<-0 Hasta 9 Con Paso j+1 Hacer
		Si notas[j]>=media Entonces
			Escribir notas[j];
		FinSi
	FinPara
FinAlgoritmo
