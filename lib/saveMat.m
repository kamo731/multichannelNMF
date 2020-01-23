function saveMat( root_dir, music_num, seed, fftSize, shiftSize, K, it, SDR, SIR, SAR, SDRimp, SIRimp, cost )
%% Edit
switch music_num
    case 1
        music_fname = "music1_pf_fl_con1";
    case 2
        music_fname = "music2_ob_fl_con1";
    case 3
        music_fname = "music3_vn_hp_con1";
    case 4
        music_fname = "music4_vn_vc_con1";
    case 5
        music_fname = "music5_ob_vc_con1";
    case 6
        music_fname = "music6_vn_tp_con1";
    case 7
        music_fname = "music7_fg_fl_con1";
    case 8
        music_fname = "music8_fg_tp_con1";
    case 11
        music_fname = "music1_pf_fl_con2";
    case 12
        music_fname = "music2_ob_fl_con2";
    case 13
        music_fname = "music3_vn_hp_con2";
    case 14
        music_fname = "music4_vn_vc_con2";
    case 15
        music_fname = "music5_ob_vc_con2";
    case 16
        music_fname = "music6_vn_tp_con2";
    case 17
        music_fname = "music7_fg_fl_con2";
    case 18
        music_fname = "music8_fg_tp_con2";
    case 21
        music_fname = "speech1_f1_f2_con1";
    case 22
        music_fname = "speech2_f3_f4_con1";
    case 23
        music_fname = "speech3_m1_m2_con1";
    case 24
        music_fname = "speech4_m3_m4_con1";
    case 25
        music_fname = "speech5_m1_f2_con1";
    case 26
        music_fname = "speech6_m3_f4_con1";
    case 31
        music_fname = "speech1_f1_f2_con1";
    case 32
        music_fname = "speech2_f3_f4_con1";
    case 33
        music_fname = "speech3_m1_m2_con1";
    case 34
        music_fname = "speech4_m3_m4_con1";
    case 35
        music_fname = "speech5_m1_f2_con1";
    case 36
        music_fname = "speech6_m3_f4_con1";
end

%% file name
date_fname    = string(datetime('now','TimeZone','Asia/Tokyo','Format','yyMMdd_HHmmss'));
seed_fname    = strcat("seed", num2str(seed));
fftSize_fname = strcat("fftSize",num2str(fftSize));
shift_fname   = strcat("shift",num2str(shiftSize));
nb_fname      = strcat("nb",num2str(K));
it_fname      = strcat("it",num2str(it));

fname_arr = [ date_fname, music_fname, fftSize_fname, shift_fname, nb_fname, it_fname, seed_fname ];
filename = join(fname_arr,'_');

%% directory name
nob_dir = strcat("/nob_", num2str(K));
dirname = strcat(root_dir, music_fname);
dirname = strcat(dirname, nob_dir);

if ~(exist(dirname,'dir')==7)
    mkdir(dirname)
end
dirname = strcat(dirname, "/");

%% save
filepath = strcat(dirname, filename);
save_mat(filepath, SDR, SIR, SAR, SDRimp, SIRimp, cost);
%             save(strcat(filepath, '.mat'),'SDR','SDRimp','SIR','SIRimp','SAR','cost');

fprintf("%s Saved\n", strcat(filepath, '.mat'));
end

function save_mat(filepath, SDR, SIR, SAR, SDRimp, SIRimp, cost)
save(strcat(filepath, '.mat'),'SDR','SDRimp','SIR','SIRimp','SAR','cost');
end
