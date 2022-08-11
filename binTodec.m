%converts 64 bits binary into decimal

function dec = binTodec(vec)
    n = length(vec);
    sum = 0;
    for i  = 1 : n
        sum = 2^(i-1)*vec(i) + sum;
    end
    dec = sum;
end