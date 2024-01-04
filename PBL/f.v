module f(resposta, dig_f);
	input [3:0] resposta;
	output dig_f;
	
	wire aux1, aux2, aux3;
	
	or or0(aux1, resposta[1], resposta[0]);
	not not0(aux2, resposta[3]);
	not not1(aux3, resposta[2]);
	and and0(dig_f, aux1, aux2, aux3);
endmodule 