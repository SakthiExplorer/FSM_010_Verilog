module sequence_detector(
    input clk,reset,x,
    output reg y
    );
reg y1;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
parameter s5=3'b101;
parameter s6=3'b110;

reg [1:0]p_s;
reg [1:0]n_s;

always@(posedge reset,posedge clk)
begin
if(reset)
begin
p_s<=s0;
y1<=1'b0;
end
else
begin
p_s<=n_s;
y1<=y;
end
end
always@(p_s,x)
begin
case(p_s)
s0: 
if(x)
begin
n_s<=s2;
y<=1'b0;
end
else
begin
n_s<=s1;
y<=1'b0;
end
s1: 
if(x)
begin
n_s<=s3;
y<=1'b0;
end
else
begin
n_s<=s1;
y<=1'b0;
end
s2: 
if(x)
begin
n_s<=s2;
y<=1'b0;
end
else
begin
n_s<=s4;
y<=1'b0;
end
s3: 
if(x)
begin
n_s<=s2;
y<=1'b0;
end
else
begin
n_s<=s5;
y<=1'b1;
end
s4: 
if(x)
begin
n_s<=s3;
y<=1'b0;
end
else
begin
n_s<=s6;
y<=1'b0;
end
s5: 
if(x)
begin
n_s<=s3;
y<=1'b0;
end
else
begin
n_s<=s6;
y<=1'b0;
end
s6:
begin
y<=1'b0;
n_s<=s6;
end
endcase
end
endmodule
