%used to perfom circular shift on keys
%either shifts by 1 or 2 depending on each round
% x - new shifted key
% y - half key needed to be shifted
% i - index of the round

function x = shift(y,i)
  bitsShiftTable = [1,1,2,2,2,2,2,2,1,2,2,2,2,2,2,1];

  if bitsShiftTable(i) == 1
    for j = 1 : 27
      x(j) = y(j + 1);
    end
    x(28) = y(1);
  else
    for j = 1 : 26
      x(j) = y(j + 2);
    end
    x(27) = y(1);
    x(28) = y(2);
  end
end
