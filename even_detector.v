module even_detector (

    input wire [2:0] a,
    output reg even
  );


  reg p1,p2,p3,p4;

  always @(*)
  begin

    even = (p1 | p2) | (p3 | p4);
    p1  = (! a[2]) & (! a[1]) & (! a[0]);
    p2  = (! a[2]) & a[1] & a[0];
    p3  = a[2] & (! a[1]) & a[0];
    p4  = a[2] & a[1] & (! a[0]);

  end



endmodule
