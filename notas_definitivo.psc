Algoritmo notas_definitivo
	Definir i,j,k,n_alu como Entero;
	Definir acum,media como Real;
	Definir notas como Real;
	Definir nombres Como Caracter;
	Escribir "Introduzca el número de alumnos del que quiera introducir sus datos:";
	Leer n_alu;
	Dimension notas[n_alu];
	Dimension nombres[n_alu];
	Escribir "Introduzca el nombre de los alumnos, por orden:";
	Para k<-0 Hasta n_alu-1 Con Paso k+1 Hacer
		Leer nombres[k];
	FinPara
	Escribir "Introduzca las notas de los alumnos:";
	Mientras i<=n_alu-1 Hacer
		Leer notas[i];
		Si notas[i]>=0&notas[i]<=10 Entonces
			acum<-acum+notas[i];
			i<-i+1;
		SiNo
			Escribir "Valor erróneo, por favor, introduzca una nota que esté entre 0 y 10.";
		FinSi
	FinMientras
	media<-acum/n_alu;
	Escribir "Nota media de la clase:",media;
	Escribir "Lista de notas que están por encima de la media:";
	Para j<-0 Hasta n_alu-1 Con Paso j+1 Hacer
		Si notas[j]>=media Entonces
			Escribir nombres[j],":",notas[j];
		FinSi
	FinPara
FinAlgoritmo
