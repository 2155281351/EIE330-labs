 `timescale 1ns/1ns
  module fulladd (
      input x,
      input y,
      input cin,
      output s,
      output cout
  );

      wire s1, c1, c2;   

     
      halfadd h1 (
          .x(x),
          .y(y),
          .s(s1),
          .c(c1)
      );

      halfadd h2 (
          .x(s1),
          .y(cin),
          .s(s),
          .c(c2)
      );

    
      assign cout = c1 | c2;


  endmodule