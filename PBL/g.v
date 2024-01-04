module g(resposta, dig_g);
	input [3:0] resposta;
	output dig_g;
	
	wire aux1, aux2, aux3;
	
	not not0(aux1, resposta[3]);
	not not1(aux2, resposta[2]);
	not not2(aux3, resposta[1]);
	and and0(dig_g, aux1, aux2, aux3);
endmodule 