function [alfabeto,outputs] = prprob()
%PRPROB Character recognition problem definition
%  
%  [ALHABET,TARGETS] = PRPROB()
%  Returns:
%    ALPHABET - 35x26 matrix of 5x7 bit maps for each letter.
%    TARGETS  - 26x26 target vectors.

% Mark Beale, 1-31-92
% Revised 12-15-93, MB.
% Copyright 1992-2002 The MathWorks, Inc.

letterA =  [0 0 1 0 0 ...
            0 1 0 1 0 ...
            0 1 0 1 0 ...
            1 0 0 0 1 ...
            1 1 1 1 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ]';

lettera =  [0 0 0 0 0 ...
            0 0 0 0 0 ...
            1 1 1 1 0 ...
            0 0 0 1 0 ...
            1 1 1 1 0 ...
            1 0 0 1 0 ...
            1 1 1 1 1 ]';

letterB =  [1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ]';
        
letterb =  [1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ]';

letterC =  [0 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 1 ...
            0 1 1 1 0 ]';
        
letterc =  [0 0 0 0 0 ...
            0 0 0 0 0 ...
            0 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 0 ...
            1 0 0 0 1 ...
            0 1 1 1 0 ]';

letterD  = [1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ]';
        
letterd  = [0 0 0 0 1 ...
            0 0 0 0 1 ...
            0 0 0 0 1 ...
            0 1 1 1 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            0 1 1 1 0 ]';

letterE  = [1 1 1 1 1 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 1 ]';
        
lettere  = [0 0 0 0 0 ...
            0 0 0 0 0 ...
            1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ...
            1 0 0 0 0 ...
            1 1 1 1 1 ]';

letterF =  [1 1 1 1 1 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ]';
        
letterf =  [0 1 1 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ]';

letterG =  [0 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 1 1 ...
            1 0 0 0 1 ...
            0 1 1 1 0 ]';
        
letterg =  [0 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            0 1 1 1 1 ...
            0 0 0 0 1 ...
            1 0 0 0 1 ...
            0 1 1 1 0 ]';

letterH =  [1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ]';
letterh =  [1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ]';

letterI =  [0 1 1 1 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 1 1 1 0 ]';
        
letteri =  [0 0 0 0 0 ...
            0 0 1 0 0 ...
            0 0 0 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 1 1 1 0 ]';

letterJ =  [1 1 1 1 1 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            1 0 1 0 0 ...
            0 1 0 0 0 ]';
        
letterj =  [0 0 0 0 0 ...
            0 0 1 0 0 ...
            0 0 0 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            1 0 1 0 0 ...
            0 1 0 0 0 ]';

alfabeto = [letterA,lettera,letterB,letterb,letterC,letterc,letterD, ...
            letterd,letterE,lettere,letterF,letterf,letterG,letterg,...
            letterH,letterh,letterI,letteri,letterJ,letterj];
outputs = eye(20);
