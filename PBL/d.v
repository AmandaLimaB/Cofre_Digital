module d(resposta, dig_d);
	input [3:0] resposta;
	output dig_d;
	
	wire aux1, aux2, aux3;
	not not0(aux1, resposta[3]);
	not not1(aux2, resposta[2]);
	not not2(aux3, resposta[1]);
	and and0(dig_d, resposta[0], aux1, aux2, aux3);
endmodule 