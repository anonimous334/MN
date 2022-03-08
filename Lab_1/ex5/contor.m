function y = contor(numefis, sir)

	fid = fopen(numefis);
	
	tline = fgetl(fid);

	cont = 0;
	
	while ischar(tline)
    		temp = findstr(tline, sir);
		cont = cont + length(temp);
		tline = fgetl(fid);
	end

	fclose(fid);

	disp(cont)

endfunction

