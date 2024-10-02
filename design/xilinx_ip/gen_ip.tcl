# floating_point_add_sub
create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name floating_point_add_sub
set_property -dict [list \
  CONFIG.A_Precision_Type {Custom} \
  CONFIG.C_A_Exponent_Width {8} \
  CONFIG.C_A_Fraction_Width {8} \
  CONFIG.C_Accum_Input_Msb {32} \
  CONFIG.C_Accum_Lsb {-31} \
  CONFIG.C_Accum_Msb {32} \
  CONFIG.C_Has_INVALID_OP {true} \
  CONFIG.C_Has_OVERFLOW {true} \
  CONFIG.C_Has_UNDERFLOW {true} \
  CONFIG.C_Latency {2} \
  CONFIG.C_Mult_Usage {No_Usage} \
  CONFIG.C_Rate {1} \
  CONFIG.C_Result_Exponent_Width {8} \
  CONFIG.C_Result_Fraction_Width {8} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.Maximum_Latency {false} \
  CONFIG.Result_Precision_Type {Custom} \
] [get_ips floating_point_add_sub]
generate_target {instantiation template} [get_files sources_1/ip/floating_point_add_sub/floating_point_add_sub.xci]
update_compile_order -fileset sources_1
generate_target all [get_files sources_1/ip/floating_point_add_sub/floating_point_add_sub.xci]
export_ip_user_files -of_objects [get_files sources_1/ip/floating_point_add_sub/floating_point_add_sub.xci] -no_script -sync -force -quiet
# floating_point_cmp
create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name floating_point_cmp
set_property -dict [list \
  CONFIG.A_Precision_Type {Custom} \
  CONFIG.C_A_Exponent_Width {8} \
  CONFIG.C_A_Fraction_Width {8} \
  CONFIG.C_Accum_Input_Msb {32} \
  CONFIG.C_Accum_Lsb {-31} \
  CONFIG.C_Accum_Msb {32} \
  CONFIG.C_Compare_Operation {Greater_Than_Or_Equal} \
  CONFIG.C_Has_INVALID_OP {true} \
  CONFIG.C_Latency {1} \
  CONFIG.C_Mult_Usage {No_Usage} \
  CONFIG.C_Rate {1} \
  CONFIG.C_Result_Exponent_Width {1} \
  CONFIG.C_Result_Fraction_Width {0} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.Maximum_Latency {false} \
  CONFIG.Operation_Type {Compare} \
  CONFIG.Result_Precision_Type {Custom} \
] [get_ips floating_point_cmp]

# floating_point_div
create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name floating_point_div
set_property -dict [list \
  CONFIG.A_Precision_Type {Custom} \
  CONFIG.C_A_Exponent_Width {8} \
  CONFIG.C_A_Fraction_Width {8} \
  CONFIG.C_Accum_Input_Msb {32} \
  CONFIG.C_Accum_Lsb {-31} \
  CONFIG.C_Accum_Msb {32} \
  CONFIG.C_Has_DIVIDE_BY_ZERO {true} \
  CONFIG.C_Has_INVALID_OP {true} \
  CONFIG.C_Has_OVERFLOW {true} \
  CONFIG.C_Has_UNDERFLOW {true} \
  CONFIG.C_Latency {2} \
  CONFIG.C_Mult_Usage {No_Usage} \
  CONFIG.C_Rate {1} \
  CONFIG.C_Result_Exponent_Width {8} \
  CONFIG.C_Result_Fraction_Width {8} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.Maximum_Latency {false} \
  CONFIG.Operation_Type {Divide} \
  CONFIG.Result_Precision_Type {Custom} \
] [get_ips floating_point_div]

# floating_point_mul
create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name floating_point_mul
set_property -dict [list \
  CONFIG.A_Precision_Type {Custom} \
  CONFIG.C_A_Exponent_Width {8} \
  CONFIG.C_A_Fraction_Width {8} \
  CONFIG.C_Accum_Input_Msb {32} \
  CONFIG.C_Accum_Lsb {-31} \
  CONFIG.C_Accum_Msb {32} \
  CONFIG.C_Has_INVALID_OP {true} \
  CONFIG.C_Has_OVERFLOW {true} \
  CONFIG.C_Has_UNDERFLOW {true} \
  CONFIG.C_Latency {2} \
  CONFIG.C_Mult_Usage {Full_Usage} \
  CONFIG.C_Rate {1} \
  CONFIG.C_Result_Exponent_Width {8} \
  CONFIG.C_Result_Fraction_Width {8} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.Maximum_Latency {false} \
  CONFIG.Operation_Type {Multiply} \
  CONFIG.Result_Precision_Type {Custom} \
] [get_ips floating_point_mul]

# floating_point_exp
create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name floating_point_exp
set_property -dict [list \
  CONFIG.A_Precision_Type {Single} \
  CONFIG.C_A_Exponent_Width {8} \
  CONFIG.C_A_Fraction_Width {24} \
  CONFIG.C_Accum_Input_Msb {32} \
  CONFIG.C_Accum_Lsb {-31} \
  CONFIG.C_Accum_Msb {32} \
  CONFIG.C_Has_OVERFLOW {true} \
  CONFIG.C_Has_UNDERFLOW {true} \
  CONFIG.C_Latency {5} \
  CONFIG.C_Mult_Usage {Medium_Usage} \
  CONFIG.C_Rate {1} \
  CONFIG.C_Result_Exponent_Width {8} \
  CONFIG.C_Result_Fraction_Width {24} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.Maximum_Latency {false} \
  CONFIG.Operation_Type {Exponential} \
  CONFIG.Result_Precision_Type {Single} \
] [get_ips floating_point_exp]

# floating_point_sqrt
create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name floating_point_sqrt
set_property -dict [list \
  CONFIG.A_Precision_Type {Custom} \
  CONFIG.C_A_Exponent_Width {8} \
  CONFIG.C_A_Fraction_Width {8} \
  CONFIG.C_Accum_Input_Msb {32} \
  CONFIG.C_Accum_Lsb {-31} \
  CONFIG.C_Accum_Msb {32} \
  CONFIG.C_Has_INVALID_OP {true} \
  CONFIG.C_Latency {2} \
  CONFIG.C_Mult_Usage {No_Usage} \
  CONFIG.C_Rate {1} \
  CONFIG.C_Result_Exponent_Width {8} \
  CONFIG.C_Result_Fraction_Width {8} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.Maximum_Latency {false} \
  CONFIG.Operation_Type {Square_root} \
  CONFIG.Result_Precision_Type {Custom} \
] [get_ips floating_point_sqrt]