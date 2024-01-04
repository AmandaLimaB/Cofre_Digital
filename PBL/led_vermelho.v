module led_vermelho(resposta, vermelho);
	input [3:0] resposta;
	output vermelho;
	
	or or0(vermelho, resposta[3], resposta[2]);
endmodule 