function [ mix, s, n, coef ] = SNRmix( x1, x2, SNR )
%
% Corded by D. Kitamura (d-kitamura@nii.ac.jp) on 2 Jan. 2016.
%
% This function calculates a mixture of two input signals with a desired SNR.
% This function supports multichannel signals.
%
% see also
% http://d-kitamura.sakura.ne.jp/index.html
%
% [syntax]
%   [ mix, s, n, coef ] = SNRmix( x1, x2 )
%   [ mix, s, n, coef ] = SNRmix( x1, x2, SNR )
%
% [inputs]
%     x1: input signal 1 (length x nMICs)
%     x2: input signal 2 (length x nMICs)
%    SNR: desired SNR [dB] (default = 0)
%
% [outputs]
%    mix: mixed signal with specified SNR (length x nMICs)
%      s: first signal in the mixture signal (length x nMICs)
%      n: second signal in the mixture signal (length x nMICs)
%   coef: mixture coefficient (scalar)

% Check errors and set default values
[ length, nMICs ] = size( x1 );
if size(x2,1) ~= length || size(x2,2) ~= nMICs
    error('The input signals are incorrect.\n')
end
if (nargin<2)
    error('Too few input arguments.\n');
end
if (nargin<3)
    SNR = 0;
end

if length < nMICs
    [ mix, s, n, coef ] = SNRmix( x1.', x2.', SNR );
else
    squareSums = zeros(2,1);
    for m = 1 : nMICs
        squareSums(1,1) = squareSums(1,1) + ( x1(:,m)' * x1(:,m) );
        squareSums(2,1) = squareSums(2,1) + ( x2(:,m)' * x2(:,m) );
    end
    inSNR = 10*log10( ( squareSums(1,:) ) ./ ( squareSums(2,:) ) );
    coef = ( 10 ^ ( ( inSNR - SNR )  / 20 ) );
    s = x1;
    n = x2 .* coef;
    mix = s + n;
    normCoef = max(max(abs(mix)));
    if  normCoef >= 1
        mix = mix ./ normCoef;
        n = n ./ normCoef;
        s = s ./ normCoef;
        fprintf('The signals are normalized.\n');
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%