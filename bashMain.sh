#!/bin/bash

for music_num in 1 2 3 4 5 6 7 8 11 12 13 14 15 16 17 18
do
    for nb in 20 30 40 50 60
    do
    for seed in 1 2 3 4 5 6 7 8 9 10
        do
            echo main\(${music_num},${nb},${seed}\)\;exit\;
        done
    done
done \
| xargs -L 1 -P 6 /home/kamo/MATLAB/R2019a/bin/matlab -nodesktop -nosplash -r