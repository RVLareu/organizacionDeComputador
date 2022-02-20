#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "gcd.h"

#define VERSION 1.1

void mensaje_ayuda() {
  	printf("Usage: \n");
	printf("	tp1 -h \n");
	printf("	tp1 -V \n");
	printf("	tp1 -i in_file -o outfile \n");
	printf("Options: \n ");
	printf("	-V, --version     Print version and quit.\n" );
	printf("	-h, --help        Print this information and quit. \n");
	printf("	-i, --input       Specify input stream/file, '-' for stdin. \n");
	printf("	-o, --output      Specify output stream/file, '-' for stdout \n");
	printf("	-d, --decode      Decode a base64-encoded file. \n");
	printf("Examples: \n");
	printf("	tp1 < in.txt > out.txt \n");
	printf("	cat in.txt | tp1 -i - > out.txt \n");
}

int main(int argc,char* argv[]){
	char* input;
	char* output;
	int modo_out=0;	// 0: file | 1: stdout
	int modo_in=0;		// 0: file | 1: stdout

	FILE * file_in;	
	FILE * file_out;

	if (strcmp(argv[1], "-i")==0) {
		if (strcmp(argv[2], "-")==0) {
			modo_in = 1;
			file_in = stdin;
		}
		else {
			input = argv[2];
		}
	}
	

	if (strcmp(argv[3], "-o")==0) {
		if (strcmp(argv[4], "-")==0) {
			modo_out=1;
			file_out=stdout;
		}
		else {
			output=argv[4];
		}
	}

	if (argc == 2 && strcmp(argv[1], "-h") == 0) {
		mensaje_ayuda();
		return 0;
	}

	if (argc == 2 && strcmp(argv[1], "-V") == 0) {
		printf("Versión del TP: %.1f \n", VERSION);
		return 0;
	}


	if (modo_in==0) {
		file_in = fopen(input,"r");
		//verifico que abri bien el archivo
		if (file_in==NULL){
			return -1;
		}
	}
	
	if(modo_out==0) {
		file_out = fopen(output,"w");
		//verifico que abri bien el archivo
		if (file_out==NULL){
			return -1;
		}
	}
	
	struct gcd* puntero;
	size_t largo_array;
	int i=0;
	//creo buffer para almacenar linea
	char buffer[50];	
	
	if (modo_in==0) {
		while(!feof(file_in)){
			if ((fgets(buffer,50, file_in) != NULL) && (buffer[0] != '\n')) {	
				i++;
			}
		}		
		rewind(file_in);
	} else {
		i=100;
	}
	
	if (i < 1) {
		//Cierro los archivos
		if(modo_in==0){	
			fclose(file_in);
		}
		if(modo_out==0){
			fclose(file_out);
		}
		return -1;
	}
	
	//Declaracion del arreglo
	struct gcd gcds[i];
	
		
	i=0;
	//feof verifica si estoy en el final del archivo (devuelve True si estoy en el final)
	while(!feof(file_in)){	
		//leo linea y asigno lo que lea a posiciones del struct
		if ((fgets(buffer,50, file_in) != NULL) && (buffer[0] != '\n')) {
			struct gcd* p = gcds + i;
			sscanf(buffer,"%d %d", &p->num_a,&p->num_b);
			i++;
		}
	}
	puntero =gcds;
	largo_array = i;
	
		
	//LLAMO A EUCLIDES y le paso puntero al array y largo_array
	if (largo_array > 0) {
		euclides(puntero,largo_array);
	}
	
	//recorro el struct para printear la salida y escribir el .txt si hace falta
	for (i=0;i<largo_array;i++){
		fprintf(file_out, "GCD(%d,%d) = %d \n", gcds[i].num_a,gcds[i].num_b,gcds[i].gcd_ab);
	}
	//Cierro los archivos
	if(modo_in==0){	
		fclose(file_in);
	}
	if(modo_out==0){
		fclose(file_out);
	}
	return 0;
}
