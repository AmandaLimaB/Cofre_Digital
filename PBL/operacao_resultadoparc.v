module complemento2_negativos(num, altb, saida);
	input [3:0] num;
	input altb;
	output [3:0] saida;
	
	xnor xnor0(saida[3], num[3], altb);
	xnor xnor1(saida[2], num[2], altb);
	xnor xnor2(saida[1], num[1], altb);
	xnor xnor3(saida[0], num[0], altb);
endmodule 