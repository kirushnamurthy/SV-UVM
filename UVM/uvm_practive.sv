module uvm_top();

    initial begin
        $display("Hello, UVM!");
        $finish;
    end

    // 1. Which SystemVerilog assertion checks that signal ready becomes 1 within 1 to 3 clock cycles after request becomes 1?
    property req_ready;
        @(posedge clk) disable iff (!rst_n) request |-> ##[1:3] ready;
    endproperty

    property_req_ready: assert property (req_ready) 
                        else $error("req_ready assertion failed");

endmodule