Algoritmo notas_definitivo
	Definir i,j,n_alu como Entero;
	Definir acum,media como Real;
	Definir notas como Real;	
	Escribir "Introduzca el n�mero de alumnos del que quiera introducir sus notas:";
	Leer n_alu;
	Dimension notas[n_alu];
	Escribir "Introduzca las notas de los alumnos:";
	Mientras i<=n_alu-1 Hacer
		Leer notas[i];
		Si notas[i]>=0&notas[i]<=10 Entonces
			acum<-acum+notas[i];
			i<-i+1;
		SiNo
			Escribir "Valor err�neo, por favor, introduzca una nota que est� entre 0 y 10.";
		FinSi
	FinMientras
	media<-acum/n_alu;
	Escribir "Nota media de la clase:",media;
	Escribir "Lista de notas que est�n por encima de la media:";
	Para j<-0 Hasta n_alu-1 Con Paso j+1 Hacer
		Si notas[j]>=media Entonces
			Escribir notas[j];
		FinSi
	FinPara
FinAlgoritmo
