module async_ripple_counter_up_tb;

    reg [3:0] T;
    reg CLK;
    wire [3:0] Q;

    async_ripple_counter_up uut (
        .T(T),
        .CLK(CLK),
        .Q(Q)
    );

    always #5 CLK = ~CLK;

    initial begin
        CLK = 0;
        T = 4'b1111; 
        $display("Time\tCLK\tQ");
        $monitor("%0dns\t%b\t%b", $time, CLK, Q);
        #200;

        $finish;
    end

endmodule

