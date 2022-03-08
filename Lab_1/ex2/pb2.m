function [x] = pb2()

v = [0 : 0.1 : 1];

x = 2 * v + 1;

dlmwrite('valori.txt', x);

end