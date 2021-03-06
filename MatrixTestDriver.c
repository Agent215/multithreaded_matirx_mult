#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include "mat.h"


int main(int argc, char** argv) {

	/* for comparing times of each multiplication */
	struct timespec before;
	struct timespec after;
	double deltaT;

	/* im using the clock, but the deltaT function that came with the codebase
		uses timespec structs. Not sure which one is better
	*/
	clock_t start, end ,start2 ,end2;
    double cpu_time_used, cpu_time_used_vectorized;


	if(argc < 2) {
		printf("Valid syntax: matrixTestDriver <int>\n");
		exit(EXIT_FAILURE);
	}

	int size = atoi(argv[1]);
	if(!size || size < 1) {
	  printf("Valid syntax: matrixTestDriver <int>\n");
		exit(EXIT_FAILURE);
	}


	/* printf("Creating matrix 'a' of size %d x %d\n", size, size); */
	double* a = gen_matrix(size, size);
	/*  print_matrix(a, size, size); */

	/* printf("Creating matrix 'b' of size %d x %d\n", size, size); */
	double* b = gen_matrix(size, size);
	/* print_matrix(b, size, size); */



	/* printf("Multiplying matrix 'a' and 'b'\n"); */

	double *c = malloc(size * size * sizeof(double));
	c = gen_matrix(size, size);
	start = clock();
	int success_1 = mmult(c, a, size, size, b, size, size);
	end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;

	/* print_matrix(c, size, size); */

	/* printf("Multiplying matrix 'a' and 'b' vectorized\n"); */
	start2 = clock();
	int success_2 = mmult_vectorized(c, a, size, size, b, size, size);
	end2 = clock();
	cpu_time_used_vectorized = ((double) (end2 - start2)) / CLOCKS_PER_SEC;
	printf("%i %lf %lf\n",size, cpu_time_used, cpu_time_used_vectorized);




}
