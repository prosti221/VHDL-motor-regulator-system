-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu May  5 18:23:32 2022
-- Host        : oakham.ifi.uio.no running 64-bit Red Hat Enterprise Linux release 8.5 (Ootpa)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ tutorial_bd_system_struct_0_0_stub.vhdl
-- Design      : tutorial_bd_system_struct_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mclk,reset,SA,SB,duty_cycle[7:0],DIR_sync,EN_sync,velocity[7:0],abcdefg[6:0],c";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "system_struct,Vivado 2020.2";
begin
end;
