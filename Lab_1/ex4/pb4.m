function [size] = pb4()

	fid = fopen('file.txt', 'r');
	
	fseek(fid, 0, 'eof');

	size = ftell(fid);

	disp(size);

end
