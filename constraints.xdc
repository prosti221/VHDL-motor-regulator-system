set_property PACKAGE_PIN AB7 [get_ports {abcdefg[6]}]
set_property PACKAGE_PIN AB6 [get_ports {abcdefg[5]}]
set_property PACKAGE_PIN Y4 [get_ports {abcdefg[4]}]
set_property PACKAGE_PIN AA4 [get_ports {abcdefg[3]}]
set_property PACKAGE_PIN V7 [get_ports {abcdefg[2]}]
set_property PACKAGE_PIN W7 [get_ports {abcdefg[1]}]
set_property PACKAGE_PIN V5 [get_ports {abcdefg[0]}]
set_property PACKAGE_PIN V4 [get_ports c]
set_property PACKAGE_PIN Y9 [get_ports mclk]
set_property PACKAGE_PIN M15 [get_ports reset]
set_property PACKAGE_PIN W12 [get_ports DIR_sync]
set_property PACKAGE_PIN W11 [get_ports EN_sync]
set_property PACKAGE_PIN V10 [get_ports SA]
set_property PACKAGE_PIN W8 [get_ports SB]
set_property IOSTANDARD LVCMOS33 [get_ports {abcdefg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {abcdefg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {abcdefg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {abcdefg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {abcdefg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {abcdefg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {abcdefg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports c]
set_property IOSTANDARD LVCMOS33 [get_ports DIR_sync]
set_property IOSTANDARD LVCMOS33 [get_ports EN_sync]
set_property IOSTANDARD LVCMOS33 [get_ports mclk]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports SA]
set_property IOSTANDARD LVCMOS33 [get_ports SB]

create_clock -period 10.000 -name mclk -waveform {0.000 5.000} [get_ports mclk]
