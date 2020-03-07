#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

int main(int argc, char** argv) {
	
	/* for comparing times of each multiplication */
	struct timespec before;
	struct timespec after;
    timespec_get(&before, TIME_UTC);
	double deltaT;
	
	if(argc < 2) {
		printf("Valid syntax: matrixTestDriver <int>\n");
		exit(EXIT_FAILURE);
	}
	
	int size = atoi(argv[1]);
	if(!size || size < 1) {
	  printf("Valid syntax: matrixTestDriver <int>\n");
		exit(EXIT_FAILURE);
	}

	printf("Creating matrix 'a' of size %d x %d\n", size, size);
	double* a = gen_matrix(size, size);

	printf("Creating matrix 'b' of size %d x %d\n", size, size);
	double* b = gen_matrix(size, size);

	

	printf("Multiplying matrix 'a' and 'b'\n");
	timespec_get(&before, TIME_UTC);
	double* c = gen_matrix(size, size);
	int success_1 = mmult(c, a, size, size, b, size, size);
	/* timespec_get(&after, TIME_UTC);
	deltaT = deltaTime(before.tv_nsec, after.tv_nsec);
	printf("Time : .%09ld \n", deltaT); */
	
	
	printf("Multiplying matrix 'a' and 'b' vectorized\n");
	timespec_get(&before, TIME_UTC);
	int success_2 = mmult_vectorized(c, a, size, size, b, size, size);
	/* timespec_get(&after, TIME_UTC);
	deltaT = deltaTime(before.tv_nsec, after.tv_nsec);
	printf("Time : .%09ld \n", deltaT); */
	
	
	

}