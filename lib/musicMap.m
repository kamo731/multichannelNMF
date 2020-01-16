function [ sig, fs ] = musicMap(music_num)

switch music_num
    case 1
        [sig(:,:,1), fs] = audioread('./input/condition1/music1/ymh_pf_130_2123.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition1/music1/ymh_fl_50_2123.wav'); % signal x channel x source
    case 2
        [sig(:,:,1), fs] = audioread('./input/condition1/music2/ymh_ob_130_2123.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition1/music2/ymh_fl_50_2123.wav'); % signal x channel x source
    case 3
        [sig(:,:,1), fs] = audioread('./input/condition1/music3/ymh_vn_130_2123.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition1/music3/ymh_hp_50_2123.wav'); % signal x channel x source
    case 4
        [sig(:,:,1), fs] = audioread('./input/condition1/music4/ymh_vn_130_2123.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition1/music4/ymh_vc_50_2123.wav'); % signal x channel x source
    case 5
        [sig(:,:,1), fs] = audioread('./input/condition1/music5/ymh_ob_130_2123.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition1/music5/ymh_vc_50_2123.wav'); % signal x channel x source
    case 6
        [sig(:,:,1), fs] = audioread('./input/condition1/music6/ymh_vn_130_2123.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition1/music6/ymh_tp_50_2123.wav'); % signal x channel x source
    case 7
        [sig(:,:,1), fs] = audioread('./input/condition1/music7/ymh_fg_130_2123.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition1/music7/ymh_fl_50_2123.wav'); % signal x channel x source
    case 8
        [sig(:,:,1), fs] = audioread('./input/condition1/music8/ymh_fg_130_2123.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition1/music8/ymh_tp_50_2123.wav'); % signal x channel x source
    case 11
        [sig(:,:,1), fs] = audioread('./input/condition2/music1/ymh_pf_110_2223.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition2/music1/ymh_fl_50_2223.wav'); % signal x channel x source
    case 12
        [sig(:,:,1), fs] = audioread('./input/condition2/music2/ymh_ob_110_2223.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition2/music2/ymh_fl_50_2223.wav'); % signal x channel x source
    case 13
        [sig(:,:,1), fs] = audioread('./input/condition2/music3/ymh_vn_110_2223.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition2/music3/ymh_hp_50_2223.wav'); % signal x channel x source
    case 14
        [sig(:,:,1), fs] = audioread('./input/condition2/music4/ymh_vn_110_2223.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition2/music4/ymh_vc_50_2223.wav'); % signal x channel x source
    case 15
        [sig(:,:,1), fs] = audioread('./input/condition2/music5/ymh_ob_110_2223.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition2/music5/ymh_vc_50_2223.wav'); % signal x channel x source
    case 16
        [sig(:,:,1), fs] = audioread('./input/condition2/music6/ymh_vn_110_2223.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition2/music6/ymh_tp_50_2223.wav'); % signal x channel x source
    case 17
        [sig(:,:,1), fs] = audioread('./input/condition2/music7/ymh_fg_110_2223.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition2/music7/ymh_fl_50_2223.wav'); % signal x channel x source
    case 18
        [sig(:,:,1), fs] = audioread('./input/condition2/music8/ymh_fg_110_2223.wav'); % signal x channel x source
        [sig(:,:,2), fs] = audioread('./input/condition2/music8/ymh_tp_50_2223.wav'); % signal x channel x source
end

end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%