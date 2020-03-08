set terminal png size 800,600
set output 'autoTestGraph.png'

# Set keys (which are labels)
set xlabel 'Matrix size'
set ylabel 'Time (sec)'
set title 'Matrix Multiplication Speed Comparison'
plot "log.txt" using 1:2 title 'Non-Vectorized' with linespoint, "log.txt" using 1:3 title 'Vectorized' with linespoint

