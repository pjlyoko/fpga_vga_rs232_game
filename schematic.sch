<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RS232_RXD" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_37(2:0)" />
        <signal name="RS232_TXD" />
        <signal name="XLXN_125(1:0)" />
        <signal name="XLXN_131(7:0)" />
        <signal name="XLXN_128" />
        <signal name="XLXN_161" />
        <signal name="XLXN_202" />
        <signal name="XLXN_214" />
        <signal name="XLXN_215(9:0)" />
        <signal name="XLXN_219(9:0)" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_230(9:0)" />
        <signal name="btn_south" />
        <signal name="XLXN_238" />
        <signal name="XLXN_239" />
        <signal name="XLXN_247" />
        <signal name="XLXN_248" />
        <signal name="XLXN_249" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_251" />
        <port polarity="Input" name="RS232_RXD" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="RS232_TXD" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Input" name="btn_south" />
        <port polarity="Input" name="Clk_50MHz" />
        <blockdef name="freq_gen">
            <timestamp>2019-6-12T16:9:43</timestamp>
            <rect width="336" x="64" y="-256" height="188" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
        </blockdef>
        <blockdef name="vga_controller">
            <timestamp>2019-6-10T10:23:15</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="256" x="64" y="-380" height="584" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="obrazek">
            <timestamp>2019-6-12T15:29:51</timestamp>
            <line x2="0" y1="-16" y2="-16" x1="64" />
            <rect width="64" x="320" y="-28" height="24" />
            <line x2="384" y1="-16" y2="-16" x1="320" />
            <rect width="64" x="0" y="36" height="24" />
            <line x2="0" y1="48" y2="48" x1="64" />
            <rect width="64" x="0" y="100" height="24" />
            <line x2="0" y1="112" y2="112" x1="64" />
            <rect width="64" x="0" y="164" height="24" />
            <line x2="0" y1="176" y2="176" x1="64" />
            <rect width="256" x="64" y="-44" height="372" />
            <line x2="0" y1="304" y2="304" x1="64" />
            <rect width="64" x="0" y="228" height="24" />
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
            <timestamp>2019-6-12T15:28:2</timestamp>
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="256" x="64" y="-128" height="324" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="freq_gen" name="inst1_freq_gen">
            <blockpin signalname="Clk_50MHz" name="CLKIN_IN" />
            <blockpin signalname="XLXN_202" name="CLKFX_OUT" />
            <blockpin name="CLKIN_IBUFG_OUT" />
            <blockpin signalname="XLXN_251" name="CLK0_OUT" />
        </block>
        <block symbolname="vga_controller" name="inst1_vga_controller">
            <blockpin signalname="VGA_R" name="vga_r" />
            <blockpin signalname="VGA_G" name="vga_g" />
            <blockpin signalname="VGA_B" name="vga_b" />
            <blockpin signalname="XLXN_247" name="reset" />
            <blockpin signalname="XLXN_202" name="pixel_clk" />
            <blockpin signalname="XLXN_37(2:0)" name="color(2:0)" />
            <blockpin signalname="XLXN_215(9:0)" name="row(9:0)" />
            <blockpin signalname="XLXN_219(9:0)" name="column(9:0)" />
            <blockpin signalname="VGA_HS" name="h_sync" />
            <blockpin signalname="VGA_VS" name="v_sync" />
        </block>
        <block symbolname="rs232" name="inst1_rs232">
            <blockpin signalname="XLXN_128" name="TxStart" />
            <blockpin signalname="XLXN_249" name="Reset" />
            <blockpin signalname="XLXN_251" name="Clk_50MHz" />
            <blockpin signalname="RS232_RXD" name="RS232_RxD" />
            <blockpin signalname="XLXN_131(7:0)" name="TxDI(7:0)" />
            <blockpin signalname="XLXN_128" name="RxRdy" />
            <blockpin signalname="RS232_TXD" name="RS232_TxD" />
            <blockpin name="TxBusy" />
            <blockpin signalname="XLXN_131(7:0)" name="RxDO(7:0)" />
        </block>
        <block symbolname="frameInformer" name="inst1_frameInformer">
            <blockpin signalname="XLXN_251" name="Clk_50MHz" />
            <blockpin signalname="XLXN_128" name="Byte_Rdy" />
            <blockpin signalname="XLXN_249" name="Reset" />
            <blockpin signalname="XLXN_131(7:0)" name="ByteIn(7:0)" />
            <blockpin signalname="XLXN_214" name="newFrame" />
            <blockpin signalname="XLXN_125(1:0)" name="button(1:0)" />
            <blockpin signalname="XLXN_230(9:0)" name="random(9:0)" />
        </block>
        <block symbolname="obrazek" name="inst1_obrazek">
            <blockpin signalname="XLXN_214" name="newFrame" />
            <blockpin signalname="XLXN_215(9:0)" name="row(9:0)" />
            <blockpin signalname="XLXN_219(9:0)" name="column(9:0)" />
            <blockpin signalname="XLXN_125(1:0)" name="button(1:0)" />
            <blockpin signalname="XLXN_37(2:0)" name="color(2:0)" />
            <blockpin signalname="XLXN_249" name="reset" />
            <blockpin signalname="XLXN_230(9:0)" name="randomX(9:0)" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="XLXN_202" name="C" />
            <blockpin signalname="XLXN_249" name="D" />
            <blockpin signalname="XLXN_239" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="XLXN_202" name="C" />
            <blockpin signalname="XLXN_239" name="D" />
            <blockpin signalname="XLXN_247" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_8">
            <blockpin signalname="XLXN_251" name="C" />
            <blockpin signalname="btn_south" name="D" />
            <blockpin signalname="XLXN_249" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RS232_RXD">
            <wire x2="1296" y1="336" y2="336" x1="400" />
        </branch>
        <branch name="VGA_R">
            <wire x2="3040" y1="1008" y2="1008" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="400" y="336" name="RS232_RXD" orien="R180" />
        <branch name="RS232_TXD">
            <wire x2="3040" y1="208" y2="208" x1="1680" />
        </branch>
        <branch name="XLXN_125(1:0)">
            <wire x2="1872" y1="1008" y2="1008" x1="1696" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3040" y1="1136" y2="1136" x1="2736" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3040" y1="1072" y2="1072" x1="2736" />
        </branch>
        <branch name="XLXN_37(2:0)">
            <wire x2="2352" y1="816" y2="816" x1="2256" />
        </branch>
        <instance x="1296" y="432" name="inst1_rs232" orien="R0">
        </instance>
        <instance x="2352" y="1040" name="inst1_vga_controller" orien="R0">
        </instance>
        <instance x="560" y="912" name="inst1_freq_gen" orien="R0">
        </instance>
        <branch name="XLXN_214">
            <wire x2="1872" y1="816" y2="816" x1="1696" />
        </branch>
        <branch name="XLXN_215(9:0)">
            <wire x2="1824" y1="592" y2="880" x1="1824" />
            <wire x2="1872" y1="880" y2="880" x1="1824" />
            <wire x2="2864" y1="592" y2="592" x1="1824" />
            <wire x2="2864" y1="592" y2="688" x1="2864" />
            <wire x2="2864" y1="688" y2="688" x1="2736" />
        </branch>
        <instance x="1872" y="832" name="inst1_obrazek" orien="R0">
        </instance>
        <branch name="XLXN_219(9:0)">
            <wire x2="1776" y1="544" y2="944" x1="1776" />
            <wire x2="1872" y1="944" y2="944" x1="1776" />
            <wire x2="2912" y1="544" y2="544" x1="1776" />
            <wire x2="2912" y1="544" y2="752" x1="2912" />
            <wire x2="2912" y1="752" y2="752" x1="2736" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3040" y1="880" y2="880" x1="2736" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3040" y1="944" y2="944" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="3040" y="208" name="RS232_TXD" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1008" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1072" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1136" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3040" y="880" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3040" y="944" name="VGA_VS" orien="R0" />
        <branch name="XLXN_128">
            <wire x2="1296" y1="144" y2="144" x1="1216" />
            <wire x2="1216" y1="144" y2="496" x1="1216" />
            <wire x2="1760" y1="496" y2="496" x1="1216" />
            <wire x2="1216" y1="496" y2="880" x1="1216" />
            <wire x2="1312" y1="880" y2="880" x1="1216" />
            <wire x2="1760" y1="144" y2="144" x1="1680" />
            <wire x2="1760" y1="144" y2="496" x1="1760" />
        </branch>
        <branch name="XLXN_230(9:0)">
            <wire x2="1872" y1="1072" y2="1072" x1="1696" />
        </branch>
        <instance x="1312" y="912" name="inst1_frameInformer" orien="R0">
        </instance>
        <branch name="XLXN_131(7:0)">
            <wire x2="1264" y1="400" y2="464" x1="1264" />
            <wire x2="1712" y1="464" y2="464" x1="1264" />
            <wire x2="1264" y1="464" y2="944" x1="1264" />
            <wire x2="1312" y1="944" y2="944" x1="1264" />
            <wire x2="1296" y1="400" y2="400" x1="1264" />
            <wire x2="1712" y1="400" y2="400" x1="1680" />
            <wire x2="1712" y1="400" y2="464" x1="1712" />
        </branch>
        <branch name="XLXN_202">
            <wire x2="1040" y1="688" y2="688" x1="1024" />
            <wire x2="1136" y1="688" y2="688" x1="1040" />
            <wire x2="1152" y1="688" y2="688" x1="1136" />
            <wire x2="1920" y1="688" y2="688" x1="1152" />
            <wire x2="2352" y1="688" y2="688" x1="1920" />
            <wire x2="1136" y1="688" y2="1584" x1="1136" />
            <wire x2="1152" y1="1584" y2="1584" x1="1136" />
            <wire x2="1136" y1="1584" y2="1712" x1="1136" />
            <wire x2="1600" y1="1712" y2="1712" x1="1136" />
            <wire x2="1600" y1="1584" y2="1712" x1="1600" />
            <wire x2="1712" y1="1584" y2="1584" x1="1600" />
        </branch>
        <instance x="1152" y="1712" name="XLXI_3" orien="R0" />
        <instance x="1712" y="1712" name="XLXI_4" orien="R0" />
        <iomarker fontsize="28" x="640" y="1472" name="btn_south" orien="R180" />
        <branch name="XLXN_239">
            <wire x2="1712" y1="1456" y2="1456" x1="1536" />
        </branch>
        <instance x="672" y="1728" name="XLXI_8" orien="R0" />
        <branch name="btn_south">
            <wire x2="656" y1="1472" y2="1472" x1="640" />
            <wire x2="672" y1="1472" y2="1472" x1="656" />
        </branch>
        <branch name="XLXN_247">
            <wire x2="2224" y1="1456" y2="1456" x1="2096" />
            <wire x2="2224" y1="1200" y2="1456" x1="2224" />
            <wire x2="2352" y1="1200" y2="1200" x1="2224" />
        </branch>
        <branch name="XLXN_249">
            <wire x2="1072" y1="1472" y2="1472" x1="1056" />
            <wire x2="1088" y1="1472" y2="1472" x1="1072" />
            <wire x2="1104" y1="1472" y2="1472" x1="1088" />
            <wire x2="1296" y1="208" y2="208" x1="1088" />
            <wire x2="1088" y1="208" y2="1008" x1="1088" />
            <wire x2="1312" y1="1008" y2="1008" x1="1088" />
            <wire x2="1088" y1="1008" y2="1136" x1="1088" />
            <wire x2="1088" y1="1136" y2="1472" x1="1088" />
            <wire x2="1872" y1="1136" y2="1136" x1="1088" />
            <wire x2="1104" y1="1456" y2="1472" x1="1104" />
            <wire x2="1152" y1="1456" y2="1456" x1="1104" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="560" y1="816" y2="816" x1="528" />
        </branch>
        <iomarker fontsize="28" x="528" y="816" name="Clk_50MHz" orien="R180" />
        <branch name="XLXN_251">
            <wire x2="400" y1="1344" y2="1600" x1="400" />
            <wire x2="672" y1="1600" y2="1600" x1="400" />
            <wire x2="1056" y1="1344" y2="1344" x1="400" />
            <wire x2="1056" y1="816" y2="816" x1="1024" />
            <wire x2="1120" y1="816" y2="816" x1="1056" />
            <wire x2="1312" y1="816" y2="816" x1="1120" />
            <wire x2="1056" y1="816" y2="1344" x1="1056" />
            <wire x2="1296" y1="272" y2="272" x1="1120" />
            <wire x2="1120" y1="272" y2="816" x1="1120" />
        </branch>
    </sheet>
</drawing>