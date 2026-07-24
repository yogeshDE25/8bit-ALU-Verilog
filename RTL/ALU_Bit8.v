module ALU_Bit8(
    input wire [7:0] a, // two 8-bit input
    input wire [7:0] b,
    input wire [2:0] opcode, //op code (operation code) - 8 combinations
    output reg [15:0] out, // 16- bit output
    output reg cout // in addition it will act as carry, in subtraction it will act as borrow
    );
    
    always @* //combinational procedural statement
    begin
    
    out = 16'b0;
    cout = 1'b0;
    
    case (opcode)
    
    3'b000 : {cout, out[7:0]} = a + b;// addition 
    
    3'b001 : begin //subtraction
        out = { {8 {1'b0} }, a} - { {8 {1'b0} }, b};
        cout = a < b;
        end
        
    3'b010 : out = a * b; //multiplication
    
    3'b011 : out = {{8{1'b0}}, a} << b[3:0];//left shift
                
    3'b100 : out = {{8{1'b0}}, a} >> b[3:0];//right shift
      
    3'b101 : out = a & b;//and
                       
    3'b110 : out = a | b;//or
                                 
    3'b111 : out = a ^ b;//xor

    default : ;
                                    
    endcase
    end
endmodule
