module e(resposta, dig_e);
	input [3:0] resposta;
	output dig_e;
	
	wire aux1, aux2;
	
	not not0(aux1, resposta[3]);
	not not1(aux2, resposta[2]);
	and and0(dig_e, aux1, aux2, resposta[0]);
endmodule 