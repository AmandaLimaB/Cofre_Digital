module a(resposta, dig_a);
	input [3:0] resposta;
	output dig_a;
	
	wire aux1, aux2, aux3;
	
	not not0(aux1, resposta[3]);
	not not1(aux2, resposta[2]);
	not not2(aux3, resposta[1]);
	and and0(dig_a, aux1, aux2, aux3, resposta[0]);
endmodule 