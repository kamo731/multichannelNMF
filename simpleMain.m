clear;
close all;
%% setup params
IR_cond = "E2A_2mic_1";
wav_number = "music1";
seed = 1;
it = 100;
nb = 50;
ns = 2;

fsResample = 16000;
fftSize = 2048;
shiftSize= 512;

calc_sdr_ratio = 0; % other than 0 are not implemented 
isWhitening    = false; % ture is not implemented
isOutputWav    = true;
isCalcCost     = false; % true is not inplemented
isPrintVerbose = false; % true is not inplemented
isSaveMat      = false;

date    = datetime('now','TimeZone','Asia/Tokyo');
exp_id  = 'exp16_calc_comp_time';
method  = 'MNMF';
purpose = '';
memo    = 'at bartok1';

%% Main
fprintf("begin MNMF\n");
fprintf("        IR_cond: %s\n", IR_cond);
fprintf("     wav_number: %s\n", wav_number);
fprintf("number of bases: %d\n", nb);
fprintf("           seed: %d\n", seed);
[ SDR, SIR, SAR, SDRimp, SIRimp, SDR_last, SIR_last, SAR_last, cost ] ...
    = main( IR_cond, wav_number, seed, it, nb, ns, fsResample, fftSize, shiftSize, ...
            calc_sdr_ratio, isWhitening, isOutputWav, isCalcCost, isPrintVerbose, isSaveMat, false,...
            date, exp_id, method, purpose, memo);