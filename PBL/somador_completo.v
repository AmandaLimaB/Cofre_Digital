module somador_completo(a, b, s, cin, cout);
	input a, b, cin;
	output count;
	output [3:0] s;
	wire fio0, fio1, fio2;
	xor Xor0(fio0, a, b); 
	and And0(fio1, a, b);
	and And1(fio2, fio0, cin);
	or Or0(cout, fio1, fio2);
	xor Xor1(s, fio0, cin);
endmodule 