<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_10(2:0)" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_16(9:0)" />
        <signal name="XLXN_17(9:0)" />
        <signal name="RS232_TXD" />
        <signal name="RS232_RXD" />
        <signal name="led0">
        </signal>
        <signal name="led(7:0)" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_24" />
        <signal name="btn_south" />
        <signal name="XLXN_26" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="RS232_TXD" />
        <port polarity="Input" name="RS232_RXD" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="btn_south" />
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
            <timestamp>2019-5-24T10:27:23</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
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
            <rect width="256" x="64" y="-448" height="652" />
        </blockdef>
        <blockdef name="obrazek">
            <timestamp>2019-5-24T10:29:36</timestamp>
            <line x2="0" y1="352" y2="352" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="276" height="24" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="256" x="64" y="-192" height="584" />
        </blockdef>
        <blockdef name="rs232">
            <timestamp>2019-5-10T12:17:56</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <block symbolname="freq_gen" name="XLXI_1">
            <blockpin signalname="btn_south" name="RST_IN" />
            <blockpin signalname="Clk_50MHz" name="CLKIN_IN" />
            <blockpin name="LOCKED_OUT" />
            <blockpin signalname="XLXN_3" name="CLKFX_OUT" />
            <blockpin name="CLKIN_IBUFG_OUT" />
            <blockpin signalname="XLXN_24" name="CLK0_OUT" />
        </block>
        <block symbolname="obrazek" name="XLXI_7">
            <blockpin signalname="led0" name="byte_rdy" />
            <blockpin signalname="XLXN_16(9:0)" name="row(9:0)" />
            <blockpin signalname="XLXN_17(9:0)" name="column(9:0)" />
            <blockpin signalname="led(7:0)" name="byte(7:0)" />
            <blockpin signalname="XLXN_10(2:0)" name="color(2:0)" />
            <blockpin signalname="btn_south" name="reset" />
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
            <blockpin signalname="btn_south" name="reset" />
        </block>
        <block symbolname="rs232" name="XLXI_9">
            <blockpin name="TxStart" />
            <blockpin signalname="btn_south" name="Reset" />
            <blockpin signalname="XLXN_24" name="Clk_50MHz" />
            <blockpin signalname="RS232_RXD" name="RS232_RxD" />
            <blockpin name="TxDI(7:0)" />
            <blockpin signalname="led0" name="RxRdy" />
            <blockpin signalname="RS232_TXD" name="RS232_TxD" />
            <blockpin name="TxBusy" />
            <blockpin signalname="led(7:0)" name="RxDO(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_3">
            <wire x2="1120" y1="720" y2="720" x1="1088" />
            <wire x2="1136" y1="640" y2="640" x1="1120" />
            <wire x2="1120" y1="640" y2="720" x1="1120" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="1552" y1="704" y2="704" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="704" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="1552" y1="768" y2="768" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="768" name="VGA_VS" orien="R0" />
        <branch name="XLXN_10(2:0)">
            <wire x2="1136" y1="960" y2="960" x1="1120" />
            <wire x2="1120" y1="960" y2="1248" x1="1120" />
            <wire x2="2240" y1="1248" y2="1248" x1="1120" />
            <wire x2="2240" y1="960" y2="960" x1="2160" />
            <wire x2="2240" y1="960" y2="1248" x1="2240" />
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
            <wire x2="1776" y1="832" y2="832" x1="1520" />
        </branch>
        <branch name="XLXN_17(9:0)">
            <wire x2="1776" y1="896" y2="896" x1="1520" />
        </branch>
        <branch name="RS232_TXD">
            <wire x2="2992" y1="704" y2="704" x1="2896" />
        </branch>
        <branch name="RS232_RXD">
            <wire x2="2512" y1="816" y2="816" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2320" y="816" name="RS232_RXD" orien="R180" />
        <instance x="1776" y="800" name="XLXI_7" orien="R0">
        </instance>
        <branch name="led0">
            <wire x2="1728" y1="528" y2="1024" x1="1728" />
            <wire x2="1776" y1="1024" y2="1024" x1="1728" />
            <wire x2="2960" y1="528" y2="528" x1="1728" />
            <wire x2="2960" y1="528" y2="560" x1="2960" />
            <wire x2="2960" y1="560" y2="624" x1="2960" />
            <wire x2="2960" y1="624" y2="624" x1="2896" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="1776" y1="1088" y2="1088" x1="1760" />
            <wire x2="1760" y1="1088" y2="1184" x1="1760" />
            <wire x2="2976" y1="1184" y2="1184" x1="1760" />
            <wire x2="2976" y1="864" y2="864" x1="2896" />
            <wire x2="2976" y1="864" y2="1184" x1="2976" />
            <wire x2="3072" y1="864" y2="864" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="464" y="848" name="Clk_50MHz" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="624" y1="848" y2="848" x1="464" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1104" y1="848" y2="848" x1="1088" />
            <wire x2="1104" y1="544" y2="848" x1="1104" />
            <wire x2="2224" y1="544" y2="544" x1="1104" />
            <wire x2="2224" y1="544" y2="752" x1="2224" />
            <wire x2="2512" y1="752" y2="752" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2992" y="704" name="RS232_TXD" orien="R0" />
        <instance x="2512" y="912" name="XLXI_9" orien="R0">
        </instance>
        <branch name="btn_south">
            <wire x2="512" y1="656" y2="656" x1="448" />
            <wire x2="608" y1="656" y2="656" x1="512" />
            <wire x2="624" y1="656" y2="656" x1="608" />
            <wire x2="512" y1="656" y2="1216" x1="512" />
            <wire x2="1136" y1="1216" y2="1216" x1="512" />
            <wire x2="512" y1="1216" y2="1344" x1="512" />
            <wire x2="1744" y1="1344" y2="1344" x1="512" />
            <wire x2="2400" y1="1344" y2="1344" x1="1744" />
            <wire x2="1744" y1="1152" y2="1344" x1="1744" />
            <wire x2="1776" y1="1152" y2="1152" x1="1744" />
            <wire x2="2400" y1="688" y2="1344" x1="2400" />
            <wire x2="2512" y1="688" y2="688" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="448" y="656" name="btn_south" orien="R180" />
        <iomarker fontsize="28" x="3072" y="864" name="led(7:0)" orien="R0" />
    </sheet>
</drawing>