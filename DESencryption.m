%perfoms the encryption process of the DES cipher

plainText = '0123456789ABCDEF';
key = '133457799BBCDFF1';

%change the plain text and key to binary
binaryText = hexToBin(plainText);
binaryKey = hexToBin(key);
%takes in the 64 bit key in hexidecimal and return a 56 bit key in binary
kri = KeyPermutation(binaryKey);
%perfomes the initialPermutation of the plainText
Text = initialPermutation(binaryText);

for  i = 1 : 16
[ki,kri] = keyGeneration(kri,i);
[left32bits,right32bits] = feistelRound(Text,i,ki);
Text = [left32bits,right32bits];
end
Text = [right32bits,left32bits];
finalPermutatedText = initialPermutationInverse(Text);

%converts the binary cipher into hexidecimal
cipherText = [];
for i = 1:4:64
        temp = binToHex(finalPermutatedText(i:(i+3)));   
        cipherText = [cipherText temp];
    end
disp(cipherText);


