<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="XLXN_3" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_10(2:0)" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_16(9:0)" />
        <signal name="XLXN_17(9:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <blockdef name="freq_gen">
            <timestamp>2019-4-15T18:10:54</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="vga_controller">
            <timestamp>2019-4-16T11:56:37</timestamp>
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-448" height="588" />
        </blockdef>
        <blockdef name="obrazek">
            <timestamp>2019-4-16T11:56:32</timestamp>
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="256" x="64" y="-192" height="392" />
        </blockdef>
        <block symbolname="freq_gen" name="XLXI_1">
            <blockpin name="RST_IN" />
            <blockpin signalname="Clk_50MHz" name="CLKIN_IN" />
            <blockpin name="LOCKED_OUT" />
            <blockpin signalname="XLXN_3" name="CLKFX_OUT" />
            <blockpin name="CLKIN_IBUFG_OUT" />
            <blockpin name="CLK0_OUT" />
        </block>
        <block symbolname="obrazek" name="XLXI_7">
            <blockpin signalname="XLXN_16(9:0)" name="row(9:0)" />
            <blockpin signalname="XLXN_17(9:0)" name="column(9:0)" />
            <blockpin signalname="XLXN_10(2:0)" name="color(2:0)" />
        </block>
        <block symbolname="vga_controller" name="XLXI_8">
            <blockpin signalname="XLXN_3" name="pixel_clk" />
            <blockpin signalname="XLXN_10(2:0)" name="color(2:0)" />
            <blockpin signalname="VGA_HS" name="h_sync" />
            <blockpin signalname="VGA_VS" name="v_sync" />
            <blockpin signalname="VGA_R" name="vga_r" />
            <blockpin signalname="VGA_G" name="vga_g" />
            <blockpin signalname="VGA_B" name="vga_b" />
            <blockpin signalname="XLXN_16(9:0)" name="row(9:0)" />
            <blockpin signalname="XLXN_17(9:0)" name="column(9:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Clk_50MHz">
            <wire x2="624" y1="848" y2="848" x1="592" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1120" y1="720" y2="720" x1="1088" />
            <wire x2="1136" y1="640" y2="640" x1="1120" />
            <wire x2="1120" y1="640" y2="720" x1="1120" />
        </branch>
        <instance x="1712" y="800" name="XLXI_7" orien="R0">
        </instance>
        <branch name="VGA_HS">
            <wire x2="1552" y1="704" y2="704" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="704" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="1552" y1="768" y2="768" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="768" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="592" y="848" name="Clk_50MHz" orien="R180" />
        <branch name="XLXN_10(2:0)">
            <wire x2="1136" y1="960" y2="960" x1="1056" />
            <wire x2="1056" y1="960" y2="1296" x1="1056" />
            <wire x2="2176" y1="1296" y2="1296" x1="1056" />
            <wire x2="2176" y1="960" y2="960" x1="2096" />
            <wire x2="2176" y1="960" y2="1296" x1="2176" />
        </branch>
        <instance x="624" y="880" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1136" y="1056" name="XLXI_8" orien="R0">
        </instance>
        <branch name="VGA_R">
            <wire x2="1552" y1="1024" y2="1024" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="1024" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="1552" y1="1088" y2="1088" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="1088" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="1552" y1="1152" y2="1152" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="1152" name="VGA_B" orien="R0" />
        <branch name="XLXN_16(9:0)">
            <wire x2="1712" y1="832" y2="832" x1="1520" />
        </branch>
        <branch name="XLXN_17(9:0)">
            <wire x2="1712" y1="896" y2="896" x1="1520" />
        </branch>
    </sheet>
</drawing>