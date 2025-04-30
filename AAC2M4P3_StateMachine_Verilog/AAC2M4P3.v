module FSM(
  input In1,
  input RST,
  input CLK, 
  output reg Out1
);

parameter stateA=0,stateB=1,stateC=2;
reg [1:0] state,nxt_st;

 always @(state)
    begin: next_state_logic
         case(state)
           stateA: begin 
                       if (In1==1) nxt_st = stateB;
                       else nxt_st = stateA;
                   end
           stateB: begin
                       if (In1==0) nxt_st = stateC;
                       else nxt_st = stateB;
                   end
           stateC: begin
                       if (In1==1) nxt_st = stateA;
                       else nxt_st = stateC;
                   end
            default: nxt_st = stateA;
          endcase
      end
 
always @(posedge CLK or negedge RST)
    begin: register_generation
       if (!RST) state <= state;
       else state = nxt_st;
    end

 always @(state)
     begin:output_logic
          case(state)
            stateA: Out1 = 1'b0;
            stateB: Out1 = 1'b0;
            stateC: Out1 = 1'b1;
            default: Out1 = 1'b0;
          endcase
       end


endmodule