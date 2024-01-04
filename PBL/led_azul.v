module led_azul(resposta, azul);
	input [3:0] resposta;
	output azul;
	
	wire aux1, aux2, aux3;
	not not0(aux1, resposta[3]);
	not not1(aux2, resposta[2]);
	or or0(aux3, resposta[1], resposta[0]);
	and and0(azul, aux1, aux2, aux3);
endmodule 