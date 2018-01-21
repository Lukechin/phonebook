reset
set ylabel 'time(sec)'
set style fill solid
set title 'performance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:][:0.120]'output.txt' using 2:xtic(1) with histogram title 'orig (136 bytes)', \
'' using 3:xtic(1) with histogram title 'opt (24 bytes)'  , \
'' using 4:xtic(1) with histogram title 'opt2 (32 bytes)', \
'' using 5:xtic(1) with histogram title 'hash (136 bytes)', \
'' using 6:xtic(1) with histogram title 'hash2 (32 bytes)', \
'' using ($0-0.200):(0.060):2 with labels title ' ' textcolor lt 1, \
'' using ($0-0.200):(0.070):3 with labels title ' ' textcolor lt 2, \
'' using ($0-0.200):(0.080):4 with labels title ' ' textcolor lt 3, \
'' using ($0-0.200):(0.090):5 with labels title ' ' textcolor lt 4, \
'' using ($0-0.200):(0.100):6 with labels title ' ' textcolor lt 5  