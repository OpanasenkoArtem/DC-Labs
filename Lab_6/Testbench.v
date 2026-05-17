module test_sum_5bit;
    wire Ci, cm, cr;
    wire [4:0] Ain, Bin;
    reg [4:0] Ain_r, Bin_r;
    reg Ci_r;
    wire [4:0] res_my, res_ref;

    my_sum_5bit my_block (Ain, Bin, Ci, res_my, cm);
    ref_sum_5bit ref_block (Ain, Bin, Ci, res_ref, cr);
    
    initial begin
        $display("\t\t Time Ain Bin Ci res_my cm res_ref cr");
        $monitor($time,,,,, Ain,,,,, Bin,,,,,Ci,,,,,res_my,,,,,,,,cm,,,,,,,res_ref,,,,,,,cr);
        #400 $finish;
    end

    initial begin
        Ain_r = 5'd1;
        #50 Ain_r = 5'd15;
        #50 Ain_r = 5'd7;
        #50 Ain_r = 5'd21;
        #50 Ain_r = 5'd31; 
    end

    initial begin
        Bin_r = 5'd2;
        #100 Bin_r = 5'd10;
        #100 Bin_r = 5'd18;
    end

    initial begin
        Ci_r = 1'b0;
        #200 Ci_r = 1'b1;
    end
    
    assign Ain = Ain_r;
    assign Bin = Bin_r;
    assign Ci = Ci_r;
    
endmodule