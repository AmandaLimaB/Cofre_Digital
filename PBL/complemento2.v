module complemento2(b, c, cin, cout);
	input [3:0] b;
	input cin;
	output [3:0] c;
	output cout;
	wire [3:0] fio;
	
	//Complemento de 1
	not not0(fio[3], b[3]);
	not not1(fio[2], b[2]);
	not not2(fio[1], b[1]);
	not not3(fio[0], b[0]);
	
	//somador4bits(a, b, s, cin, cout)
	somador4bits complemento_de2 (.a(fio), .b(), .s(c), .cin(cin), .cout(cout));
		
endmodule 