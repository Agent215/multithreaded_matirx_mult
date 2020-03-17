set terminal png size 800,600
set output 'autoTestGraph.png'

# Set keys (which are labels)
set key left top
set xlabel 'Matrix size'
set ylabel 'Time (sec)'
set title 'Matrix Multiplication Speed Comparison'
plot "log.txt" using 1:2 title 'Non-Vectorized-opt' with linespoint, "log.txt" using 1:3 title 'Vectorized-opt' with linespoint, \
"log2.txt" using 1:2 title 'Non-Vectorized-non-opt' with linespoint, "log2.txt" using 1:3 title 'Vectorized-non-opt' with linespoint, \
"log3.txt" using 1:3 title 'openMP' with linespoint ,"mpi_log.txt" using 1:2 title '5 nodes MPI' with linespoint

set terminal png size 800,600

set output 'MPI.png'

# Set keys (which are labels)
set key left top
set xlabel 'Matrix size'
set ylabel 'Time (sec)'
set title 'Matrix Multiplication Speed Comparison'
plot "mpi_log5.txt" using 1:2 title '7 nodes MPI' with linespoint, \
"mpi_log6.txt" using 1:2 title '10 nodes MPI' with linespoint, \
"mpi_log7.txt" using 1:2 title '20 nodes MPI' with linespoint







