module aes_top(
    input clk, rst, kld,
    input [127:0] key, text_in,
    output done2,
    output [127:0] text_out2
);

wire [127:0] text_out;
wire done;

aes_cipher_top u0(
	.clk(		clk		),
	.rst(		rst		),
	.ld(		kld		),
	.done(		done		),
	.key(		key		),
	.text_in(	text_in		),
	.text_out(	text_out	)
	);

aes_inv_cipher_top u1(
	.clk(		clk		),
	.rst(		rst		),
	.kld(		kld		),
	.ld(		done		),
	.done(		done2		),
	.key(		key		),
	.text_in(	text_out	),
	.text_out(	text_out2	)
	);

endmodule