module tb_top();

    initial begin
        $display("Hello, SystemVerilog!");
        $finish;
    end
    
    initial begin
        $dumpfile("hello.vcd");
        $dumpvars(0, tb_top);
    end

endmodule 