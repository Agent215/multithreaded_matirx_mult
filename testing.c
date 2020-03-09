#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

int main(int argc, char** argv) {

	FILE * file;



	if(argc < 2) {
		printf("Valid syntax: matrixTestDriver <int>\n");
		exit(EXIT_FAILURE);
	}
	
	int size = atoi(argv[1]);
	if(!size || size < 1) {
	  printf("Valid syntax: matrixTestDriver <int>\n");
		exit(EXIT_FAILURE);
	}
	
double* a = gen_matrix(size, size);	
file = fopen("testMatrix.txt", "wb");

for(int i = 0; i < size; i++) {
        for(int j = 0; j < size; j++) {
           
			fwrite(a[size * i + j],sizeof(double),1, file);
        }
		fwrite("\n",sizeof(char),1, file);
    }



}