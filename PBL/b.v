module b(resposta3, resposta2, dig_b);
	input resposta3, resposta2;
	output dig_b;
	
	or or0(dig_b, resposta3, resposta2);
endmodule 