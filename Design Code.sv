`timescale 1ns / 1ps 

module clk_gen (
  input clk, rst
  input [16:0] baud, 
  output reg tx_clk, rx_clk
); 

int rx_max = 0, tx_max = 0; 
int rx_count = 0, tx_count = 0; 

  always @(posedge clk) begin 
    if (rst) begin 
      rx_max <= 0;
      tx_max <= 0;
    end
    else begin 
      case (baud)
        4800: begin 
          rx_max <= 11'd651;
          tx_max <= 14'd01
          
      
      
