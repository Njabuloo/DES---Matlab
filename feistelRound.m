%perfoms DES round
%takes in 64 bit text and returns two 32 bit halves

function [left32bit, right32bit] = feistelRound(text64bit, i, ki)
  leftTemp = zeros(1,32);
  leftTemp(:) = text64bit(1:32);
  rightTemp = zeros(1,32);
  rightTemp(:) = text64bit(33:64);
  
  left32bit = zeros(1,32);
  left32bit(:) = rightTemp(1:32);
  %perfoms the Expansion permutation
  rightpermuted48bits = E_Box(rightTemp);

  %perfoms the exclusive or operation with the rounds key
  rightnewtext = xor(rightpermuted48bits,ki);

  %perfoms the s-box substitution
  righttext32bits = S_Box(rightnewtext);

  %perfoms the p-straight permutation
  permutatedRight = P_Box(righttext32bits);

  %perfoms xor on the permutated text with left32bits
  right32bit = xor(leftTemp,permutatedRight);

end
