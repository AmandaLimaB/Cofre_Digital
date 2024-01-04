module Arquivo_principal(a, b, ponto, dig1, dig2, dig3, dig4, dig_a, dig_b, dig_c, dig_d, dig_e, dig_f, dig_g, led_verme, led_azu, led_verd);
	input [3:0] a, b;
	//Do bit mais significativo [3] até o menos significativo [0]
	output ponto, dig1, dig2, dig3, dig4, dig_a, dig_b, dig_c, dig_d, dig_e, dig_f, dig_g, led_verme, led_azu, led_verd;
	wire [3:0] resultado_parcial, resultado_parcial2, resultado;
	wire [3:0] c2;
	wire altb, aux;
	// Só precisa saber se a senha cadastrada é menor do que a usada.
	
	assign aux = 1'b1;
	assign dig1 = 1'b0;
	assign dig2 = 1'b1;
	assign dig3 = 1'b1;
	assign dig4 = 1'b1;
	
	//comparador(a, b, altb)
	comparador comp_AB(.a(a), .b(b), .altb(altb));	
	
	//complemento2(b, c, cin, cout)
	complemento2 complemento_b (.b(b), .c(c2), .cin(aux), .cout());
	
	//somador4bits(a, b, s, cin, cout)
	somador4bits soma_senhas (.a(a), .b(c2), .s(resultado_parcial), .cin(), .cout());
	
	//Complemento de 2
	complemento2 complem2(.b(resultado_parcial), .c(resultado_parcial2), .cin(altb), .cout());
	
	//Resultado final
	complemento2_negativos(.num(resultado_parcial2), .altb(altb), .saida(resultado));
	
	// Resultado para o ponto
	ponto ponto_mostrador (.r3(resultado[3]), .r2(resultado[2]), .altb(altb), .ponto_acender(ponto));

	// Resultado para o A
	a resul_a (.resposta(resultado), .dig_a(dig_a));
	
	// Resultado para o B
	b resul_b (.resposta3(resultado[3]), .resposta2(resultado[2]), .dig_b(dig_b));
	
	// Resultado para o C
	c resul_c (.resultado(resultado), .dig_c(dig_c));
	
	// Resultado para o D
	d resul_d (.resposta(resultado), .dig_d(dig_d));
	
	// Resultado para o E
	e resul_e (.resposta(resultado), .dig_e(dig_e));
	
	// Resultado para o F
	f resul_f (.resposta(resultado), .dig_f(dig_f));
	
	// Resultado para o G
	g resul_g (.resposta(resultado), .dig_g(dig_g));
	
	// LED Vermelho
	led_vermelho acend_vermelho (.resposta(resultado), .vermelho(led_verme));

	// LED Azul
	led_azul acend_azul (.resposta(resultado), .azul(led_azu));
	
	// LED Verde
	led_verde acend_verde (.resposta(resultado), .verde(led_verd));
	
endmodule 