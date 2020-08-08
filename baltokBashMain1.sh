#!/bin/bash
EXP_DISC='exp13_1_E2A'
# IR_cond_list=('JR1-trunc_2mic_1' 'JR2-trunc_2mic_1' 'OFC-trunc_2mic_1' 'JR1-exp_2mic_1' 'JR2-exp_2mic_1' 'OFC-exp_2mic_1')
# IR_cond_list=('JR1-trunc_2mic_1' 'OFC-trunc_2mic_1')
IR_cond_list=('E2A_2mic_1' 'E2A_2mic_2')
wav_number_list=('music1' 'music2' 'music3' 'music4' 'music5' 'music6' 'music7' 'music8')
# wav_number_list=('speech1' 'speech2' 'speech3' 'speech4' 'speech5' 'speech6')
nb_list=(60 50 40)
seeds=(1 2 3 4 5 6 7 8 9 10)

python ../bss_input/slack_notifier.py START MNMF ${EXP_DISC}
for IR_cond in "${IR_cond_list[@]}"
do
	for wav_number in "${wav_number_list[@]}"
	do
		for nb in "${nb_list[@]}"
		do
			for seed in "${seeds[@]}"
			do
				echo bashMain\('\'\'${IR_cond}'\'\','\'\'${wav_number}'\'\',${nb},${seed}\)\;exit\;
			done
		done
	done
done \
| xargs -L 1 -P 10 /usr/local/MATLAB/R2019a/bin/matlab -nodesktop -nosplash -r
python ../bss_input/slack_notifier.py FINISH MNMF ${EXP_DISC}
