function bashMain(IR_cond, wav_number, nb, seed)
%% setup params
% seed = 4;
% IR_cond = "JR1_2mic_1";
% wav_number = "music1"
it = 2000;
% nb = 20;
ns = 2;

fsResample = 16000;
fftSize = 2048;
shiftSize= 512; %round(fftSize/4);

calc_sdr_ratio = 0; % other than 0 are not implemented 
isWhitening    = false; % ture is not implemented
isOutputWav    = false;
isCalcCost     = false; % true is not inplemented
isPrintVerbose = false; % true is not inplemented
isSaveMat      = true;

date    = datetime('now','TimeZone','Asia/Tokyo');
exp_id  = 'exp13_1';
method  = 'MNMF';
purpose = 'for journal';
memo    = '';

%% Main
fprintf("begin MNMF\n");
fprintf("        IR_cond: %s\n", IR_cond);
fprintf("     wav_number: %s\n", wav_number);
fprintf("number of bases: %d\n", nb);
fprintf("           seed: %d\n", seed);
[ ~,~,~,~,~,~,~,~,~ ] ...
    = main( IR_cond, wav_number, seed, it, nb, ns, fsResample, fftSize, shiftSize, ...
            calc_sdr_ratio, isWhitening, isOutputWav, isCalcCost, isPrintVerbose, isSaveMat, false, ...
            date, exp_id, method, purpose, memo);
end
