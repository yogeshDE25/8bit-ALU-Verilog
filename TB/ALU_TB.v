module Alu_TB;
reg [7:0] a, b;
reg [2:0] opcode;
wire [15:0] out;
wire cout;

ALU_Bit8 dut (.a(a), 
              .b(b),
              .opcode(opcode),
              .cout(cout),
              .out(out) );

initial begin
$monitor("time is %0t | a is %d | b is %d | opcode is %b | out is %d | cout is %d", $time, a, b, opcode, out, cout);

a = 8'd0; b = 8'd0; opcode = 3'd0;

#3 a = 8'd45; b = 8'd38; opcode = 3'd0; //addition

#3 opcode = 3'd1; //subtraction

#3 opcode = 3'd2; //multiplication

#3 opcode = 3'd3; //left shift

#3 opcode = 3'd4; //right shift

#3 opcode = 3'd5; //and

#3 opcode = 3'd6; //or

#3 opcode = 3'd7; //xor

#3 a = 8'd255; b = 8'd1; opcode = 3'd0; // addition

#3 a = 8'd255; b = 8'd255; opcode = 3'd1; //subtraction

#3 a = 8'd0; b = 8'd1; opcode = 3'd1; //subtraction

#3 a = 8'd255; b = 8'd255; opcode = 3'd2; //multiplication

#3 a = 8'd255; b = 8'd7; opcode = 3'd3; //left shift

#3 a = 8'd255; b = 8'd7; opcode = 3'd4; //right shift

#3 a = 8'd0; b = 8'd255; opcode = 3'd5; //and

#3 a = 8'd0; b = 8'd255; opcode = 3'd6; //or 

#3 a = 8'd255; b = 8'd255; opcode = 3'd7; //xor

#5 $finish;

end

endmodule
