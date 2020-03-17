#ifndef MAT_H
#define MAT_H

double *gen_matrix(int n, int m);
int compare_matrices(double* a, double* b, int nRows, int nCols);
double *read_matrix_from_file(const char *path);
void get_dim_from_file(const char *path, int *r, int *c);
void print_matrix(double *a, int nrows, int ncols);

int mmult(double *c, 
          double *a, int aRows, int aCols, 
          double *b, int bRows, int bCols);

int mmult_vectorized(double *c, 
          double *a, int aRows, int aCols, 
          double *b, int bRows, int bCols);

int mmult_omp(double *c,
		      double *a, int aRows, int aCols,
		      double *b, int bRows, int bCols);

int rowColToPosition(int row, int col, int nCols);

#endif
