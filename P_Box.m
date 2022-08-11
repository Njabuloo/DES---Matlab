%perfoms the straignt p box


function cipherText = P_Box(half32bits)
  PTable = [16,7,20,21,29,12,28,17,1,15,23,26,5,18,31,10,2,8,24,14,32,27,3,9,19,13,30,6,22,11,4,25];

  cipherText = zeros(1,32);

  for i = 1 : 32
    cipherText(i) = half32bits(PTable(i));
  end
end
