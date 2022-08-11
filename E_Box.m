%perfoms the Expansion p box
%takes in 32 bit text and outputs 48 bits permuted text

function permuted48bits = E_Box(half32bits)
  ETable = [32,1,2,3,4,5,4,5,6,7,8,9,8,9,10,11,12,13,12,13,14,15,16,17,16,17,18,19,20,21,20,21,22,23,24,25,24,25,26,27,28,29,28,29,30,31,32,1];

  permuted48bits = zeros(1,48);

  for i = 1 : 48
    permuted48bits(i) = half32bits(ETable(i));
  end
end
