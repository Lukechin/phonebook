reset
set ylabel 'time(sec)'
set style fill solid
set title 'performance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:][:0.150]'output.txt' using 2:xtic(1) with histogram title 'orig (136 bytes)', \
'' using ($0-0.25):($2+0.005):2 with labels title ' ', \
'' using 3:xtic(1) with histogram title 'opt (24 bytes)'  , \
'' using ($0-0.05):($3+0.003):3 with labels title ' ', \
'' using 4:xtic(1) with histogram title 'opt2 (32 bytes)', \
'' using ($0+0.15):($4+0.008):4 with labels title ' ', \
'' using 5:xtic(1) with histogram title 'hash (136 bytes)', \
'' using ($0+0.40):($5+0.005):5 with labels title ' ', \
