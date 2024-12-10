module comparator (
    input[4:0] sum,  //5 bit input from sum bat1 + bat2
    output reg critic_level, low_level, medium_level, high_level, full //output signals, review if is posible use wire
);
    always @(*) begin
        if      (sum <   5'd3) //multi-way branching using if-else if over comparisions and logical operators
        {critic_level, low_level, medium_level, high_level, full}   = ~5'b10000;//0-10 % is possible use assig with wire? 
        else if (sum >=  5'd3 && sum <= 5'd9)    
        {critic_level, low_level, medium_level, high_level, full}   = ~5'b01000;//10-30 %
        else if (sum >   5'd9  && sum <= 5'd18)  
        {critic_level, low_level, medium_level, high_level, full}   = ~5'b00100;//30-60 %
        else if (sum >   5'd18 && sum <  5'd30)  
        {critic_level, low_level, medium_level, high_level, full}   = ~5'b00010;//60-9x %
        else if (sum ==  5'd30)
        {critic_level, low_level, medium_level, high_level, full}   = ~5'b00001;//100 %
    end
endmodule