# File saved with Nlview 6.8.11  2018-08-07 bk=1.4403 VDI=40 GEI=35 GUI=JA:9.0 TLS
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new mainCircuit work:mainCircuit:NOFILE -nosplit
load symbol adder8bits work:adder8bits:NOFILE HIERBOX pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus C output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol bcd work:bcd:NOFILE HIERBOX pinBus bin input.left [3:0] pinBus dec output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol bcd work:abstract:NOFILE HIERBOX pinBus bin input.left [3:0] pinBus dec output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol counter8bits work:counter8bits:NOFILE HIERBOX pin clk input.left pin reset input.left pin up_down input.left pinBus saida output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX work MUX pin S input.bot pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol reg__parameterized2 work:reg__parameterized2:NOFILE HIERBOX pin clk input.left pin lr input.left pin reset input.left pinBus dado_ent input.left [6:0] pinBus saida output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol reg__parameterized2 work:abstract:NOFILE HIERBOX pin clk input.left pin lr input.left pin reset input.left pinBus dado_ent input.left [6:0] pinBus saida output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol reg work:reg:NOFILE HIERBOX pin clk input.left pin lr input.left pin reset input.left pinBus dado_ent input.left [7:0] pinBus saida output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol reg work:abstract:NOFILE HIERBOX pin clk input.left pin lr input.left pin reset input.left pinBus dado_ent input.left [7:0] pinBus saida output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol subtractor8bits work_library0_3:subtractor8bits:subtractor8bits.edf HIERBOX pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus S output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load port lr input -pg 1 -y 140
load port updown input -pg 1 -y 300
load port clock input -pg 1 -y 100
load port reset input -pg 1 -y 160
load port sel input -pg 1 -y 340
load portBus dado_ent input [7:0] -attr @name dado_ent[7:0] -pg 1 -y 120
load portBus display0 output [6:0] -attr @name display0[6:0] -pg 1 -y 90
load portBus display1 output [6:0] -attr @name display1[6:0] -pg 1 -y 240
load inst reg_bcd_display1 reg__parameterized2 work:abstract:NOFILE -autohide -attr @cell(#000000) reg__parameterized2 -pinBusAttr dado_ent @name dado_ent[6:0] -pinBusAttr saida @name saida[6:0] -pg 1 -lvl 6 -y 210
load inst reg_mux reg work:abstract:NOFILE -autohide -attr @cell(#000000) reg -pinBusAttr dado_ent @name dado_ent[7:0] -pinBusAttr saida @name saida[7:0] -pg 1 -lvl 4 -y 290
load inst subtractor subtractor8bits work_library0_3:subtractor8bits:subtractor8bits.edf -autohide -attr @cell(#000000) subtractor8bits -pinBusAttr A @name A[7:0] -pinBusAttr B @name B[7:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 2 -y 250
load inst bcd_display0 bcd work:bcd:NOFILE -autohide -attr @cell(#000000) bcd -pinBusAttr bin @name bin[3:0] -pinBusAttr dec @name dec[6:0] -pg 1 -lvl 5 -y 80
load inst counter counter8bits work:counter8bits:NOFILE -autohide -attr @cell(#000000) counter8bits -pinBusAttr saida @name saida[7:0] -pg 1 -lvl 1 -y 250
load inst adder adder8bits work:adder8bits:NOFILE -autohide -attr @cell(#000000) adder8bits -pinBusAttr A @name A[7:0] -pinBusAttr B @name B[7:0] -pinBusAttr C @name C[7:0] -pg 1 -lvl 2 -y 140
load inst bcd_display1 bcd work:abstract:NOFILE -autohide -attr @cell(#000000) bcd -pinBusAttr bin @name bin[3:0] -pinBusAttr dec @name dec[6:0] -pg 1 -lvl 5 -y 170
load inst output_mux_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 3 -y 250
load inst reg_in reg work:reg:NOFILE -autohide -attr @cell(#000000) reg -pinBusAttr dado_ent @name dado_ent[7:0] -pinBusAttr saida @name saida[7:0] -pg 1 -lvl 1 -y 90
load inst reg_bcd_display0 reg__parameterized2 work:reg__parameterized2:NOFILE -autohide -attr @cell(#000000) reg__parameterized2 -pinBusAttr dado_ent @name dado_ent[6:0] -pinBusAttr saida @name saida[6:0] -pg 1 -lvl 6 -y 60
load net display0[0] -attr @rip saida[0] -port display0[0] -pin reg_bcd_display0 saida[0]
load net output_regin[0] -attr @rip saida[0] -pin adder B[0] -pin reg_in saida[0] -pin subtractor B[0]
load net outuput_bcd_display0[5] -attr @rip dec[5] -pin bcd_display0 dec[5] -pin reg_bcd_display0 dado_ent[5]
load net S[6] -attr @rip S[6] -pin output_mux_i I1[6] -pin subtractor S[6]
load net display1[4] -attr @rip saida[4] -port display1[4] -pin reg_bcd_display1 saida[4]
load net C[1] -attr @rip C[1] -pin adder C[1] -pin output_mux_i I0[1]
load net output_counter[4] -attr @rip saida[4] -pin adder A[4] -pin counter saida[4] -pin subtractor A[4]
load net S[1] -attr @rip S[1] -pin output_mux_i I1[1] -pin subtractor S[1]
load net output_counter[1] -attr @rip saida[1] -pin adder A[1] -pin counter saida[1] -pin subtractor A[1]
load net dado_ent[6] -attr @rip dado_ent[6] -port dado_ent[6] -pin reg_in dado_ent[6]
load net dado_ent[1] -attr @rip dado_ent[1] -port dado_ent[1] -pin reg_in dado_ent[1]
load net S[3] -attr @rip S[3] -pin output_mux_i I1[3] -pin subtractor S[3]
load net output_regmux[5] -attr @rip saida[5] -pin bcd_display1 bin[1] -pin reg_mux saida[5]
load net outuput_bcd_display1[3] -attr @rip dec[3] -pin bcd_display1 dec[3] -pin reg_bcd_display1 dado_ent[3]
load net C[2] -attr @rip C[2] -pin adder C[2] -pin output_mux_i I0[2]
load net C[7] -attr @rip C[7] -pin adder C[7] -pin output_mux_i I0[7]
load net output_regmux[2] -attr @rip saida[2] -pin bcd_display0 bin[2] -pin reg_mux saida[2]
load net display0[3] -attr @rip saida[3] -port display0[3] -pin reg_bcd_display0 saida[3]
load net dado_ent[0] -attr @rip dado_ent[0] -port dado_ent[0] -pin reg_in dado_ent[0]
load net outuput_bcd_display1[2] -attr @rip dec[2] -pin bcd_display1 dec[2] -pin reg_bcd_display1 dado_ent[2]
load net output_regin[5] -attr @rip saida[5] -pin adder B[5] -pin reg_in saida[5] -pin subtractor B[5]
load net S[4] -attr @rip S[4] -pin output_mux_i I1[4] -pin subtractor S[4]
load net display1[2] -attr @rip saida[2] -port display1[2] -pin reg_bcd_display1 saida[2]
load net outuput_bcd_display0[1] -attr @rip dec[1] -pin bcd_display0 dec[1] -pin reg_bcd_display0 dado_ent[1]
load net <const1> -power -pin reg_bcd_display0 lr -pin reg_bcd_display1 lr -pin reg_mux lr
load net display0[2] -attr @rip saida[2] -port display0[2] -pin reg_bcd_display0 saida[2]
load net output_regin[2] -attr @rip saida[2] -pin adder B[2] -pin reg_in saida[2] -pin subtractor B[2]
load net output_regmux[3] -attr @rip saida[3] -pin bcd_display0 bin[3] -pin reg_mux saida[3]
load net outuput_bcd_display0[2] -attr @rip dec[2] -pin bcd_display0 dec[2] -pin reg_bcd_display0 dado_ent[2]
load net output_counter[7] -attr @rip saida[7] -pin adder A[7] -pin counter saida[7] -pin subtractor A[7]
load net clock -port clock -pin counter clk -pin reg_bcd_display0 clk -pin reg_bcd_display1 clk -pin reg_in clk -pin reg_mux clk
netloc clock 1 0 6 40 200 320J 320 560J 330 850 220 NJ 220 1420
load net lr -port lr -pin reg_in lr
netloc lr 1 0 1 NJ
load net output_regmux[0] -attr @rip saida[0] -pin bcd_display0 bin[0] -pin reg_mux saida[0]
load net dado_ent[3] -attr @rip dado_ent[3] -port dado_ent[3] -pin reg_in dado_ent[3]
load net C[0] -attr @rip C[0] -pin adder C[0] -pin output_mux_i I0[0]
load net output_counter[3] -attr @rip saida[3] -pin adder A[3] -pin counter saida[3] -pin subtractor A[3]
load net display1[0] -attr @rip saida[0] -port display1[0] -pin reg_bcd_display1 saida[0]
load net display1[5] -attr @rip saida[5] -port display1[5] -pin reg_bcd_display1 saida[5]
load net outuput_bcd_display1[5] -attr @rip dec[5] -pin bcd_display1 dec[5] -pin reg_bcd_display1 dado_ent[5]
load net S[2] -attr @rip S[2] -pin output_mux_i I1[2] -pin subtractor S[2]
load net output_counter[0] -attr @rip saida[0] -pin adder A[0] -pin counter saida[0] -pin subtractor A[0]
load net C[4] -attr @rip C[4] -pin adder C[4] -pin output_mux_i I0[4]
load net display0[5] -attr @rip saida[5] -port display0[5] -pin reg_bcd_display0 saida[5]
load net dado_ent[2] -attr @rip dado_ent[2] -port dado_ent[2] -pin reg_in dado_ent[2]
load net output_regmux[1] -attr @rip saida[1] -pin bcd_display0 bin[1] -pin reg_mux saida[1]
load net outuput_bcd_display1[0] -attr @rip dec[0] -pin bcd_display1 dec[0] -pin reg_bcd_display1 dado_ent[0]
load net outuput_bcd_display1[4] -attr @rip dec[4] -pin bcd_display1 dec[4] -pin reg_bcd_display1 dado_ent[4]
load net output_regin[7] -attr @rip saida[7] -pin adder B[7] -pin reg_in saida[7] -pin subtractor B[7]
load net output_counter[5] -attr @rip saida[5] -pin adder A[5] -pin counter saida[5] -pin subtractor A[5]
load net C[3] -attr @rip C[3] -pin adder C[3] -pin output_mux_i I0[3]
load net display0[4] -attr @rip saida[4] -port display0[4] -pin reg_bcd_display0 saida[4]
load net output_regin[4] -attr @rip saida[4] -pin adder B[4] -pin reg_in saida[4] -pin subtractor B[4]
load net outuput_bcd_display0[0] -attr @rip dec[0] -pin bcd_display0 dec[0] -pin reg_bcd_display0 dado_ent[0]
load net output_mux_i_n_0 -attr @rip O[7] -pin output_mux_i O[7] -pin reg_mux dado_ent[7]
load net outuput_bcd_display0[4] -attr @rip dec[4] -pin bcd_display0 dec[4] -pin reg_bcd_display0 dado_ent[4]
load net sel -pin output_mux_i S -port sel
netloc sel 1 0 3 NJ 340 NJ 340 580J
load net display1[3] -attr @rip saida[3] -port display1[3] -pin reg_bcd_display1 saida[3]
load net output_mux_i_n_1 -attr @rip O[6] -pin output_mux_i O[6] -pin reg_mux dado_ent[6]
load net reset -pin counter reset -pin reg_bcd_display0 reset -pin reg_bcd_display1 reset -pin reg_in reset -pin reg_mux reset -port reset
netloc reset 1 0 6 20 360 NJ 360 NJ 360 870 400 NJ 400 1440
load net output_regin[1] -attr @rip saida[1] -pin adder B[1] -pin reg_in saida[1] -pin subtractor B[1]
load net output_mux_i_n_2 -attr @rip O[5] -pin output_mux_i O[5] -pin reg_mux dado_ent[5]
load net S[7] -attr @rip S[7] -pin output_mux_i I1[7] -pin subtractor S[7]
load net output_mux_i_n_3 -attr @rip O[4] -pin output_mux_i O[4] -pin reg_mux dado_ent[4]
load net S[0] -attr @rip S[0] -pin output_mux_i I1[0] -pin subtractor S[0]
load net output_mux_i_n_4 -attr @rip O[3] -pin output_mux_i O[3] -pin reg_mux dado_ent[3]
load net dado_ent[5] -attr @rip dado_ent[5] -port dado_ent[5] -pin reg_in dado_ent[5]
load net outuput_bcd_display0[3] -attr @rip dec[3] -pin bcd_display0 dec[3] -pin reg_bcd_display0 dado_ent[3]
load net output_mux_i_n_5 -attr @rip O[2] -pin output_mux_i O[2] -pin reg_mux dado_ent[2]
load net output_counter[2] -attr @rip saida[2] -pin adder A[2] -pin counter saida[2] -pin subtractor A[2]
load net output_mux_i_n_6 -attr @rip O[1] -pin output_mux_i O[1] -pin reg_mux dado_ent[1]
load net output_mux_i_n_7 -attr @rip O[0] -pin output_mux_i O[0] -pin reg_mux dado_ent[0]
load net C[6] -attr @rip C[6] -pin adder C[6] -pin output_mux_i I0[6]
load net output_regmux[6] -attr @rip saida[6] -pin bcd_display1 bin[2] -pin reg_mux saida[6]
load net dado_ent[4] -attr @rip dado_ent[4] -port dado_ent[4] -pin reg_in dado_ent[4]
load net updown -pin counter up_down -port updown
netloc updown 1 0 1 NJ
load net display1[1] -attr @rip saida[1] -port display1[1] -pin reg_bcd_display1 saida[1]
load net outuput_bcd_display1[1] -attr @rip dec[1] -pin bcd_display1 dec[1] -pin reg_bcd_display1 dado_ent[1]
load net outuput_bcd_display1[6] -attr @rip dec[6] -pin bcd_display1 dec[6] -pin reg_bcd_display1 dado_ent[6]
load net display1[6] -attr @rip saida[6] -port display1[6] -pin reg_bcd_display1 saida[6]
load net C[5] -attr @rip C[5] -pin adder C[5] -pin output_mux_i I0[5]
load net display0[6] -attr @rip saida[6] -port display0[6] -pin reg_bcd_display0 saida[6]
load net output_regin[6] -attr @rip saida[6] -pin adder B[6] -pin reg_in saida[6] -pin subtractor B[6]
load net display0[1] -attr @rip saida[1] -port display0[1] -pin reg_bcd_display0 saida[1]
load net S[5] -attr @rip S[5] -pin output_mux_i I1[5] -pin subtractor S[5]
load net output_regmux[7] -attr @rip saida[7] -pin bcd_display1 bin[3] -pin reg_mux saida[7]
load net outuput_bcd_display0[6] -attr @rip dec[6] -pin bcd_display0 dec[6] -pin reg_bcd_display0 dado_ent[6]
load net output_counter[6] -attr @rip saida[6] -pin adder A[6] -pin counter saida[6] -pin subtractor A[6]
load net dado_ent[7] -attr @rip dado_ent[7] -port dado_ent[7] -pin reg_in dado_ent[7]
load net output_regin[3] -attr @rip saida[3] -pin adder B[3] -pin reg_in saida[3] -pin subtractor B[3]
load net output_regmux[4] -attr @rip saida[4] -pin bcd_display1 bin[0] -pin reg_mux saida[4]
load netBundle @display1 7 display1[6] display1[5] display1[4] display1[3] display1[2] display1[1] display1[0] -autobundled
netbloc @display1 1 6 1 NJ
load netBundle @outuput_bcd_display1 7 outuput_bcd_display1[6] outuput_bcd_display1[5] outuput_bcd_display1[4] outuput_bcd_display1[3] outuput_bcd_display1[2] outuput_bcd_display1[1] outuput_bcd_display1[0] -autobundled
netbloc @outuput_bcd_display1 1 5 1 1400
load netBundle @output_regin 8 output_regin[7] output_regin[6] output_regin[5] output_regin[4] output_regin[3] output_regin[2] output_regin[1] output_regin[0] -autobundled
netbloc @output_regin 1 1 1 360
load netBundle @S 8 S[7] S[6] S[5] S[4] S[3] S[2] S[1] S[0] -autobundled
netbloc @S 1 2 1 N
load netBundle @dado_ent 8 dado_ent[7] dado_ent[6] dado_ent[5] dado_ent[4] dado_ent[3] dado_ent[2] dado_ent[1] dado_ent[0] -autobundled
netbloc @dado_ent 1 0 1 NJ
load netBundle @output_regmux 8 output_regmux[7] output_regmux[6] output_regmux[5] output_regmux[4] output_regmux[3] output_regmux[2] output_regmux[1] output_regmux[0] -autobundled
netbloc @output_regmux 1 4 1 1170
load netBundle @output_counter 8 output_counter[7] output_counter[6] output_counter[5] output_counter[4] output_counter[3] output_counter[2] output_counter[1] output_counter[0] -autobundled
netbloc @output_counter 1 1 1 340
load netBundle @C 8 C[7] C[6] C[5] C[4] C[3] C[2] C[1] C[0] -autobundled
netbloc @C 1 2 1 580
load netBundle @output_mux_i_n_0 8 output_mux_i_n_0 output_mux_i_n_1 output_mux_i_n_2 output_mux_i_n_3 output_mux_i_n_4 output_mux_i_n_5 output_mux_i_n_6 output_mux_i_n_7 -autobundled
netbloc @output_mux_i_n_0 1 3 1 870
load netBundle @display0 7 display0[6] display0[5] display0[4] display0[3] display0[2] display0[1] display0[0] -autobundled
netbloc @display0 1 6 1 NJ
load netBundle @outuput_bcd_display0 7 outuput_bcd_display0[6] outuput_bcd_display0[5] outuput_bcd_display0[4] outuput_bcd_display0[3] outuput_bcd_display0[2] outuput_bcd_display0[1] outuput_bcd_display0[0] -autobundled
netbloc @outuput_bcd_display0 1 5 1 N
levelinfo -pg 1 0 160 430 720 1010 1250 1580 1740 -top 0 -bot 410
show
fullfit
#
# initialize ictrl to current module mainCircuit work:mainCircuit:NOFILE
ictrl init topinfo |
