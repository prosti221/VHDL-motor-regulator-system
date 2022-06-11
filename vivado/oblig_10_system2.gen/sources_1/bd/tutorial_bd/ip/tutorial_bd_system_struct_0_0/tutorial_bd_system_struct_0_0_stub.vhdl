-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu May  5 18:23:33 2022
-- Host        : oakham.ifi.uio.no running 64-bit Red Hat Enterprise Linux release 8.5 (Ootpa)
-- Command     : write_vhdl -force -mode synth_stub
--               /uio/hume/student-u83/carlosan/privat/in3160/oblig_10_system2/oblig_10_system2.gen/sources_1/bd/tutorial_bd/ip/tutorial_bd_system_struct_0_0/tutorial_bd_system_struct_0_0_stub.vhdl
-- Design      : tutorial_bd_system_struct_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tutorial_bd_system_struct_0_0 is
  Port ( 
    mclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    SA : in STD_LOGIC;
    SB : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DIR_sync : out STD_LOGIC;
    EN_sync : out STD_LOGIC;
    velocity : out STD_LOGIC_VECTOR ( 7 downto 0 );
    abcdefg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    c : out STD_LOGIC
  );

end tutorial_bd_system_struct_0_0;

architecture stub of tutorial_bd_system_struct_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mclk,reset,SA,SB,duty_cycle[7:0],DIR_sync,EN_sync,velocity[7:0],abcdefg[6:0],c";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "system_struct,Vivado 2020.2";
begin
end;
