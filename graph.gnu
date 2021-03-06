set terminal png size 800,600
set output 'autoTestGraph.png'

# Set keys (which are labels)
set key left top
set xlabel 'Matrix size'
set ylabel 'Time (sec)'
set title 'Matrix Multiplication Speed Comparison'
plot "log.txt" using 1:2 title 'Non-Vectorized w/-O3' with linespoint, "log.txt" using 1:3 title 'Vectorized w/-O3' with linespoint, \
"log2.txt" using 1:2 title 'Non-Vectorized w/o -O3' with linespoint, "log2.txt" using 1:3 title 'Vectorized w/o -O3' with linespoint, \
"log3.txt" using 1:3 title 'openMP' with linespoint, "mpi_log.txt" using 1:2 title '5 nodes MPI' with linespoint, \
"mpi_omp_log.txt" using 1:2 title '5 nodes MPI w/ OMP' with linespoint

set terminal png size 800,600

set output 'MPI.png'

# Set keys (which are labels)
set key left top
set xlabel 'Matrix size'
set ylabel 'Time (sec)'
set title 'Matrix Multiplication Speed Comparison'
plot \
"mpi_log2.txt" using 1:2 title '2 nodes MPI' with linespoint, \
"mpi_log4.txt" using 1:2 title '4 nodes MPI' with linespoint, \
"mpi_log6.txt" using 1:2 title '6 nodes MPI' with linespoint, \
"mpi_log10.txt" using 1:2 title '10 nodes MPI' with linespoint, \
"mpi_log20.txt" using 1:2 title '20 nodes MPI' with linespoint







