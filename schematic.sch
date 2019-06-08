<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="NET_ReceiveReady">
        </signal>
        <signal name="RS232_RXD" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_25" />
        <signal name="XLXN_34(7:0)" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_16(9:0)" />
        <signal name="XLXN_17(9:0)" />
        <signal name="XLXN_27" />
        <signal name="XLXN_37(2:0)" />
        <signal name="XLXN_42(1:0)" />
        <signal name="btn_south" />
        <signal name="XLXN_98" />
        <signal name="RS232_TXD" />
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
            <timestamp>2019-6-7T10:1:36</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-380" height="584" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
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
        <blockdef name="frameInformer">
            <timestamp>2019-6-7T9:54:45</timestamp>
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="320" />
        </blockdef>
        <block symbolname="freq_gen" name="XLXI_1">
            <blockpin signalname="btn_south" name="RST_IN" />
            <blockpin signalname="Clk_50MHz" name="CLKIN_IN" />
            <blockpin name="LOCKED_OUT" />
            <blockpin signalname="XLXN_98" name="CLKFX_OUT" />
            <blockpin name="CLKIN_IBUFG_OUT" />
            <blockpin signalname="XLXN_25" name="CLK0_OUT" />
        </block>
        <block symbolname="rs232" name="XLXI_9">
            <blockpin name="TxStart" />
            <blockpin signalname="btn_south" name="Reset" />
            <blockpin signalname="XLXN_25" name="Clk_50MHz" />
            <blockpin signalname="RS232_RXD" name="RS232_RxD" />
            <blockpin name="TxDI(7:0)" />
            <blockpin signalname="NET_ReceiveReady" name="RxRdy" />
            <blockpin signalname="RS232_TXD" name="RS232_TxD" />
            <blockpin name="TxBusy" />
            <blockpin signalname="XLXN_34(7:0)" name="RxDO(7:0)" />
        </block>
        <block symbolname="vga_controller" name="XLXI_8">
            <blockpin signalname="XLXN_37(2:0)" name="color(2:0)" />
            <blockpin signalname="VGA_HS" name="h_sync" />
            <blockpin signalname="VGA_VS" name="v_sync" />
            <blockpin signalname="VGA_R" name="vga_r" />
            <blockpin signalname="VGA_G" name="vga_g" />
            <blockpin signalname="VGA_B" name="vga_b" />
            <blockpin signalname="XLXN_16(9:0)" name="row(9:0)" />
            <blockpin signalname="XLXN_17(9:0)" name="column(9:0)" />
            <blockpin signalname="btn_south" name="reset" />
            <blockpin signalname="XLXN_98" name="pixel_clk" />
        </block>
        <block symbolname="obrazek" name="XLXI_7">
            <blockpin signalname="XLXN_27" name="newFrame" />
            <blockpin signalname="XLXN_37(2:0)" name="color(2:0)" />
            <blockpin signalname="XLXN_16(9:0)" name="row(9:0)" />
            <blockpin signalname="XLXN_17(9:0)" name="column(9:0)" />
            <blockpin signalname="XLXN_42(1:0)" name="button(1:0)" />
            <blockpin signalname="btn_south" name="reset" />
        </block>
        <block symbolname="frameInformer" name="XLXI_10">
            <blockpin signalname="XLXN_25" name="Clk_50MHz" />
            <blockpin signalname="NET_ReceiveReady" name="Byte_Rdy" />
            <blockpin signalname="btn_south" name="Reset" />
            <blockpin signalname="XLXN_34(7:0)" name="ByteIn(7:0)" />
            <blockpin signalname="XLXN_27" name="newFrame" />
            <blockpin signalname="XLXN_42(1:0)" name="button(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RS232_RXD">
            <wire x2="576" y1="336" y2="336" x1="400" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="560" y1="832" y2="832" x1="384" />
        </branch>
        <branch name="XLXN_34(7:0)">
            <wire x2="1408" y1="384" y2="384" x1="960" />
        </branch>
        <branch name="NET_ReceiveReady">
            <wire x2="1392" y1="144" y2="144" x1="960" />
            <wire x2="1392" y1="144" y2="320" x1="1392" />
            <wire x2="1408" y1="320" y2="320" x1="1392" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="1824" y1="704" y2="704" x1="1792" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="1824" y1="768" y2="768" x1="1792" />
        </branch>
        <instance x="1408" y="1056" name="XLXI_8" orien="R0">
        </instance>
        <branch name="VGA_R">
            <wire x2="1824" y1="1024" y2="1024" x1="1792" />
        </branch>
        <branch name="VGA_G">
            <wire x2="1824" y1="1088" y2="1088" x1="1792" />
        </branch>
        <branch name="VGA_B">
            <wire x2="1824" y1="1152" y2="1152" x1="1792" />
        </branch>
        <branch name="XLXN_16(9:0)">
            <wire x2="2048" y1="832" y2="832" x1="1792" />
        </branch>
        <branch name="XLXN_17(9:0)">
            <wire x2="2048" y1="896" y2="896" x1="1792" />
        </branch>
        <instance x="2048" y="784" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_37(2:0)">
            <wire x2="1408" y1="960" y2="960" x1="1328" />
            <wire x2="1328" y1="960" y2="1296" x1="1328" />
            <wire x2="2512" y1="1296" y2="1296" x1="1328" />
            <wire x2="2512" y1="768" y2="768" x1="2432" />
            <wire x2="2512" y1="768" y2="1296" x1="2512" />
        </branch>
        <branch name="XLXN_42(1:0)">
            <wire x2="2000" y1="448" y2="448" x1="1792" />
            <wire x2="2000" y1="448" y2="960" x1="2000" />
            <wire x2="2048" y1="960" y2="960" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="1824" y="704" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="1824" y="768" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="1824" y="1024" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="1824" y="1088" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="1824" y="1152" name="VGA_B" orien="R0" />
        <branch name="btn_south">
            <wire x2="480" y1="640" y2="640" x1="384" />
            <wire x2="560" y1="640" y2="640" x1="480" />
            <wire x2="480" y1="640" y2="1344" x1="480" />
            <wire x2="1216" y1="1344" y2="1344" x1="480" />
            <wire x2="2032" y1="1344" y2="1344" x1="1216" />
            <wire x2="576" y1="208" y2="208" x1="480" />
            <wire x2="480" y1="208" y2="640" x1="480" />
            <wire x2="1408" y1="256" y2="256" x1="1216" />
            <wire x2="1216" y1="256" y2="1216" x1="1216" />
            <wire x2="1408" y1="1216" y2="1216" x1="1216" />
            <wire x2="1216" y1="1216" y2="1344" x1="1216" />
            <wire x2="2048" y1="1024" y2="1024" x1="2032" />
            <wire x2="2032" y1="1024" y2="1344" x1="2032" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2032" y1="192" y2="192" x1="1792" />
            <wire x2="2032" y1="192" y2="768" x1="2032" />
            <wire x2="2048" y1="768" y2="768" x1="2032" />
        </branch>
        <instance x="1408" y="288" name="XLXI_10" orien="R0">
        </instance>
        <instance x="576" y="432" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_25">
            <wire x2="1264" y1="32" y2="32" x1="528" />
            <wire x2="1264" y1="32" y2="192" x1="1264" />
            <wire x2="1408" y1="192" y2="192" x1="1264" />
            <wire x2="1264" y1="192" y2="832" x1="1264" />
            <wire x2="528" y1="32" y2="272" x1="528" />
            <wire x2="576" y1="272" y2="272" x1="528" />
            <wire x2="1264" y1="832" y2="832" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="400" y="336" name="RS232_RXD" orien="R180" />
        <branch name="XLXN_98">
            <wire x2="1408" y1="704" y2="704" x1="1024" />
        </branch>
        <instance x="560" y="864" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="384" y="832" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="384" y="640" name="btn_south" orien="R180" />
        <branch name="RS232_TXD">
            <wire x2="992" y1="224" y2="224" x1="960" />
        </branch>
        <iomarker fontsize="28" x="992" y="224" name="RS232_TXD" orien="R0" />
    </sheet>
</drawing>