%key generating function
%generates random key depending on the round number
%kri - key used to generate ki for the next round
%ki - current round key
% i - round number

function [ki,kri] = keyGeneration(key,i)
  %split 56-bit key into two halves(28 bits each)
  leftSubKey(:) = key(1 : 28);
  rightSubKey(:) = key(29:56);

  %circular shift each halve
  tempLeft = shift(leftSubKey,i);
  tempRight = shift(rightSubKey,i);

  kri = [tempLeft, tempRight];
  ki = zeros(1,48);
  ki = keyCompressionPermutation(kri);

end
