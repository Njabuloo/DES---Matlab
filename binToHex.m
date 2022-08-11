%converts 4 binary bits into a single hexidecimal value

function value = binToHex(vec)

product = 8*vec(1) + 4*vec(2) + 2*vec(3) + vec(4);

switch product
    case 0, value = '0';
    case 1, value = '1';
    case 2, value = '2';
    case 3, value = '3';
    case 4, value = '4';
    case 5, value = '5';
    case 6, value = '6';
    case 7, value = '7'; 
    case 8, value = '8';
    case 9, value = '9';
    case 10, value = 'A';
    case 11, value = 'B';
    case 12, value = 'C';
    case 13, value = 'D';
    case 14, value = 'E';
    case 15, value = 'F';
    otherwise 
    	disp('value does not exists');
end