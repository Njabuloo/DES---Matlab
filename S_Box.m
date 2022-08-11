%perfoms the s-box substution
%takes in 48 bits and outputs 32 bits

function text32bits = S_Box(text48bits)
  %separate the 48 bit text into 8 groups of 6 bits
  temp = zeros(8,6);
  m = 1;
  for i = 1 : 8
    temp(i,:) = text48bits(m:m+5);
    m = m + 6;
  end

  text32bits = zeros(1,32);
  m =1;
  for i = 1 : 8
    %converting the row and column indexes from binary to decimal
    row = [0,0,temp(i,1),temp(i,6)];
    rowIndex = binToDec(row);
    column = [temp(i,2),temp(i,3),temp(i,4),temp(i,5)];
    columnIndex = binToDec(column);
    %s-box substitution
    temp1 = zeros(1,4);
    temp2 = (dec2bin((s_boxTable(i,rowIndex,columnIndex))) - '0');
    %add parity bits to the front
    if length(temp2) < 4
        if length(temp2) == 1
            temp1(4) = temp2(1);
        elseif length(temp2) ==2
            temp1(3:4) = temp2(1:2);
        elseif length(temp2) == 3
            temp1(2:4) = temp2(1:3);
        end
    else
        temp1(:) = temp2(:);
            
    end
    text32bits(m : m+3) = temp1;
    m = m + 4;
  end
end

function index = binToDec(vec)
  index = 8*vec(1) + 4*vec(2) + 2*vec(3) + vec(4);
end

function vec = s_boxTable(i,rowIndex,columnIndex)
  S_box1 = [14,4,13,1,2,15,11,8,3,10,6,12,5,9,0,7;0,15,7,4,14,2,13,1,10,6,12,11,9,5,3,8;4,1,14,8,13,6,2,11,15,12,9,7,3,10,5,0;15,12,8,2,4,9,1,7,5,11,3,14,10,0,6,13];

%S_box2
S_box2 = [15,1,8,14,6,11,3,4,9,7,2,13,12,0,5,10;3,13,4,7,15,2,8,14,12,0,1,10,6,9,11,5;0,14,7,11,10,4,13,1,5,8,12,6,9,3,2,5;13,8,10,1,3,15,4,2,11,6,7,12,0,5,14,9];


%S_box3
S_box3 = [10,0,9,14,6,3,15,5,1,13,12,7,11,4,2,8;13,7,0,9,3,4,6,10,2,8,5,14,12,11,15,1;13,6,4,9,8,15,3,0,11,1,2,12,5,10,14,7;1,10,13,0,6,9,8,7,4,15,14,3,11,5,2,12];

%S_box4
S_box4 = [ 7,13,14,3,0,6,9,10,1,2,8,5,11,12,4,15;13,8,11,5,6,15,0,3,4,7,2,12,1,10,14,9;10,6,9,0,12,11,7,13,15,1,3,14,5,2,8,4;3,15,0,6,10,1,13,8,9,4,5,11,12,7,2,14];


%S_box5
S_box5 = [2,12,4,1,7,10,11,6,8,5,3,15,13,0,14,9;14,11,2,12,4,7,13,1,5,0,15,10,3,9,8,6;4,2,1,11,10,13,7,8,15,9,12,5,6,3,0,14;11,8,12,7,1,14,2,13,6,15,0,9,10,4,5,3];


%S_box6
S_box6 = [12,1,10,15,9,2,6,8,0,13,3,4,14,7,5,11;10,15,4,2,7,12,9,5,6,1,13,14,0,11,3,8;9,14,15,5,2,8,12,3,7,0,4,10,1,13,11,6;4,3,2,12,9,5,15,10,11,14,1,7,6,0,8,13];


%S_box7
S_box7 = [4,11,2,14,15,0,8,13,3,12,9,7,5,10,6,1;13,0,11,7,4,9,1,10,14,3,5,12,2,15,8,6;1,4,11,13,12,3,7,14,10,15,6,8,0,5,9,2;6,11,13,8,1,4,10,7,9,5,0,15,14,2,3,12];


%S_box8
S_box8 = [13,2,8,4,6,15,11,1,10,9,3,14,5,0,12,7;1,15,13,8,10,3,7,4,12,5,6,11,0,14,9,2; 7,11,4,1,9,12,14,2,0,6,10,13,15,3,5,8;2,1,14,7,4,10,8,13,15,12,9,0,3,5,6,11];

  if i == 1
    vec = S_box1(rowIndex+1,columnIndex+1);
  elseif i == 2
    vec = S_box2(rowIndex+1,columnIndex+1);
  elseif i == 3
    vec = S_box3(rowIndex+1,columnIndex+1);
  elseif  i == 4
    vec = S_box4(rowIndex+1,columnIndex+1);
  elseif  i == 5
    vec = S_box5(rowIndex+1,columnIndex+1);
  elseif i == 6
    vec = S_box6(rowIndex+1,columnIndex+1);
  elseif i == 7
    vec = S_box7(rowIndex+1,columnIndex+1);
  elseif i == 8
    vec = S_box8(rowIndex+1,columnIndex+1);
  end


end
