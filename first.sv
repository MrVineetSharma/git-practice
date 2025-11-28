`include "uvm_macros.svh"
import uvm_pkg::*;
class first extends uvm_sequence_item;   
  rand logic[2:0]a=0;
  rand logic[2:0]b=0;
`uvm_object_utils_begin(first);
`uvm_field_int(a,UVM_DEFAULT);
`uvm_field_int(b,UVM_DEFAULT);
`uvm_object_utils_end
  
function new(string path = "first");   
super.new(path);
`uvm_info("TB",$sformatf("i am in first class new function"),UVM_MEDIUM);
endfunction
  
function void disp( );
  `uvm_info("TB",$sformatf("first disp"),UVM_MEDIUM);
  
endfunction  

endclass

module tb();
first f; 
initial 
begin
`uvm_info("TB",$sformatf("i am in initial block"),UVM_MEDIUM); 
  f = first::type_id::create("f");
end

 
endmodule




//this is first file 
