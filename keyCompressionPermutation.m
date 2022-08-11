%compression permutation
%reduces the 56 bit key to 48 bits
%removes the parity bits(every 8 bit)

function ki = keyCopmpressionPermutation(kir)
  permutationTable = [14,17,11,24,1,5,3,28,15,6,21,10,23,19,12,4,26,8,16,7,27,20,13,2,41,52,31,37,47,55,30,40,51,45,33,48,44,49,39,56,34,53,46,42,50,36,29,32];
  ki = zeros(1,48);

  for  i = 1 : 48
    ki(i) = kir(permutationTable(i));
  end
end
