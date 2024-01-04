module ponto(r3, r2, altb, ponto_acender);
	input r3, r2, altb;
	output ponto_acender;
	
	wire aux;
	
	not not0(aux1, altb);
	or or0(ponto_acender, aux1, r3, r2);
endmodule 