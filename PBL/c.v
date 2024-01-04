module c(resultado, dig_c);
	input [3:0] resultado;
	output dig_c;
	
	wire aux1, aux2, aux3, aux4;
	
	not not0(aux1, resultado[3]);
	not not1(aux2, resultado[2]);
	not not2(aux3, resultado[0]);
	and and0(aux4, aux1, aux2, aux3, resultado[1]);
	or or0(dig_c, aux4, resultado[2], resultado[3]);
endmodule 