
cipherText = '85E813540F0AB405';
key = '133457799BBCDFF1';

%change the plain text and key to binary
binaryText = hexToBin(cipherText);
binaryKey = hexToBin(key);
%takes in the 64 bit key in hexidecimal and return a 56 bit key in binary
kri = KeyPermutation(binaryKey);
%perfomes the initialPermutation of the plainText
Text = initialPermutation(binaryText);
%generate 16 keys to use on the feistel rounds
keys = zeros(16,48);
for i = 1 : 16
  [ki,kri] = keyGeneration(kri,i);
  keys(i,:) = ki(:);
end

for  i = 16 : -1 : 1
[left32bits,right32bits] = feistelRound(Text,i,keys(i,:));
Text = [left32bits,right32bits];
end
Text = [right32bits,left32bits];
finalPermutatedText = initialPermutationInverse(Text);

%converts the binary cipher into hexidecimal
plainText = [];
for i = 1:4:64
        temp = binToHex(finalPermutatedText(i:(i+3)));
        plainText = [plainText temp];
    end
disp(plainText);
