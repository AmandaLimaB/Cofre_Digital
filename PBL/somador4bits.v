module somador4bits(a, b, s, cin, cout);
	input [3:0] a, b;
	input cin;
	output [3:0] s;
	output cout;
	wire fio0, fio1, fio2;
	
	//somador_completo(a, b, s, cin, cout)
	somador_completo part1(.a(a[0]), .b(b[0]), .s(s[0]), .cin(cin), .cout(fio0));
	somador_completo part2(.a(a[1]), .b(b[1]), .s(s[1]), .cin(fio0), .cout(fio1));
	somador_completo part3(.a(a[2]), .b(b[2]), .s(s[2]), .cin(fio1), .cout(fio2));
	somador_completo part4(.a(a[3]), .b(b[3]), .s(s[3]), .cin(fio2), .cout(cout));
	
endmodule 