PGMS= mmult_mpi mmult_omp_timing matrix_times_vector hello test_mmult test_mmult_optimized mxv_omp_mpi mmult_mpi_omp_file mmult_mpi_omp test_Driver_optimized test_Driver

all:	${PGMS}

mmult_mpi:	mmult_mpi.c mat.c
	mpicc -O3 -o mmult_mpi mmult_mpi.c mat.c

mmult_mpi_omp_file:		mmult.o mmult_mpi_omp_file.o mat.c
	mpicc -o mmult_mpi_omp_file -fopenmp -O3 mmult.o mmult_mpi_omp_file.o mat.c

mmult_mpi_omp:		mmult.o mmult_mpi_omp.o mat.c
	mpicc -o mmult_mpi_omp -fopenmp -O3 mmult.o mmult_mpi_omp.o mat.c

mmult_mpi_omp.o:	mmult_mpi_omp.c
	mpicc -c -fopenmp -O3 mmult_mpi_omp.c

mmult_mpi_omp_file.o:	mmult_mpi_omp_file.c
	mpicc -c -fopenmp -O3 mmult_mpi_omp_file.c

mmult_omp_timing:	mmult.o mmult_omp.o mmult_omp_timing.o mat.c
	gcc -o mmult -fopenmp -O3 mmult.o mmult_omp.o mmult_omp_timing.o mat.c -o mmult_omp_timing

mat.o:	mat.c
	gcc -c mat.c 

mmult.o:	mmult.c
	gcc -c mmult.c

mmult_omp.o:	mmult_omp.c
	gcc -c -O3 -fopenmp mmult_omp.c

mmult_omp_timing.o:	mmult_omp_timing.c
	gcc -c -O3 mmult_omp_timing.c

matrix_times_vector:	matrix_times_vector.c mat.c
	mpicc -O3 -o matrix_times_vector matrix_times_vector.c mat.c

hello:	hello.c
	mpicc -O3 -o hello hello.c

mxv_omp_mpi:	mxv_omp_mpi.c mat.c
	mpicc -fopenmp -O3 -o mxv_omp_mpi mxv_omp_mpi.c mat.c

test_mmult:	test_mmult.c mmult.c mat.c
	gcc test_mmult.c mmult.c mat.c -lm -o test_mmult

test_mmult_optimized:	test_mmult.c mmult.c mat.c
	gcc -O3 test_mmult.c mmult.c mat.c -lm -o test_mmult_optimized
	
test_Driver_optimized:	test_mmult.c mmult.c mat.c
	gcc -O3 -g MatrixTestDriver.c mmult.c mat.c -o test_Driver_optimized
	
test_Driver:	test_mmult.c mmult.c mat.c
	gcc -g MatrixTestDriver.c mmult.c mat.c -o test_Driver	

clean:
	rm -f *.o
	rm -f ${PGMS}
