`include "/home/sg05060/project_3/project_3.srcs/sources_1/imports/Header/VPU_PKG.svh"

module VPU_FP_RECIP
#(
    
)
(
    input   wire                            clk,
    input   wire                            rst_n,
    
    //From SRC_PORT
    input   [VPU_PKG::OPERAND_WIDTH-1:0]    op_0,
    input                                   start_i,

    //From VPU_CONTROLLER
    //input                                   en,

    //To VPU_DST_PORT
    output  [VPU_PKG::OPERAND_WIDTH-1:0]    result_o,
    output                                  done_o
);
    import VPU_PKG::*;
    
    logic   [OPERAND_WIDTH-1:0]             result, result_valid;
    wire                                    done;
    
    floating_point_sqrt fp_sqrt_0 (
        .aclk                               (clk),
        .s_axis_a_tvalid                    (start_i),
        .s_axis_a_tdata                     (op_0),
        .m_axis_result_tvalid               (done),
        .m_axis_result_tdata                (result),
        .m_axis_result_tuser                ()
    );
    
    floating_point_div fp_div_0 (
        .aclk                               (clk),
        .s_axis_a_tvalid                    (done),
        .s_axis_a_tdata                     ('b0011111110000000),
        .s_axis_b_tvalid                    (done),
        .s_axis_b_tdata                     (result),
        .m_axis_result_tvalid               (done_o),
        .m_axis_result_tdata                (result),
        .m_axis_result_tuser                ()
    );
    // Assign
    assign result_o                         = result;

endmodule