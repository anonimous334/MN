function testIfMagic

magicArray = magic(5)
isMagic = IsMagicSquare(magicArray)
nonMagicArray = uint8(255 * rand(8))
isMagic = IsMagicSquare(nonMagicArray)

function isMagic = IsMagicSquare(array)
magicValue = sum(diag(array));
sumOfRows = all(sum(array, 1) == magicValue);
sumOfColumns = all(sum(array, 2) == magicValue);
if sumOfRows && sumOfColumns
isMagic = true;
else
isMagic = false;
end
return; 
