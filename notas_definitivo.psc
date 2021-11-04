Algoritmo notas_definitivo
	Definir i,j,k,l,n_alu como Entero;
	Definir acum,media_curso,media_alu como Real;
	Definir notas como Real;
	Definir nombres Como Caracter;
	Escribir "Introduzca el número de alumnos del que quiera introducir sus datos:";
	Leer n_alu;
	Dimension notas[n_alu,3];
	Dimension nombres[n_alu];
	Dimension media_alu[n_alu];
	Escribir "Introduzca el nombre de los alumnos, por orden:";
	Para k<-0 Hasta n_alu-1 Con Paso k+1 Hacer
		Leer nombres[k];
	FinPara
	Para l<-0 Hasta 2 Con Paso l+1 Hacer
		Si (l=0) Entonces
			Escribir"Introduzca las notas de los alumnos en el 1er trimestre:";
		FinSi
		Si (l=1) Entonces
			Escribir"Introduzca las notas de los alumnos en el 2do trimestre:";
		FinSi
		Si (l=2) Entonces
			Escribir"Introduzca las notas de los alumnos en el 3er trimestre:";
		FinSi
		i<-0;
		Mientras i<=n_alu-1 Hacer
			Leer notas[i,l];
			Si notas[i,l]<=0&notas[i,l]>=10 Entonces
				Escribir "Valor erróneo, por favor, introduzca una nota que esté entre 0 y 10.";
			SiNo
				i<-i+1;
			FinSi
		FinMientras
	FinPara
	i<-0;
	Para i<-0 Hasta n_alu-1 Con Paso i+1 Hacer
		media_alu[i]<-(notas[i,0]+notas[i,1]+notas[i,2])/3;
		acum<-acum+media_alu[i];
	FinPara
	media_curso<-acum/n_alu;
	Escribir"La nota media de la clase durante el curso es:",media_curso;
	Escribir"Lista de alumnos que han tenida una nota media por encima de la media de la clase:";
	Para j<-0 Hasta n_alu-1 Con Paso j+1 Hacer
		Si media_alu[j]>=media_curso Entonces
			Escribir nombres[j],":",media_alu[j];
		FinSi
	FinPara
FinAlgoritmo
