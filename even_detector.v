module even_detector (

    input wire [2:0] a,
    output reg even
  );


  reg p1,p2,p3,p4;

  always @(*)
  begin

    even <= (p1 or p2) | (p3 or p4);
    p1 <= (not a(2)) & (not a(1)) & (not a(0));
    p2 <= (not a(2)) & a(1) & a(0);
    p3 <= a(2) & (not a(1)) & a(0);
    p4 <= a(2) & a(1) & (not a(0));

  end



endmodule
