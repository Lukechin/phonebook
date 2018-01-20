reset
set ylabel 'time(sec)'
set style fill solid
set title 'performance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:][:0.150]'output.txt' using 2:xtic(1) with histogram title 'orig', \
'' using ($0-0.08):($2+0.005):2 with labels title ' ', \
'' using 3:xtic(1) with histogram title 'opt'  , \
'' using ($0+0.08):($3+0.003):3 with labels title ' ', \
'' using 4:xtic(1) with histogram title 'opt2', \
'' using ($0+0.35):($4+0.008):4 with labels title ' ', \
