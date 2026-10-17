module washing_machine_controller (clk,
    done,
    rinse_en,
    rst_n,
    spin_en,
    start,
    wash_en);
 input clk;
 output done;
 output rinse_en;
 input rst_n;
 output spin_en;
 input start;
 output wash_en;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire _37_;
 wire net3;
 wire net4;
 wire net1;
 wire net5;
 wire net2;
 wire \state[0] ;
 wire \timer_count[0] ;
 wire \timer_count[1] ;
 wire \timer_count[2] ;
 wire net6;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sky130_fd_sc_hd__inv_1 _38_ (.A(\timer_count[0] ),
    .Y(_01_));
 sky130_fd_sc_hd__inv_1 _39_ (.A(\timer_count[1] ),
    .Y(_31_));
 sky130_fd_sc_hd__nand3b_4 _41_ (.A_N(net4),
    .B(\timer_count[2] ),
    .C(_32_),
    .Y(_12_));
 sky130_fd_sc_hd__and2b_2 _42_ (.A_N(_35_),
    .B(net5),
    .X(_13_));
 sky130_fd_sc_hd__and2b_2 _43_ (.A_N(_33_),
    .B(net4),
    .X(_14_));
 sky130_fd_sc_hd__o21a_1 _44_ (.A1(net5),
    .A2(net4),
    .B1(\timer_count[2] ),
    .X(_15_));
 sky130_fd_sc_hd__a2111oi_4 _45_ (.A1(net6),
    .A2(_12_),
    .B1(_13_),
    .C1(_14_),
    .D1(_15_),
    .Y(_16_));
 sky130_fd_sc_hd__o31a_1 _46_ (.A1(net5),
    .A2(net4),
    .A3(net6),
    .B1(net1),
    .X(_17_));
 sky130_fd_sc_hd__nand2_1 _47_ (.A(_02_),
    .B(_17_),
    .Y(_18_));
 sky130_fd_sc_hd__nor2_1 _48_ (.A(_16_),
    .B(_18_),
    .Y(_08_));
 sky130_fd_sc_hd__xor2_1 _49_ (.A(\timer_count[2] ),
    .B(_00_),
    .X(_19_));
 sky130_fd_sc_hd__nand2_1 _50_ (.A(_17_),
    .B(_19_),
    .Y(_20_));
 sky130_fd_sc_hd__nor2_1 _51_ (.A(_16_),
    .B(_20_),
    .Y(_09_));
 sky130_fd_sc_hd__nand2_1 _52_ (.A(_01_),
    .B(_17_),
    .Y(_21_));
 sky130_fd_sc_hd__nor2_1 _53_ (.A(_16_),
    .B(_21_),
    .Y(_10_));
 sky130_fd_sc_hd__inv_1 _54_ (.A(_35_),
    .Y(_22_));
 sky130_fd_sc_hd__o21ai_0 _55_ (.A1(_22_),
    .A2(\timer_count[2] ),
    .B1(net5),
    .Y(_23_));
 sky130_fd_sc_hd__nand3b_1 _56_ (.A_N(\timer_count[2] ),
    .B(net4),
    .C(_33_),
    .Y(_24_));
 sky130_fd_sc_hd__a21boi_0 _57_ (.A1(_23_),
    .A2(_24_),
    .B1_N(net1),
    .Y(_07_));
 sky130_fd_sc_hd__a21o_1 _58_ (.A1(_32_),
    .A2(net6),
    .B1(net4),
    .X(_25_));
 sky130_fd_sc_hd__a21oi_1 _59_ (.A1(\timer_count[2] ),
    .A2(_25_),
    .B1(_14_),
    .Y(_26_));
 sky130_fd_sc_hd__nor2b_1 _60_ (.A(_26_),
    .B_N(net1),
    .Y(_05_));
 sky130_fd_sc_hd__nand2b_1 _61_ (.A_N(net2),
    .B(\state[0] ),
    .Y(_27_));
 sky130_fd_sc_hd__nand3b_1 _62_ (.A_N(net3),
    .B(_27_),
    .C(net1),
    .Y(_04_));
 sky130_fd_sc_hd__nand2_1 _63_ (.A(_32_),
    .B(\timer_count[2] ),
    .Y(_28_));
 sky130_fd_sc_hd__a22oi_1 _64_ (.A1(net2),
    .A2(\state[0] ),
    .B1(_28_),
    .B2(net6),
    .Y(_29_));
 sky130_fd_sc_hd__nor2b_1 _65_ (.A(_29_),
    .B_N(net1),
    .Y(_06_));
 sky130_fd_sc_hd__nand2_1 _66_ (.A(net1),
    .B(net5),
    .Y(_30_));
 sky130_fd_sc_hd__nor3_1 _67_ (.A(_22_),
    .B(\timer_count[2] ),
    .C(_30_),
    .Y(_03_));
 sky130_fd_sc_hd__ha_1 _68_ (.A(_01_),
    .B(_31_),
    .COUT(_32_),
    .SUM(_02_));
 sky130_fd_sc_hd__ha_1 _69_ (.A(_01_),
    .B(\timer_count[1] ),
    .COUT(_33_),
    .SUM(_34_));
 sky130_fd_sc_hd__ha_1 _70_ (.A(\timer_count[0] ),
    .B(\timer_count[1] ),
    .COUT(_35_),
    .SUM(_36_));
 sky130_fd_sc_hd__ha_1 _71_ (.A(\timer_count[0] ),
    .B(\timer_count[1] ),
    .COUT(_00_),
    .SUM(_37_));
 sky130_fd_sc_hd__dfxtp_1 _72_ (.D(_08_),
    .Q(\timer_count[1] ),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 _73_ (.D(_09_),
    .Q(\timer_count[2] ),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 _74_ (.D(_10_),
    .Q(\timer_count[0] ),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input1 (.A(rst_n),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input2 (.A(start),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output3 (.A(net3),
    .X(done));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output4 (.A(net4),
    .X(rinse_en));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output5 (.A(net5),
    .X(spin_en));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output6 (.A(net6),
    .X(wash_en));
 sky130_fd_sc_hd__dfxtp_1 \state[0]$_DFF_P_  (.D(_04_),
    .Q(\state[0] ),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 \state[1]$_DFF_P_  (.D(_03_),
    .Q(net3),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 \state[2]$_DFF_P_  (.D(_05_),
    .Q(net4),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 \state[3]$_DFF_P_  (.D(_06_),
    .Q(net6),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 \state[4]$_DFF_P_  (.D(_07_),
    .Q(net5),
    .CLK(clknet_1_0__leaf_clk));
endmodule
