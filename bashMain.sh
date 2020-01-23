#!/bin/bash

for music_num in 21 22 23 24 25 26;do for seed in 1 2 3 4 5 6 7 8 9 10;do for nb in 10 20 30 40 50 60;do echo main\(${seed},${music_num},${nb}\)\;exit\;;done;done;done | xargs -L 1 -P 6 /usr/local/MATLAB/R2019a/bin/matlab -nodesktop -nosplash -r
