module comparador(a, b, altb, aeqb, agtb);
	input [3:0] a, b;
	output altb, aeqb, agtb;
	wire aux3, aux2, aux1, aux0, x3, x2, x1, x0;
	wire auxGT0, auxGT1, auxGT2, auxGT3;
	wire auxLT0, auxLT1, auxLT2, auxLT3;
	wire auxB3, auxB2, auxB1, auxB0; 
	wire auxA3, auxA2, auxA1, auxA0;
	
	xor xor0(aux3, a[3], b[3]);
	not not0(x3, aux3);
	xor xor1(aux2, a[2], b[2]);
	not not1(x2, aux2);
	xor xor2(aux1, a[1], b[1]);
	not not2(x1, aux1);
	xor xor3(aux0, a[0], b[0]);
	not not3(x0, aux0);
	
	// Comparar se é igual
	and and0(aeqb, x3, x2, x1, x0);
	
	// Comparar se é A é maior que B
	not not4(auxB3, b[3]);
	and and1(auxGT0, a[3], auxB3);
	not not5(auxB2, b[2]);
	and and2(auxGT1, x3, a[2], auxB2);
	not not6(auxB1, b[1]);
	and and3(auxGT2, x3, x2, a[1], auxB1);
	not not7(auxB0, b[0]);
	and and4(auxGT3, x3, x2, x1, a[0], auxB0);
	or or1(agtb, auxGT0, auxGT1, auxGT2, auxGT3);
	
	// Comparar se é B é maior que A
	not not8(auxA3, a[3]);
	and and5(auxLT0, b[3], auxA3);
	not not9(auxA2, a[2]);
	and and6(auxLT1, x3, b[2], auxA2);
	not not10(auxA1, a[1]);
	and and7(auxLT2, x3, x2, b[1], auxA1);
	not not11(auxA0, a[0]);
	and and8(auxLT3, x3, x2, x1, b[0], auxA0);
	or or2(altb, auxLT0, auxLT1, auxLT2, auxLT3);
endmodule 