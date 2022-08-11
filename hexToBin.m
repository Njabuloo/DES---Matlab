%converting from hexidecimal to binVec
%takes in a string and return a int vector

function binVec = hexTobinVec(x)
  temp = x; %temporary variable to the string containing the hex values
  for i = 1 : length(temp)
      if temp(i) == 'F'
          binVec((i*4)-3:i*4) = [1 1 1 1];
      elseif temp(i) == 'E'
          binVec((i*4)-3:i*4) = [1 1 1 0];
      elseif temp(i) == 'D'
          binVec((i*4)-3:i*4) = [1 1 0 1];
      elseif temp(i) == 'C'
          binVec((i*4)-3:i*4) = [1 1 0 0];
      elseif temp(i) == 'B'
          binVec((i*4)-3:i*4) = [1 0 1 1];
      elseif temp(i) == 'A'
          binVec((i*4)-3:i*4) = [1 0 1 0];
      elseif temp(i) == '9'
          binVec((i*4)-3:i*4) = [1 0 0 1];
      elseif temp(i) == '8'
          binVec((i*4)-3:i*4) = [1 0 0 0];
      elseif temp(i) == '7'
          binVec((i*4)-3:i*4) = [0 1 1 1];
      elseif temp(i) == '6'
          binVec((i*4)-3:i*4) = [0 1 1 0];
      elseif temp(i) == '5'
          binVec((i*4)-3:i*4) = [0 1 0 1];
      elseif temp(i) == '4'
          binVec((i*4)-3:i*4) = [0 1 0 0];
      elseif temp(i) == '3'
          binVec((i*4)-3:i*4) = [0 0 1 1];
      elseif temp(i) == '2'
          binVec((i*4)-3:i*4) = [0 0 1 0];
      elseif temp(i) == '1'
          binVec((i*4)-3:i*4) = [0 0 0 1];
      elseif temp(i) == '0'
          binVec((i*4)-3:i*4) = [0 0 0 0];
      end
end
