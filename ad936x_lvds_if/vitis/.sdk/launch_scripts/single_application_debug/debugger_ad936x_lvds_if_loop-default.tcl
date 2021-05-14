connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS2 201706300081" && level==0} -index 1
fpga -file E:/Wcc/DSP/FPGA_SDR/AntSDR_B220/ad936x_lvds_if/vitis/ad936x_lvds_if_loop/_ide/bitstream/ad936x_lvds_if_top.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/Wcc/DSP/FPGA_SDR/AntSDR_B220/ad936x_lvds_if/vitis/ad936x_lvds_if_top/export/ad936x_lvds_if_top/hw/ad936x_lvds_if_top.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source E:/Wcc/DSP/FPGA_SDR/AntSDR_B220/ad936x_lvds_if/vitis/ad936x_lvds_if_loop/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow E:/Wcc/DSP/FPGA_SDR/AntSDR_B220/ad936x_lvds_if/vitis/ad936x_lvds_if_loop/Debug/ad936x_lvds_if_loop.elf
configparams force-mem-access 0
bpadd -addr &main
