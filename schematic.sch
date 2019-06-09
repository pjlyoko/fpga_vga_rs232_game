<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RS232_RXD" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_25" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_16(9:0)" />
        <signal name="XLXN_17(9:0)" />
        <signal name="XLXN_27" />
        <signal name="XLXN_37(2:0)" />
        <signal name="btn_south" />
        <signal name="XLXN_98" />
        <signal name="RS232_TXD" />
        <signal name="XLXN_125(1:0)" />
        <signal name="XLXN_128" />
        <signal name="XLXN_129(7:0)" />
        <signal name="XLXN_130" />
        <signal name="XLXN_131(7:0)" />
        <signal name="XLXN_133(2:0)" />
        <signal name="XLXN_134" />
        <signal name="XLXN_135" />
        <signal name="XLXN_136" />
        <port polarity="Input" name="RS232_RXD" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Input" name="btn_south" />
        <port polarity="Output" name="RS232_TXD" />
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
            <timestamp>2019-6-9T19:1:34</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-380" height="584" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
        </blockdef>
        <blockdef name="obrazek">
            <timestamp>2019-6-7T9:51:50</timestamp>
            <line x2="0" y1="-16" y2="-16" x1="64" />
            <rect width="256" x="64" y="-44" height="332" />
            <rect width="64" x="320" y="-28" height="24" />
            <line x2="384" y1="-16" y2="-16" x1="320" />
            <rect width="64" x="0" y="36" height="24" />
            <line x2="0" y1="48" y2="48" x1="64" />
            <rect width="64" x="0" y="100" height="24" />
            <line x2="0" y1="112" y2="112" x1="64" />
            <rect width="64" x="0" y="164" height="24" />
            <line x2="0" y1="176" y2="176" x1="64" />
            <line x2="0" y1="240" y2="240" x1="64" />
        </blockdef>
        <blockdef name="rs232">
            <timestamp>2019-6-9T18:55:21</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="frameInformer">
            <timestamp>2019-6-9T18:53:28</timestamp>
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="260" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
        </blockdef>
        <block symbolname="freq_gen" name="inst1_freq_gen">
            <blockpin signalname="btn_south" name="RST_IN" />
            <blockpin signalname="Clk_50MHz" name="CLKIN_IN" />
            <blockpin name="LOCKED_OUT" />
            <blockpin signalname="XLXN_98" name="CLKFX_OUT" />
            <blockpin name="CLKIN_IBUFG_OUT" />
            <blockpin signalname="XLXN_25" name="CLK0_OUT" />
        </block>
        <block symbolname="rs232" name="inst1_rs232">
            <blockpin signalname="XLXN_128" name="TxStart" />
            <blockpin signalname="btn_south" name="Reset" />
            <blockpin signalname="XLXN_25" name="Clk_50MHz" />
            <blockpin signalname="RS232_RXD" name="RS232_RxD" />
            <blockpin signalname="XLXN_131(7:0)" name="TxDI(7:0)" />
            <blockpin signalname="XLXN_128" name="RxRdy" />
            <blockpin signalname="RS232_TXD" name="RS232_TxD" />
            <blockpin name="TxBusy" />
            <blockpin signalname="XLXN_131(7:0)" name="RxDO(7:0)" />
        </block>
        <block symbolname="vga_controller" name="inst1_vga_controller">
            <blockpin signalname="VGA_HS" name="h_sync" />
            <blockpin signalname="VGA_VS" name="v_sync" />
            <blockpin signalname="VGA_R" name="vga_r" />
            <blockpin signalname="VGA_G" name="vga_g" />
            <blockpin signalname="VGA_B" name="vga_b" />
            <blockpin signalname="XLXN_16(9:0)" name="row(9:0)" />
            <blockpin signalname="XLXN_17(9:0)" name="column(9:0)" />
            <blockpin signalname="btn_south" name="reset" />
            <blockpin signalname="XLXN_98" name="pixel_clk" />
            <blockpin signalname="XLXN_37(2:0)" name="color(2:0)" />
        </block>
        <block symbolname="obrazek" name="inst1_obrazek">
            <blockpin signalname="XLXN_27" name="newFrame" />
            <blockpin signalname="XLXN_37(2:0)" name="color(2:0)" />
            <blockpin signalname="XLXN_16(9:0)" name="row(9:0)" />
            <blockpin signalname="XLXN_17(9:0)" name="column(9:0)" />
            <blockpin signalname="XLXN_125(1:0)" name="button(1:0)" />
            <blockpin signalname="btn_south" name="reset" />
        </block>
        <block symbolname="frameInformer" name="inst1_frameInformer">
            <blockpin signalname="XLXN_25" name="Clk_50MHz" />
            <blockpin signalname="XLXN_27" name="newFrame" />
            <blockpin signalname="XLXN_128" name="Byte_Rdy" />
            <blockpin signalname="XLXN_131(7:0)" name="ByteIn(7:0)" />
            <blockpin signalname="XLXN_125(1:0)" name="button(1:0)" />
            <blockpin signalname="btn_south" name="Reset" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RS232_RXD">
            <wire x2="1472" y1="336" y2="336" x1="400" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3008" y1="688" y2="688" x1="2992" />
            <wire x2="3168" y1="688" y2="688" x1="3008" />
        </branch>
        <branch name="VGA_R">
            <wire x2="3008" y1="1008" y2="1008" x1="2992" />
            <wire x2="3168" y1="1008" y2="1008" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="400" y="336" name="RS232_RXD" orien="R180" />
        <instance x="1472" y="432" name="inst1_rs232" orien="R0">
        </instance>
        <branch name="RS232_TXD">
            <wire x2="1872" y1="208" y2="208" x1="1856" />
            <wire x2="3168" y1="208" y2="208" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="384" y="560" name="btn_south" orien="R180" />
        <iomarker fontsize="28" x="384" y="752" name="Clk_50MHz" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="560" y1="752" y2="752" x1="384" />
        </branch>
        <instance x="560" y="784" name="inst1_freq_gen" orien="R0">
        </instance>
        <branch name="XLXN_131(7:0)">
            <wire x2="1440" y1="400" y2="464" x1="1440" />
            <wire x2="1888" y1="464" y2="464" x1="1440" />
            <wire x2="1440" y1="464" y2="880" x1="1440" />
            <wire x2="1472" y1="880" y2="880" x1="1440" />
            <wire x2="1472" y1="400" y2="400" x1="1440" />
            <wire x2="1888" y1="400" y2="400" x1="1856" />
            <wire x2="1888" y1="400" y2="464" x1="1888" />
        </branch>
        <branch name="XLXN_128">
            <wire x2="1472" y1="144" y2="144" x1="1392" />
            <wire x2="1392" y1="144" y2="496" x1="1392" />
            <wire x2="1936" y1="496" y2="496" x1="1392" />
            <wire x2="1392" y1="496" y2="816" x1="1392" />
            <wire x2="1472" y1="816" y2="816" x1="1392" />
            <wire x2="1936" y1="144" y2="144" x1="1856" />
            <wire x2="1936" y1="144" y2="496" x1="1936" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1264" y1="752" y2="752" x1="1024" />
            <wire x2="1472" y1="752" y2="752" x1="1264" />
            <wire x2="1472" y1="272" y2="272" x1="1264" />
            <wire x2="1264" y1="272" y2="752" x1="1264" />
        </branch>
        <instance x="1472" y="848" name="inst1_frameInformer" orien="R0">
        </instance>
        <branch name="btn_south">
            <wire x2="480" y1="560" y2="560" x1="384" />
            <wire x2="560" y1="560" y2="560" x1="480" />
            <wire x2="480" y1="560" y2="1200" x1="480" />
            <wire x2="1472" y1="1200" y2="1200" x1="480" />
            <wire x2="2048" y1="1200" y2="1200" x1="1472" />
            <wire x2="2608" y1="1200" y2="1200" x1="2048" />
            <wire x2="1472" y1="208" y2="208" x1="480" />
            <wire x2="480" y1="208" y2="560" x1="480" />
            <wire x2="1472" y1="944" y2="1200" x1="1472" />
            <wire x2="2048" y1="1008" y2="1200" x1="2048" />
        </branch>
        <branch name="XLXN_125(1:0)">
            <wire x2="2048" y1="944" y2="944" x1="1856" />
        </branch>
        <branch name="XLXN_17(9:0)">
            <wire x2="3072" y1="576" y2="576" x1="2016" />
            <wire x2="3072" y1="576" y2="880" x1="3072" />
            <wire x2="2016" y1="576" y2="880" x1="2016" />
            <wire x2="2048" y1="880" y2="880" x1="2016" />
            <wire x2="3072" y1="880" y2="880" x1="2992" />
        </branch>
        <branch name="XLXN_16(9:0)">
            <wire x2="2032" y1="592" y2="816" x1="2032" />
            <wire x2="2048" y1="816" y2="816" x1="2032" />
            <wire x2="3056" y1="592" y2="592" x1="2032" />
            <wire x2="3056" y1="592" y2="816" x1="3056" />
            <wire x2="3056" y1="816" y2="816" x1="2992" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2048" y1="752" y2="752" x1="1856" />
        </branch>
        <instance x="2048" y="768" name="inst1_obrazek" orien="R0">
        </instance>
        <branch name="VGA_B">
            <wire x2="3008" y1="1136" y2="1136" x1="2992" />
            <wire x2="3168" y1="1136" y2="1136" x1="3008" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3008" y1="1072" y2="1072" x1="2992" />
            <wire x2="3168" y1="1072" y2="1072" x1="3008" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3008" y1="752" y2="752" x1="2992" />
            <wire x2="3168" y1="752" y2="752" x1="3008" />
        </branch>
        <branch name="XLXN_37(2:0)">
            <wire x2="2608" y1="752" y2="752" x1="2432" />
        </branch>
        <instance x="2608" y="1040" name="inst1_vga_controller" orien="R0">
        </instance>
        <branch name="XLXN_98">
            <wire x2="2608" y1="624" y2="624" x1="1024" />
            <wire x2="2608" y1="624" y2="688" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="3168" y="688" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3168" y="752" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="3168" y="1008" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="3168" y="1072" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3168" y="1136" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3168" y="208" name="RS232_TXD" orien="R0" />
    </sheet>
</drawing>