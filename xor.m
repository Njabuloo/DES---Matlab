%perfoms exclusive or

function newtext = xor(text,key)
  newtext = zeros(1,size(text));
  for i = 1 : size(text)
    if text(i) == key(i)
      newtext(i) = 0;
    else
      newtext(i) = 1;
    end
  end
end
