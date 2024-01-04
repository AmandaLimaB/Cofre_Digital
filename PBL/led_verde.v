module led_verde(resposta, verde);
	input [3:0] resposta;
	output verde;
	
	wire aux1, aux2, aux3, aux4;
	
	not not0(aux1, resposta[3]);
	not not1(aux2, resposta[2]);
	not not2(aux3, resposta[1]);
	not not3(aux4, resposta[0]);
	and and0(verde, aux1, aux2, aux3, aux4);
	
endmodule 