-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu May  5 18:23:33 2022
-- Host        : oakham.ifi.uio.no running 64-bit Red Hat Enterprise Linux release 8.5 (Ootpa)
-- Command     : write_vhdl -force -mode funcsim
--               /uio/hume/student-u83/carlosan/privat/in3160/oblig_10_system2/oblig_10_system2.gen/sources_1/bd/tutorial_bd/ip/tutorial_bd_system_struct_0_0/tutorial_bd_system_struct_0_0_sim_netlist.vhdl
-- Design      : tutorial_bd_system_struct_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tutorial_bd_system_struct_0_0_input_synchronizer_ent is
  port (
    SB_sync : out STD_LOGIC;
    SA_sync : out STD_LOGIC;
    SB : in STD_LOGIC;
    mclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    SA : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tutorial_bd_system_struct_0_0_input_synchronizer_ent : entity is "input_synchronizer_ent";
end tutorial_bd_system_struct_0_0_input_synchronizer_ent;

architecture STRUCTURE of tutorial_bd_system_struct_0_0_input_synchronizer_ent is
begin
Q1_reg: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => SA,
      Q => SA_sync
    );
Q2_reg: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => SB,
      Q => SB_sync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tutorial_bd_system_struct_0_0_microsecond_tick is
  port (
    CLK : out STD_LOGIC;
    mclk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tutorial_bd_system_struct_0_0_microsecond_tick : entity is "microsecond_tick";
end tutorial_bd_system_struct_0_0_microsecond_tick;

architecture STRUCTURE of tutorial_bd_system_struct_0_0_microsecond_tick is
  signal \counter[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \counter_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal tick_i_1_n_0 : STD_LOGIC;
  signal tick_i_2_n_0 : STD_LOGIC;
  signal \NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_counter_reg[4]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\counter[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008AAA"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter[0]_i_7__0_n_0\,
      I2 => counter_reg(6),
      I3 => counter_reg(5),
      I4 => counter_reg(7),
      O => \counter[0]_i_2__0_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002A"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(5),
      I2 => counter_reg(6),
      I3 => counter_reg(7),
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA0002"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(1),
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => tick_i_2_n_0,
      I5 => counter_reg(7),
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA0002"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(2),
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => tick_i_2_n_0,
      I5 => counter_reg(7),
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10111111"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => counter_reg(7),
      I2 => \counter[0]_i_7__0_n_0\,
      I3 => counter_reg(6),
      I4 => counter_reg(5),
      O => \counter[0]_i_6_n_0\
    );
\counter[0]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(3),
      I2 => counter_reg(2),
      I3 => counter_reg(1),
      O => \counter[0]_i_7__0_n_0\
    );
\counter[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008A"
    )
        port map (
      I0 => counter_reg(6),
      I1 => \counter[0]_i_7__0_n_0\,
      I2 => counter_reg(5),
      I3 => counter_reg(7),
      O => \counter[4]_i_2__0_n_0\
    );
\counter[4]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008A"
    )
        port map (
      I0 => counter_reg(5),
      I1 => \counter[0]_i_7__0_n_0\,
      I2 => counter_reg(6),
      I3 => counter_reg(7),
      O => \counter[4]_i_3__0_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002A"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      I2 => counter_reg(6),
      I3 => counter_reg(7),
      O => \counter[4]_i_4_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1__0_n_7\,
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1__0_n_0\,
      CO(2) => \counter_reg[0]_i_1__0_n_1\,
      CO(1) => \counter_reg[0]_i_1__0_n_2\,
      CO(0) => \counter_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter[0]_i_2__0_n_0\,
      O(3) => \counter_reg[0]_i_1__0_n_4\,
      O(2) => \counter_reg[0]_i_1__0_n_5\,
      O(1) => \counter_reg[0]_i_1__0_n_6\,
      O(0) => \counter_reg[0]_i_1__0_n_7\,
      S(3) => \counter[0]_i_3_n_0\,
      S(2) => \counter[0]_i_4_n_0\,
      S(1) => \counter[0]_i_5_n_0\,
      S(0) => \counter[0]_i_6_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1__0_n_6\,
      Q => counter_reg(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1__0_n_5\,
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1__0_n_4\,
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1__0_n_7\,
      Q => counter_reg(4)
    );
\counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1__0_n_0\,
      CO(3) => \counter_reg[4]_i_1__0_n_0\,
      CO(2) => \NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED\(2),
      CO(1) => \counter_reg[4]_i_1__0_n_2\,
      CO(0) => \counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[4]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \counter_reg[4]_i_1__0_n_5\,
      O(1) => \counter_reg[4]_i_1__0_n_6\,
      O(0) => \counter_reg[4]_i_1__0_n_7\,
      S(3) => '1',
      S(2) => \counter[4]_i_2__0_n_0\,
      S(1) => \counter[4]_i_3__0_n_0\,
      S(0) => \counter[4]_i_4_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1__0_n_6\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1__0_n_5\,
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1__0_n_0\,
      Q => counter_reg(7)
    );
tick_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FFFFFFEA"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(2),
      I2 => counter_reg(1),
      I3 => counter_reg(7),
      I4 => counter_reg(4),
      I5 => tick_i_2_n_0,
      O => tick_i_1_n_0
    );
tick_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(6),
      O => tick_i_2_n_0
    );
tick_reg: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => tick_i_1_n_0,
      Q => CLK
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tutorial_bd_system_struct_0_0_output_synchronizer_ent is
  port (
    EN_sync : out STD_LOGIC;
    DIR_sync : out STD_LOGIC;
    en : in STD_LOGIC;
    mclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    dir : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tutorial_bd_system_struct_0_0_output_synchronizer_ent : entity is "output_synchronizer_ent";
end tutorial_bd_system_struct_0_0_output_synchronizer_ent;

architecture STRUCTURE of tutorial_bd_system_struct_0_0_output_synchronizer_ent is
begin
dir_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => dir,
      Q => DIR_sync
    );
en_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => en,
      Q => EN_sync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tutorial_bd_system_struct_0_0_quadrature_decoder is
  port (
    pos_inc : out STD_LOGIC;
    pos_dec : out STD_LOGIC;
    mclk : in STD_LOGIC;
    SA_sync : in STD_LOGIC;
    SB_sync : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tutorial_bd_system_struct_0_0_quadrature_decoder : entity is "quadrature_decoder";
end tutorial_bd_system_struct_0_0_quadrature_decoder;

architecture STRUCTURE of tutorial_bd_system_struct_0_0_quadrature_decoder is
  signal \next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal pos_dec_i_1_n_0 : STD_LOGIC;
  signal pos_inc_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_state[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \next_state[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of pos_dec_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of pos_inc_i_1 : label is "soft_lutpair5";
begin
\next_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CD57CEBA"
    )
        port map (
      I0 => SA_sync,
      I1 => \next_state_reg_n_0_[0]\,
      I2 => \next_state_reg_n_0_[1]\,
      I3 => \next_state_reg_n_0_[2]\,
      I4 => SB_sync,
      O => \next_state[0]_i_1_n_0\
    );
\next_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2A8F2A2"
    )
        port map (
      I0 => SA_sync,
      I1 => \next_state_reg_n_0_[0]\,
      I2 => \next_state_reg_n_0_[1]\,
      I3 => \next_state_reg_n_0_[2]\,
      I4 => SB_sync,
      O => \next_state[1]_i_1_n_0\
    );
\next_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC42FC18"
    )
        port map (
      I0 => SA_sync,
      I1 => \next_state_reg_n_0_[0]\,
      I2 => \next_state_reg_n_0_[1]\,
      I3 => \next_state_reg_n_0_[2]\,
      I4 => SB_sync,
      O => \next_state[2]_i_1_n_0\
    );
\next_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \next_state_reg_n_0_[0]\,
      I1 => \next_state_reg_n_0_[2]\,
      I2 => \next_state_reg_n_0_[1]\,
      I3 => reset,
      O => \next_state[2]_i_2_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => \next_state[2]_i_2_n_0\,
      D => \next_state[0]_i_1_n_0\,
      Q => \next_state_reg_n_0_[0]\
    );
\next_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => \next_state[2]_i_2_n_0\,
      D => \next_state[1]_i_1_n_0\,
      Q => \next_state_reg_n_0_[1]\
    );
\next_state_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \next_state[2]_i_1_n_0\,
      PRE => \next_state[2]_i_2_n_0\,
      Q => \next_state_reg_n_0_[2]\
    );
pos_dec_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00900006"
    )
        port map (
      I0 => \next_state_reg_n_0_[0]\,
      I1 => SA_sync,
      I2 => SB_sync,
      I3 => \next_state_reg_n_0_[2]\,
      I4 => \next_state_reg_n_0_[1]\,
      O => pos_dec_i_1_n_0
    );
pos_dec_reg: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => \next_state[2]_i_2_n_0\,
      D => pos_dec_i_1_n_0,
      Q => pos_dec
    );
pos_inc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000960"
    )
        port map (
      I0 => \next_state_reg_n_0_[0]\,
      I1 => SA_sync,
      I2 => \next_state_reg_n_0_[1]\,
      I3 => SB_sync,
      I4 => \next_state_reg_n_0_[2]\,
      O => pos_inc_i_1_n_0
    );
pos_inc_reg: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => \next_state[2]_i_2_n_0\,
      D => pos_inc_i_1_n_0,
      Q => pos_inc
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tutorial_bd_system_struct_0_0_seg7ctrl is
  port (
    current_c_reg_0 : out STD_LOGIC;
    current_c_reg_1 : out STD_LOGIC;
    current_c_reg_2 : out STD_LOGIC;
    current_c_reg_3 : out STD_LOGIC;
    mclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tutorial_bd_system_struct_0_0_seg7ctrl : entity is "seg7ctrl";
end tutorial_bd_system_struct_0_0_seg7ctrl;

architecture STRUCTURE of tutorial_bd_system_struct_0_0_seg7ctrl is
  signal \counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[12]_i_6_n_0\ : STD_LOGIC;
  signal \counter[12]_i_7_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[4]_i_6_n_0\ : STD_LOGIC;
  signal \counter[4]_i_7_n_0\ : STD_LOGIC;
  signal \counter[4]_i_8_n_0\ : STD_LOGIC;
  signal \counter[4]_i_9_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal current_c_i_1_n_0 : STD_LOGIC;
  signal current_c_i_2_n_0 : STD_LOGIC;
  signal current_c_i_3_n_0 : STD_LOGIC;
  signal current_c_i_4_n_0 : STD_LOGIC;
  signal \^current_c_reg_0\ : STD_LOGIC;
  signal \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \abcdefg[6]_INST_0_i_11\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \abcdefg[6]_INST_0_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[0]_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[0]_i_8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[0]_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[12]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[12]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[4]_i_8\ : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of current_c_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of current_c_i_4 : label is "soft_lutpair9";
begin
  current_c_reg_0 <= \^current_c_reg_0\;
\abcdefg[4]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^current_c_reg_0\,
      I1 => Q(0),
      O => current_c_reg_3
    );
\abcdefg[6]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^current_c_reg_0\,
      I1 => Q(0),
      I2 => O(0),
      O => current_c_reg_1
    );
\abcdefg[6]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^current_c_reg_0\,
      I1 => Q(0),
      O => current_c_reg_2
    );
\counter[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      I2 => counter_reg(8),
      I3 => counter_reg(9),
      O => \counter[0]_i_10_n_0\
    );
\counter[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => counter_reg(16),
      I2 => counter_reg(17),
      I3 => counter_reg(18),
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => \counter[0]_i_8_n_0\,
      I1 => counter_reg(16),
      I2 => counter_reg(17),
      I3 => counter_reg(18),
      I4 => counter_reg(3),
      O => \counter[0]_i_3__0_n_0\
    );
\counter[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => \counter[0]_i_8_n_0\,
      I1 => counter_reg(16),
      I2 => counter_reg(17),
      I3 => counter_reg(18),
      I4 => counter_reg(2),
      O => \counter[0]_i_4__0_n_0\
    );
\counter[0]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => \counter[0]_i_8_n_0\,
      I1 => counter_reg(16),
      I2 => counter_reg(17),
      I3 => counter_reg(18),
      I4 => counter_reg(1),
      O => \counter[0]_i_5__0_n_0\
    );
\counter[0]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BFFF"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => counter_reg(16),
      I2 => counter_reg(17),
      I3 => counter_reg(18),
      I4 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_6__0_n_0\
    );
\counter[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFCDCFCCCFCFCFC"
    )
        port map (
      I0 => \counter[4]_i_9_n_0\,
      I1 => \counter[0]_i_9_n_0\,
      I2 => \counter[4]_i_7_n_0\,
      I3 => counter_reg(9),
      I4 => \counter[4]_i_8_n_0\,
      I5 => counter_reg(6),
      O => \counter[0]_i_7_n_0\
    );
\counter[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8F8FFF"
    )
        port map (
      I0 => \counter[0]_i_10_n_0\,
      I1 => \counter[4]_i_7_n_0\,
      I2 => counter_reg(19),
      I3 => counter_reg(14),
      I4 => counter_reg(15),
      O => \counter[0]_i_8_n_0\
    );
\counter[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => counter_reg(15),
      I1 => counter_reg(14),
      I2 => counter_reg(19),
      O => \counter[0]_i_9_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => counter_reg(19),
      I1 => counter_reg(18),
      I2 => counter_reg(17),
      I3 => counter_reg(16),
      I4 => counter_reg(15),
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F080F0F0"
    )
        port map (
      I0 => \counter[12]_i_6_n_0\,
      I1 => \counter[4]_i_7_n_0\,
      I2 => counter_reg(14),
      I3 => \counter[12]_i_7_n_0\,
      I4 => counter_reg(19),
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[4]_i_6_n_0\,
      I1 => counter_reg(13),
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[4]_i_6_n_0\,
      I1 => counter_reg(12),
      O => \counter[12]_i_5_n_0\
    );
\counter[12]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3337333F"
    )
        port map (
      I0 => \counter[4]_i_9_n_0\,
      I1 => counter_reg(9),
      I2 => counter_reg(8),
      I3 => counter_reg(7),
      I4 => counter_reg(6),
      O => \counter[12]_i_6_n_0\
    );
\counter[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter_reg(17),
      I2 => counter_reg(16),
      O => \counter[12]_i_7_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFABABAB00000000"
    )
        port map (
      I0 => \counter[12]_i_7_n_0\,
      I1 => counter_reg(15),
      I2 => counter_reg(14),
      I3 => \counter[12]_i_6_n_0\,
      I4 => \counter[4]_i_7_n_0\,
      I5 => counter_reg(19),
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => counter_reg(16),
      I2 => counter_reg(17),
      I3 => counter_reg(18),
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => counter_reg(16),
      I2 => counter_reg(18),
      I3 => counter_reg(17),
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F070"
    )
        port map (
      I0 => counter_reg(17),
      I1 => counter_reg(18),
      I2 => counter_reg(16),
      I3 => \counter[0]_i_7_n_0\,
      O => \counter[16]_i_5_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE00"
    )
        port map (
      I0 => \counter[4]_i_6_n_0\,
      I1 => \counter[4]_i_7_n_0\,
      I2 => counter_reg(9),
      I3 => counter_reg(7),
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F010F00000"
    )
        port map (
      I0 => \counter[4]_i_8_n_0\,
      I1 => \counter[4]_i_9_n_0\,
      I2 => counter_reg(6),
      I3 => counter_reg(9),
      I4 => \counter[4]_i_7_n_0\,
      I5 => \counter[4]_i_6_n_0\,
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => \counter[0]_i_8_n_0\,
      I1 => counter_reg(16),
      I2 => counter_reg(17),
      I3 => counter_reg(18),
      I4 => counter_reg(5),
      O => \counter[4]_i_4__0_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => \counter[0]_i_8_n_0\,
      I1 => counter_reg(16),
      I2 => counter_reg(17),
      I3 => counter_reg(18),
      I4 => counter_reg(4),
      O => \counter[4]_i_5_n_0\
    );
\counter[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFF7FFFFFFF"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      I2 => counter_reg(18),
      I3 => counter_reg(19),
      I4 => counter_reg(14),
      I5 => counter_reg(15),
      O => \counter[4]_i_6_n_0\
    );
\counter[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(13),
      I2 => counter_reg(10),
      I3 => counter_reg(11),
      I4 => counter_reg(15),
      O => \counter[4]_i_7_n_0\
    );
\counter[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(8),
      O => \counter[4]_i_8_n_0\
    );
\counter[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(4),
      I2 => counter_reg(5),
      I3 => counter_reg(3),
      I4 => counter_reg(2),
      O => \counter[4]_i_9_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[4]_i_6_n_0\,
      I1 => counter_reg(11),
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[4]_i_6_n_0\,
      I1 => counter_reg(10),
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000015000000"
    )
        port map (
      I0 => \counter[4]_i_8_n_0\,
      I1 => counter_reg(6),
      I2 => \counter[4]_i_9_n_0\,
      I3 => \counter[4]_i_7_n_0\,
      I4 => counter_reg(9),
      I5 => \counter[4]_i_6_n_0\,
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE00"
    )
        port map (
      I0 => \counter[4]_i_6_n_0\,
      I1 => \counter[4]_i_7_n_0\,
      I2 => counter_reg(9),
      I3 => counter_reg(8),
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1_n_7\,
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter[0]_i_2_n_0\,
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3) => \counter[0]_i_3__0_n_0\,
      S(2) => \counter[0]_i_4__0_n_0\,
      S(1) => \counter[0]_i_5__0_n_0\,
      S(0) => \counter[0]_i_6__0_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12)
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16)
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3) => \counter[16]_i_2_n_0\,
      S(2) => \counter[16]_i_3_n_0\,
      S(1) => \counter[16]_i_4_n_0\,
      S(0) => \counter[16]_i_5_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4)
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4__0_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8)
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9)
    );
current_c_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF07000000F8"
    )
        port map (
      I0 => counter_reg(14),
      I1 => current_c_i_2_n_0,
      I2 => counter_reg(15),
      I3 => current_c_i_3_n_0,
      I4 => reset,
      I5 => \^current_c_reg_0\,
      O => current_c_i_1_n_0
    );
current_c_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => counter_reg(9),
      I1 => current_c_i_4_n_0,
      I2 => counter_reg(12),
      I3 => counter_reg(13),
      I4 => counter_reg(10),
      I5 => counter_reg(11),
      O => current_c_i_2_n_0
    );
current_c_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      I2 => counter_reg(18),
      I3 => counter_reg(19),
      O => current_c_i_3_n_0
    );
current_c_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(7),
      I2 => counter_reg(6),
      I3 => \counter[4]_i_9_n_0\,
      O => current_c_i_4_n_0
    );
current_c_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => current_c_i_1_n_0,
      Q => \^current_c_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tutorial_bd_system_struct_0_0_velocity_reader is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    abcdefg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \moving_sum_reg[8]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \moving_sum_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    velocity : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    abcdefg_1_sp_1 : in STD_LOGIC;
    velocity_7_sp_1 : in STD_LOGIC;
    velocity_5_sp_1 : in STD_LOGIC;
    abcdefg_2_sp_1 : in STD_LOGIC;
    abcdefg_4_sp_1 : in STD_LOGIC;
    \abcdefg[4]_0\ : in STD_LOGIC;
    \abcdefg[4]_1\ : in STD_LOGIC;
    \abcdefg[4]_2\ : in STD_LOGIC;
    abcdefg_3_sp_1 : in STD_LOGIC;
    \abcdefg[1]_0\ : in STD_LOGIC;
    velocity_4_sp_1 : in STD_LOGIC;
    pos_inc : in STD_LOGIC;
    pos_dec : in STD_LOGIC;
    \abcdefg[1]_1\ : in STD_LOGIC;
    velocity_3_sp_1 : in STD_LOGIC;
    abcdefg_0_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tutorial_bd_system_struct_0_0_velocity_reader : entity is "velocity_reader";
end tutorial_bd_system_struct_0_0_velocity_reader;

architecture STRUCTURE of tutorial_bd_system_struct_0_0_velocity_reader is
  signal \^o\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \abcdefg[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \abcdefg[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \abcdefg[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \abcdefg[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \abcdefg[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \abcdefg[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \abcdefg[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \abcdefg[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \abcdefg[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \abcdefg[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \abcdefg[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \abcdefg[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \abcdefg[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \abcdefg[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \abcdefg[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \abcdefg[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \abcdefg[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \abcdefg[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \abcdefg[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \abcdefg[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \abcdefg[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \abcdefg[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \abcdefg[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \abcdefg[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \abcdefg[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \abcdefg[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \abcdefg[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \abcdefg[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \abcdefg[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \abcdefg[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \abcdefg[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \abcdefg[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \abcdefg[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \abcdefg[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \abcdefg[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \abcdefg[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \abcdefg[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \abcdefg[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \abcdefg[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \abcdefg[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \abcdefg[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \abcdefg[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \abcdefg[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \abcdefg[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \abcdefg[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \abcdefg[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \abcdefg[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \abcdefg[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal abcdefg_0_sn_1 : STD_LOGIC;
  signal abcdefg_1_sn_1 : STD_LOGIC;
  signal abcdefg_2_sn_1 : STD_LOGIC;
  signal abcdefg_3_sn_1 : STD_LOGIC;
  signal abcdefg_4_sn_1 : STD_LOGIC;
  signal \i__carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal moving_sum : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \moving_sum[11]_i_2_n_0\ : STD_LOGIC;
  signal \moving_sum[11]_i_3_n_0\ : STD_LOGIC;
  signal \moving_sum[11]_i_4_n_0\ : STD_LOGIC;
  signal \moving_sum[11]_i_5_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_n_1\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_n_2\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_n_3\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_n_4\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_n_5\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_n_6\ : STD_LOGIC;
  signal \moving_sum_next_carry__0_n_7\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_n_1\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_n_2\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_n_3\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_n_4\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_n_5\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_n_6\ : STD_LOGIC;
  signal \moving_sum_next_carry__1_n_7\ : STD_LOGIC;
  signal moving_sum_next_carry_i_1_n_0 : STD_LOGIC;
  signal moving_sum_next_carry_i_2_n_0 : STD_LOGIC;
  signal moving_sum_next_carry_i_3_n_0 : STD_LOGIC;
  signal moving_sum_next_carry_i_4_n_0 : STD_LOGIC;
  signal moving_sum_next_carry_i_5_n_0 : STD_LOGIC;
  signal moving_sum_next_carry_i_6_n_0 : STD_LOGIC;
  signal moving_sum_next_carry_i_7_n_0 : STD_LOGIC;
  signal moving_sum_next_carry_i_8_n_0 : STD_LOGIC;
  signal moving_sum_next_carry_n_0 : STD_LOGIC;
  signal moving_sum_next_carry_n_1 : STD_LOGIC;
  signal moving_sum_next_carry_n_2 : STD_LOGIC;
  signal moving_sum_next_carry_n_3 : STD_LOGIC;
  signal moving_sum_next_carry_n_4 : STD_LOGIC;
  signal moving_sum_next_carry_n_5 : STD_LOGIC;
  signal moving_sum_next_carry_n_6 : STD_LOGIC;
  signal moving_sum_next_carry_n_7 : STD_LOGIC;
  signal \^moving_sum_reg[0]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^moving_sum_reg[8]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pos_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[8][0]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[8][1]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[8][2]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[8][3]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[8][4]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[8][5]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[8][6]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[8][7]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\ : STD_LOGIC;
  signal \pos_shift_reg[9]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pos_shift_reg_c_0_n_0 : STD_LOGIC;
  signal pos_shift_reg_c_1_n_0 : STD_LOGIC;
  signal pos_shift_reg_c_2_n_0 : STD_LOGIC;
  signal pos_shift_reg_c_3_n_0 : STD_LOGIC;
  signal pos_shift_reg_c_4_n_0 : STD_LOGIC;
  signal pos_shift_reg_c_5_n_0 : STD_LOGIC;
  signal pos_shift_reg_c_6_n_0 : STD_LOGIC;
  signal pos_shift_reg_c_7_n_0 : STD_LOGIC;
  signal pos_shift_reg_c_n_0 : STD_LOGIC;
  signal \pos_shift_reg_gate__0_n_0\ : STD_LOGIC;
  signal \pos_shift_reg_gate__1_n_0\ : STD_LOGIC;
  signal \pos_shift_reg_gate__2_n_0\ : STD_LOGIC;
  signal \pos_shift_reg_gate__3_n_0\ : STD_LOGIC;
  signal \pos_shift_reg_gate__4_n_0\ : STD_LOGIC;
  signal \pos_shift_reg_gate__5_n_0\ : STD_LOGIC;
  signal \pos_shift_reg_gate__6_n_0\ : STD_LOGIC;
  signal pos_shift_reg_gate_n_0 : STD_LOGIC;
  signal \rcount[0]_i_10_n_0\ : STD_LOGIC;
  signal \rcount[0]_i_11_n_0\ : STD_LOGIC;
  signal \rcount[0]_i_12_n_0\ : STD_LOGIC;
  signal \rcount[0]_i_2_n_0\ : STD_LOGIC;
  signal \rcount[0]_i_3_n_0\ : STD_LOGIC;
  signal \rcount[0]_i_4_n_0\ : STD_LOGIC;
  signal \rcount[0]_i_5_n_0\ : STD_LOGIC;
  signal \rcount[0]_i_6_n_0\ : STD_LOGIC;
  signal \rcount[0]_i_7_n_0\ : STD_LOGIC;
  signal \rcount[0]_i_8_n_0\ : STD_LOGIC;
  signal \rcount[0]_i_9_n_0\ : STD_LOGIC;
  signal \rcount[12]_i_2_n_0\ : STD_LOGIC;
  signal \rcount[12]_i_3_n_0\ : STD_LOGIC;
  signal \rcount[12]_i_4_n_0\ : STD_LOGIC;
  signal \rcount[12]_i_5_n_0\ : STD_LOGIC;
  signal \rcount[12]_i_6_n_0\ : STD_LOGIC;
  signal \rcount[12]_i_7_n_0\ : STD_LOGIC;
  signal \rcount[16]_i_2_n_0\ : STD_LOGIC;
  signal \rcount[16]_i_3_n_0\ : STD_LOGIC;
  signal \rcount[16]_i_4_n_0\ : STD_LOGIC;
  signal \rcount[16]_i_5_n_0\ : STD_LOGIC;
  signal \rcount[16]_i_6_n_0\ : STD_LOGIC;
  signal \rcount[4]_i_2_n_0\ : STD_LOGIC;
  signal \rcount[4]_i_3_n_0\ : STD_LOGIC;
  signal \rcount[4]_i_4_n_0\ : STD_LOGIC;
  signal \rcount[4]_i_5_n_0\ : STD_LOGIC;
  signal \rcount[8]_i_2_n_0\ : STD_LOGIC;
  signal \rcount[8]_i_3_n_0\ : STD_LOGIC;
  signal \rcount[8]_i_4_n_0\ : STD_LOGIC;
  signal \rcount[8]_i_5_n_0\ : STD_LOGIC;
  signal \rcount[8]_i_6_n_0\ : STD_LOGIC;
  signal \rcount[8]_i_7_n_0\ : STD_LOGIC;
  signal \rcount[8]_i_8_n_0\ : STD_LOGIC;
  signal rcount_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \rcount_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \rcount_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \rcount_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \rcount_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \rcount_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \rcount_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \rcount_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \rcount_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \rcount_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \rcount_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \rcount_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \rcount_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \rcount_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \rcount_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \rcount_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \rcount_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rcount_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \rcount_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \rcount_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \rcount_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \rcount_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \rcount_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \rcount_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \rcount_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rcount_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rcount_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rcount_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rcount_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rcount_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rcount_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rcount_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rcount_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rcount_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rcount_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rcount_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rcount_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rcount_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rcount_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rcount_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal ten_ms_pulse : STD_LOGIC;
  signal velocity1 : STD_LOGIC;
  signal velocity1_carry_i_10_n_0 : STD_LOGIC;
  signal velocity1_carry_i_10_n_1 : STD_LOGIC;
  signal velocity1_carry_i_10_n_2 : STD_LOGIC;
  signal velocity1_carry_i_10_n_3 : STD_LOGIC;
  signal velocity1_carry_i_11_n_0 : STD_LOGIC;
  signal velocity1_carry_i_12_n_0 : STD_LOGIC;
  signal velocity1_carry_i_13_n_0 : STD_LOGIC;
  signal velocity1_carry_i_14_n_0 : STD_LOGIC;
  signal velocity1_carry_i_15_n_0 : STD_LOGIC;
  signal velocity1_carry_i_16_n_0 : STD_LOGIC;
  signal velocity1_carry_i_17_n_0 : STD_LOGIC;
  signal velocity1_carry_i_18_n_0 : STD_LOGIC;
  signal velocity1_carry_i_19_n_0 : STD_LOGIC;
  signal velocity1_carry_i_1_n_0 : STD_LOGIC;
  signal velocity1_carry_i_20_n_0 : STD_LOGIC;
  signal velocity1_carry_i_21_n_0 : STD_LOGIC;
  signal velocity1_carry_i_2_n_0 : STD_LOGIC;
  signal velocity1_carry_i_4_n_0 : STD_LOGIC;
  signal velocity1_carry_i_5_n_0 : STD_LOGIC;
  signal velocity1_carry_i_6_n_0 : STD_LOGIC;
  signal velocity1_carry_i_7_n_0 : STD_LOGIC;
  signal velocity1_carry_i_8_n_2 : STD_LOGIC;
  signal velocity1_carry_i_8_n_3 : STD_LOGIC;
  signal velocity1_carry_i_9_n_0 : STD_LOGIC;
  signal velocity1_carry_i_9_n_1 : STD_LOGIC;
  signal velocity1_carry_i_9_n_2 : STD_LOGIC;
  signal velocity1_carry_i_9_n_3 : STD_LOGIC;
  signal velocity1_carry_n_1 : STD_LOGIC;
  signal velocity1_carry_n_2 : STD_LOGIC;
  signal velocity1_carry_n_3 : STD_LOGIC;
  signal velocity2 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal velocity3 : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal \velocity[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \velocity[3]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \velocity[3]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \velocity[3]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \velocity[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \velocity[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \velocity[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \velocity[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \velocity[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_4_n_1\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_4_n_2\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_4_n_3\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal velocity_3_sn_1 : STD_LOGIC;
  signal velocity_4_sn_1 : STD_LOGIC;
  signal velocity_5_sn_1 : STD_LOGIC;
  signal velocity_7_sn_1 : STD_LOGIC;
  signal \NLW__inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_moving_sum_next_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rcount_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_velocity1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_velocity1_carry_i_10_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_velocity1_carry_i_8_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_velocity1_carry_i_8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_velocity[3]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_velocity[7]_INST_0_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_velocity[7]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__0\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \abcdefg[0]_INST_0_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \abcdefg[0]_INST_0_i_8\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \abcdefg[1]_INST_0_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \abcdefg[1]_INST_0_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \abcdefg[2]_INST_0_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \abcdefg[3]_INST_0_i_7\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \abcdefg[4]_INST_0_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \abcdefg[4]_INST_0_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \abcdefg[4]_INST_0_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \abcdefg[5]_INST_0_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \abcdefg[5]_INST_0_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \abcdefg[5]_INST_0_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \abcdefg[6]_INST_0_i_10\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \abcdefg[6]_INST_0_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \abcdefg[6]_INST_0_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \abcdefg[6]_INST_0_i_9\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i__carry__0_i_12\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i__carry__0_i_13\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i__carry__0_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i__carry_i_11\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \moving_sum[11]_i_3\ : label is "soft_lutpair12";
  attribute ADDER_THRESHOLD of moving_sum_next_carry : label is 35;
  attribute ADDER_THRESHOLD of \moving_sum_next_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \moving_sum_next_carry__1\ : label is 35;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] ";
  attribute srl_name : string;
  attribute srl_name of \pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 ";
  attribute srl_bus_name of \pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] ";
  attribute srl_name of \pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 ";
  attribute srl_bus_name of \pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] ";
  attribute srl_name of \pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 ";
  attribute srl_bus_name of \pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] ";
  attribute srl_name of \pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 ";
  attribute srl_bus_name of \pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] ";
  attribute srl_name of \pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 ";
  attribute srl_bus_name of \pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] ";
  attribute srl_name of \pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 ";
  attribute srl_bus_name of \pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] ";
  attribute srl_name of \pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 ";
  attribute srl_bus_name of \pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] ";
  attribute srl_name of \pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\ : label is "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 ";
  attribute SOFT_HLUTNM of pos_shift_reg_gate : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pos_shift_reg_gate__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pos_shift_reg_gate__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pos_shift_reg_gate__2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pos_shift_reg_gate__3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pos_shift_reg_gate__4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pos_shift_reg_gate__5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pos_shift_reg_gate__6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rcount[0]_i_12\ : label is "soft_lutpair12";
  attribute ADDER_THRESHOLD of \rcount_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rcount_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rcount_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rcount_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rcount_reg[8]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of velocity1_carry : label is 11;
  attribute ADDER_THRESHOLD of velocity1_carry_i_10 : label is 35;
  attribute ADDER_THRESHOLD of velocity1_carry_i_8 : label is 35;
  attribute ADDER_THRESHOLD of velocity1_carry_i_9 : label is 35;
  attribute SOFT_HLUTNM of \velocity[0]_INST_0\ : label is "soft_lutpair18";
  attribute ADDER_THRESHOLD of \velocity[3]_INST_0_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \velocity[4]_INST_0\ : label is "soft_lutpair14";
  attribute ADDER_THRESHOLD of \velocity[7]_INST_0_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \velocity[7]_INST_0_i_4\ : label is 35;
begin
  O(2 downto 0) <= \^o\(2 downto 0);
  Q(0) <= \^q\(0);
  abcdefg_0_sn_1 <= abcdefg_0_sp_1;
  abcdefg_1_sn_1 <= abcdefg_1_sp_1;
  abcdefg_2_sn_1 <= abcdefg_2_sp_1;
  abcdefg_3_sn_1 <= abcdefg_3_sp_1;
  abcdefg_4_sn_1 <= abcdefg_4_sp_1;
  \moving_sum_reg[0]_0\(1 downto 0) <= \^moving_sum_reg[0]_0\(1 downto 0);
  \moving_sum_reg[8]_0\(3 downto 0) <= \^moving_sum_reg[8]_0\(3 downto 0);
  velocity_3_sn_1 <= velocity_3_sp_1;
  velocity_4_sn_1 <= velocity_4_sp_1;
  velocity_5_sn_1 <= velocity_5_sp_1;
  velocity_7_sn_1 <= velocity_7_sp_1;
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3) => \_inferred__0/i__carry_n_4\,
      O(2) => \_inferred__0/i__carry_n_5\,
      O(1) => \_inferred__0/i__carry_n_6\,
      O(0) => \_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \NLW__inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1_n_0\,
      DI(1) => \i__carry__0_i_2_n_0\,
      DI(0) => \i__carry__0_i_3_n_0\,
      O(3) => \_inferred__0/i__carry__0_n_4\,
      O(2) => \_inferred__0/i__carry__0_n_5\,
      O(1) => \_inferred__0/i__carry__0_n_6\,
      O(0) => \_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_4_n_0\,
      S(2) => \i__carry__0_i_5_n_0\,
      S(1) => \i__carry__0_i_6_n_0\,
      S(0) => \i__carry__0_i_7_n_0\
    );
\abcdefg[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \abcdefg[0]_INST_0_i_1_n_0\,
      I1 => \abcdefg[0]_INST_0_i_2_n_0\,
      I2 => \abcdefg[0]_INST_0_i_3_n_0\,
      I3 => \abcdefg[0]_INST_0_i_4_n_0\,
      I4 => \abcdefg[1]_INST_0_i_1_n_0\,
      I5 => \abcdefg[0]_INST_0_i_5_n_0\,
      O => abcdefg(0)
    );
\abcdefg[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAEAAAEAAAEA"
    )
        port map (
      I0 => \abcdefg[1]_INST_0_i_7_n_0\,
      I1 => velocity_7_sn_1,
      I2 => \abcdefg[0]_INST_0_i_6_n_0\,
      I3 => velocity_5_sn_1,
      I4 => moving_sum(8),
      I5 => \abcdefg[3]_INST_0_i_7_n_0\,
      O => \abcdefg[0]_INST_0_i_1_n_0\
    );
\abcdefg[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001B0A00005F0A"
    )
        port map (
      I0 => \^q\(0),
      I1 => moving_sum(5),
      I2 => abcdefg_0_sn_1,
      I3 => moving_sum(4),
      I4 => abcdefg_2_sn_1,
      I5 => moving_sum(3),
      O => \abcdefg[0]_INST_0_i_2_n_0\
    );
\abcdefg[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000085D00000808"
    )
        port map (
      I0 => \^q\(0),
      I1 => abcdefg_3_sn_1,
      I2 => \abcdefg[1]_0\,
      I3 => \abcdefg[0]_INST_0_i_8_n_0\,
      I4 => abcdefg_2_sn_1,
      I5 => moving_sum(3),
      O => \abcdefg[0]_INST_0_i_3_n_0\
    );
\abcdefg[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001B1100000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \abcdefg[4]_INST_0_i_8_n_0\,
      I2 => \^o\(0),
      I3 => \^moving_sum_reg[8]_0\(3),
      I4 => velocity1,
      I5 => abcdefg_2_sn_1,
      O => \abcdefg[0]_INST_0_i_4_n_0\
    );
\abcdefg[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080808FF080808"
    )
        port map (
      I0 => \^moving_sum_reg[8]_0\(3),
      I1 => \abcdefg[0]_INST_0_i_6_n_0\,
      I2 => \^moving_sum_reg[8]_0\(2),
      I3 => \^moving_sum_reg[0]_0\(1),
      I4 => \abcdefg[6]_INST_0_i_7_n_0\,
      I5 => \^moving_sum_reg[0]_0\(0),
      O => \abcdefg[0]_INST_0_i_5_n_0\
    );
\abcdefg[0]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => velocity1,
      I1 => \^q\(0),
      I2 => abcdefg_2_sn_1,
      O => \abcdefg[0]_INST_0_i_6_n_0\
    );
\abcdefg[0]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => moving_sum(4),
      I1 => moving_sum(5),
      O => \abcdefg[0]_INST_0_i_8_n_0\
    );
\abcdefg[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFEEEE"
    )
        port map (
      I0 => \abcdefg[1]_INST_0_i_1_n_0\,
      I1 => \abcdefg[1]_INST_0_i_2_n_0\,
      I2 => \^o\(0),
      I3 => \^moving_sum_reg[8]_0\(3),
      I4 => \abcdefg[1]_INST_0_i_3_n_0\,
      I5 => \abcdefg[1]_INST_0_i_4_n_0\,
      O => abcdefg(1)
    );
\abcdefg[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF8000AAFF80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \abcdefg[1]_0\,
      I2 => \^moving_sum_reg[8]_0\(1),
      I3 => velocity1,
      I4 => abcdefg_2_sn_1,
      I5 => \abcdefg[1]_1\,
      O => \abcdefg[1]_INST_0_i_1_n_0\
    );
\abcdefg[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB0B0B0FFB0FFB0"
    )
        port map (
      I0 => \^moving_sum_reg[8]_0\(0),
      I1 => \^moving_sum_reg[0]_0\(1),
      I2 => abcdefg_1_sn_1,
      I3 => \abcdefg[6]_INST_0_i_10_n_0\,
      I4 => moving_sum(5),
      I5 => moving_sum(4),
      O => \abcdefg[1]_INST_0_i_2_n_0\
    );
\abcdefg[1]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => abcdefg_2_sn_1,
      I1 => \^q\(0),
      I2 => velocity1,
      I3 => \^moving_sum_reg[8]_0\(2),
      O => \abcdefg[1]_INST_0_i_3_n_0\
    );
\abcdefg[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABAAABAAABAA"
    )
        port map (
      I0 => \abcdefg[1]_INST_0_i_7_n_0\,
      I1 => \^moving_sum_reg[8]_0\(1),
      I2 => \abcdefg[1]_0\,
      I3 => \abcdefg[6]_INST_0_i_7_n_0\,
      I4 => \abcdefg[4]_INST_0_i_8_n_0\,
      I5 => \abcdefg[3]_INST_0_i_7_n_0\,
      O => \abcdefg[1]_INST_0_i_4_n_0\
    );
\abcdefg[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0155010001000155"
    )
        port map (
      I0 => \^q\(0),
      I1 => \abcdefg[1]_INST_0_i_8_n_0\,
      I2 => velocity1,
      I3 => abcdefg_2_sn_1,
      I4 => \abcdefg[0]_INST_0_i_8_n_0\,
      I5 => moving_sum(6),
      O => \abcdefg[1]_INST_0_i_7_n_0\
    );
\abcdefg[1]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => moving_sum(8),
      I1 => moving_sum(9),
      O => \abcdefg[1]_INST_0_i_8_n_0\
    );
\abcdefg[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
        port map (
      I0 => \abcdefg[3]_INST_0_i_4_n_0\,
      I1 => \abcdefg[2]_INST_0_i_1_n_0\,
      I2 => velocity1,
      I3 => abcdefg_2_sn_1,
      I4 => \abcdefg[2]_INST_0_i_2_n_0\,
      O => abcdefg(2)
    );
\abcdefg[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D58000008080"
    )
        port map (
      I0 => \^q\(0),
      I1 => velocity_3_sn_1,
      I2 => \^moving_sum_reg[8]_0\(1),
      I3 => \abcdefg[2]_INST_0_i_3_n_0\,
      I4 => abcdefg_2_sn_1,
      I5 => moving_sum(6),
      O => \abcdefg[2]_INST_0_i_1_n_0\
    );
\abcdefg[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB0FFFFB0B0B0B0"
    )
        port map (
      I0 => \^moving_sum_reg[0]_0\(1),
      I1 => \^moving_sum_reg[8]_0\(0),
      I2 => abcdefg_1_sn_1,
      I3 => moving_sum(4),
      I4 => moving_sum(5),
      I5 => \abcdefg[6]_INST_0_i_10_n_0\,
      O => \abcdefg[2]_INST_0_i_2_n_0\
    );
\abcdefg[2]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => moving_sum(4),
      I1 => moving_sum(5),
      O => \abcdefg[2]_INST_0_i_3_n_0\
    );
\abcdefg[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \abcdefg[3]_INST_0_i_1_n_0\,
      I1 => \abcdefg[3]_INST_0_i_2_n_0\,
      I2 => \abcdefg[3]_INST_0_i_3_n_0\,
      I3 => \abcdefg[3]_INST_0_i_4_n_0\,
      I4 => \abcdefg[3]_INST_0_i_5_n_0\,
      I5 => \abcdefg[3]_INST_0_i_6_n_0\,
      O => abcdefg(3)
    );
\abcdefg[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAABAAAAABA"
    )
        port map (
      I0 => \abcdefg[0]_INST_0_i_4_n_0\,
      I1 => abcdefg_2_sn_1,
      I2 => \abcdefg[5]_INST_0_i_5_n_0\,
      I3 => \^moving_sum_reg[0]_0\(0),
      I4 => \^moving_sum_reg[0]_0\(1),
      I5 => \^moving_sum_reg[8]_0\(0),
      O => \abcdefg[3]_INST_0_i_1_n_0\
    );
\abcdefg[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^moving_sum_reg[8]_0\(3),
      I2 => \^o\(0),
      I3 => \^moving_sum_reg[8]_0\(2),
      I4 => abcdefg_2_sn_1,
      I5 => velocity1,
      O => \abcdefg[3]_INST_0_i_10_n_0\
    );
\abcdefg[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => moving_sum(8),
      I2 => moving_sum(9),
      I3 => moving_sum(7),
      I4 => velocity1,
      I5 => abcdefg_2_sn_1,
      O => \abcdefg[3]_INST_0_i_2_n_0\
    );
\abcdefg[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000110"
    )
        port map (
      I0 => \^q\(0),
      I1 => moving_sum(3),
      I2 => moving_sum(4),
      I3 => moving_sum(6),
      I4 => velocity1,
      I5 => abcdefg_2_sn_1,
      O => \abcdefg[3]_INST_0_i_3_n_0\
    );
\abcdefg[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB0FFFFB0B0B0B0"
    )
        port map (
      I0 => moving_sum(8),
      I1 => moving_sum(9),
      I2 => \abcdefg[3]_INST_0_i_7_n_0\,
      I3 => \^moving_sum_reg[8]_0\(3),
      I4 => \^o\(0),
      I5 => \abcdefg[1]_INST_0_i_3_n_0\,
      O => \abcdefg[3]_INST_0_i_4_n_0\
    );
\abcdefg[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606060606060FF60"
    )
        port map (
      I0 => moving_sum(5),
      I1 => \abcdefg[3]_INST_0_i_8_n_0\,
      I2 => \abcdefg[5]_INST_0_i_6_n_0\,
      I3 => \abcdefg[5]_INST_0_i_8_n_0\,
      I4 => abcdefg_3_sn_1,
      I5 => \^moving_sum_reg[0]_0\(1),
      O => \abcdefg[3]_INST_0_i_5_n_0\
    );
\abcdefg[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFAAAAAAAAAAAA"
    )
        port map (
      I0 => \abcdefg[3]_INST_0_i_10_n_0\,
      I1 => \^moving_sum_reg[8]_0\(0),
      I2 => \^moving_sum_reg[8]_0\(1),
      I3 => \^moving_sum_reg[0]_0\(0),
      I4 => \abcdefg[5]_INST_0_i_8_n_0\,
      I5 => \^moving_sum_reg[0]_0\(1),
      O => \abcdefg[3]_INST_0_i_6_n_0\
    );
\abcdefg[3]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => velocity1,
      I1 => abcdefg_2_sn_1,
      I2 => \^q\(0),
      I3 => moving_sum(7),
      O => \abcdefg[3]_INST_0_i_7_n_0\
    );
\abcdefg[3]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => moving_sum(3),
      I1 => moving_sum(4),
      O => \abcdefg[3]_INST_0_i_8_n_0\
    );
\abcdefg[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFAFFFA"
    )
        port map (
      I0 => \abcdefg[4]_INST_0_i_1_n_0\,
      I1 => abcdefg_4_sn_1,
      I2 => \abcdefg[4]_INST_0_i_3_n_0\,
      I3 => \abcdefg[4]_INST_0_i_4_n_0\,
      I4 => \^moving_sum_reg[8]_0\(2),
      I5 => \abcdefg[4]_0\,
      O => abcdefg(4)
    );
\abcdefg[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2FFF2FFF2F2F2"
    )
        port map (
      I0 => \abcdefg[4]_INST_0_i_6_n_0\,
      I1 => \^moving_sum_reg[0]_0\(1),
      I2 => \abcdefg[5]_INST_0_i_7_n_0\,
      I3 => \abcdefg[5]_INST_0_i_6_n_0\,
      I4 => moving_sum(5),
      I5 => moving_sum(6),
      O => \abcdefg[4]_INST_0_i_1_n_0\
    );
\abcdefg[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005D00000008"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^moving_sum_reg[8]_0\(0),
      I2 => \^moving_sum_reg[8]_0\(1),
      I3 => abcdefg_2_sn_1,
      I4 => velocity1,
      I5 => \abcdefg[4]_INST_0_i_7_n_0\,
      O => \abcdefg[4]_INST_0_i_3_n_0\
    );
\abcdefg[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4040FF404040"
    )
        port map (
      I0 => \^moving_sum_reg[8]_0\(0),
      I1 => \abcdefg[4]_1\,
      I2 => \abcdefg[5]_INST_0_i_8_n_0\,
      I3 => \abcdefg[4]_INST_0_i_8_n_0\,
      I4 => \abcdefg[4]_2\,
      I5 => moving_sum(7),
      O => \abcdefg[4]_INST_0_i_4_n_0\
    );
\abcdefg[4]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => abcdefg_2_sn_1,
      I1 => \^q\(0),
      I2 => velocity1,
      I3 => \^moving_sum_reg[0]_0\(0),
      O => \abcdefg[4]_INST_0_i_6_n_0\
    );
\abcdefg[4]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => moving_sum(5),
      I1 => moving_sum(4),
      I2 => moving_sum(3),
      O => \abcdefg[4]_INST_0_i_7_n_0\
    );
\abcdefg[4]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => moving_sum(9),
      I1 => moving_sum(8),
      O => \abcdefg[4]_INST_0_i_8_n_0\
    );
\abcdefg[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \abcdefg[5]_INST_0_i_1_n_0\,
      I1 => \abcdefg[5]_INST_0_i_2_n_0\,
      I2 => \abcdefg[5]_INST_0_i_3_n_0\,
      I3 => \abcdefg[5]_INST_0_i_4_n_0\,
      O => abcdefg(5)
    );
\abcdefg[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00600000006000F0"
    )
        port map (
      I0 => \^moving_sum_reg[8]_0\(1),
      I1 => \^moving_sum_reg[0]_0\(1),
      I2 => \abcdefg[5]_INST_0_i_5_n_0\,
      I3 => abcdefg_2_sn_1,
      I4 => \^moving_sum_reg[0]_0\(0),
      I5 => \^moving_sum_reg[8]_0\(0),
      O => \abcdefg[5]_INST_0_i_1_n_0\
    );
\abcdefg[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10D0D030"
    )
        port map (
      I0 => moving_sum(5),
      I1 => moving_sum(3),
      I2 => \abcdefg[5]_INST_0_i_6_n_0\,
      I3 => moving_sum(4),
      I4 => moving_sum(6),
      I5 => \abcdefg[5]_INST_0_i_7_n_0\,
      O => \abcdefg[5]_INST_0_i_2_n_0\
    );
\abcdefg[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909090909090FF90"
    )
        port map (
      I0 => moving_sum(8),
      I1 => moving_sum(7),
      I2 => \abcdefg[4]_2\,
      I3 => \abcdefg[5]_INST_0_i_8_n_0\,
      I4 => \abcdefg[4]_1\,
      I5 => \^moving_sum_reg[0]_0\(1),
      O => \abcdefg[5]_INST_0_i_3_n_0\
    );
\abcdefg[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB1B1BBB00000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => moving_sum(9),
      I2 => \^o\(0),
      I3 => \^moving_sum_reg[8]_0\(3),
      I4 => \^moving_sum_reg[8]_0\(2),
      I5 => abcdefg_2_sn_1,
      O => \abcdefg[5]_INST_0_i_4_n_0\
    );
\abcdefg[5]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => velocity1,
      O => \abcdefg[5]_INST_0_i_5_n_0\
    );
\abcdefg[5]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(0),
      I1 => abcdefg_2_sn_1,
      I2 => velocity1,
      O => \abcdefg[5]_INST_0_i_6_n_0\
    );
\abcdefg[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F001F001F001F00B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \abcdefg[2]_INST_0_i_3_n_0\,
      I2 => velocity1,
      I3 => abcdefg_2_sn_1,
      I4 => \^moving_sum_reg[8]_0\(0),
      I5 => \^moving_sum_reg[0]_0\(1),
      O => \abcdefg[5]_INST_0_i_7_n_0\
    );
\abcdefg[5]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => velocity1,
      I1 => \^q\(0),
      I2 => abcdefg_2_sn_1,
      O => \abcdefg[5]_INST_0_i_8_n_0\
    );
\abcdefg[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFCFCFC"
    )
        port map (
      I0 => \^q\(0),
      I1 => \abcdefg[6]_INST_0_i_1_n_0\,
      I2 => \abcdefg[6]_INST_0_i_2_n_0\,
      I3 => \^moving_sum_reg[8]_0\(3),
      I4 => abcdefg_2_sn_1,
      I5 => \abcdefg[6]_INST_0_i_3_n_0\,
      O => abcdefg(6)
    );
\abcdefg[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8200"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^o\(0),
      I2 => \^moving_sum_reg[8]_0\(2),
      I3 => abcdefg_2_sn_1,
      I4 => \abcdefg[6]_INST_0_i_4_n_0\,
      I5 => \abcdefg[6]_INST_0_i_5_n_0\,
      O => \abcdefg[6]_INST_0_i_1_n_0\
    );
\abcdefg[6]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(0),
      I1 => abcdefg_2_sn_1,
      I2 => moving_sum(3),
      O => \abcdefg[6]_INST_0_i_10_n_0\
    );
\abcdefg[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEAAEEAAAEAEAEA"
    )
        port map (
      I0 => \abcdefg[6]_INST_0_i_6_n_0\,
      I1 => \abcdefg[6]_INST_0_i_7_n_0\,
      I2 => \^moving_sum_reg[8]_0\(1),
      I3 => \^moving_sum_reg[0]_0\(0),
      I4 => \^moving_sum_reg[0]_0\(1),
      I5 => \^moving_sum_reg[8]_0\(0),
      O => \abcdefg[6]_INST_0_i_2_n_0\
    );
\abcdefg[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => \abcdefg[4]_2\,
      I1 => moving_sum(8),
      I2 => \abcdefg[6]_INST_0_i_9_n_0\,
      I3 => \abcdefg[6]_INST_0_i_10_n_0\,
      I4 => \^moving_sum_reg[8]_0\(0),
      I5 => abcdefg_1_sn_1,
      O => \abcdefg[6]_INST_0_i_3_n_0\
    );
\abcdefg[6]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080008"
    )
        port map (
      I0 => \^moving_sum_reg[0]_0\(1),
      I1 => \^q\(0),
      I2 => abcdefg_2_sn_1,
      I3 => \^moving_sum_reg[8]_0\(1),
      I4 => \^moving_sum_reg[8]_0\(0),
      O => \abcdefg[6]_INST_0_i_4_n_0\
    );
\abcdefg[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDCDCCCDCCCCCDCC"
    )
        port map (
      I0 => \^q\(0),
      I1 => velocity1,
      I2 => abcdefg_2_sn_1,
      I3 => moving_sum(6),
      I4 => moving_sum(5),
      I5 => moving_sum(4),
      O => \abcdefg[6]_INST_0_i_5_n_0\
    );
\abcdefg[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4141005541410000"
    )
        port map (
      I0 => \^q\(0),
      I1 => moving_sum(9),
      I2 => moving_sum(7),
      I3 => \abcdefg[6]_INST_0_i_9_n_0\,
      I4 => abcdefg_2_sn_1,
      I5 => moving_sum(3),
      O => \abcdefg[6]_INST_0_i_6_n_0\
    );
\abcdefg[6]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => abcdefg_2_sn_1,
      O => \abcdefg[6]_INST_0_i_7_n_0\
    );
\abcdefg[6]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => moving_sum(6),
      I1 => moving_sum(5),
      O => \abcdefg[6]_INST_0_i_9_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0000"
    )
        port map (
      I0 => pos_count(5),
      I1 => pos_count(1),
      I2 => pos_count(0),
      I3 => \i__carry__0_i_8_n_0\,
      I4 => \moving_sum[11]_i_2_n_0\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => pos_count(1),
      I1 => pos_count(0),
      I2 => \i__carry__0_i_8_n_0\,
      O => \i__carry__0_i_10_n_0\
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => pos_count(2),
      I1 => pos_count(3),
      I2 => pos_count(4),
      I3 => pos_count(7),
      I4 => \i__carry__0_i_13_n_0\,
      O => \i__carry__0_i_11_n_0\
    );
\i__carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => pos_count(3),
      I1 => pos_count(2),
      I2 => \i__carry__0_i_9_n_0\,
      O => \i__carry__0_i_12_n_0\
    );
\i__carry__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => pos_count(5),
      I1 => pos_count(1),
      I2 => pos_count(0),
      O => \i__carry__0_i_13_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0000"
    )
        port map (
      I0 => pos_count(4),
      I1 => pos_count(3),
      I2 => pos_count(2),
      I3 => \i__carry__0_i_9_n_0\,
      I4 => \moving_sum[11]_i_2_n_0\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => pos_count(3),
      I1 => \i__carry_i_9_n_0\,
      I2 => pos_count(2),
      I3 => \moving_sum[11]_i_2_n_0\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => \moving_sum[11]_i_2_n_0\,
      I1 => pos_count(7),
      I2 => pos_count(6),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7877FFFF"
    )
        port map (
      I0 => \i__carry__0_i_10_n_0\,
      I1 => pos_count(5),
      I2 => \i__carry__0_i_11_n_0\,
      I3 => pos_count(6),
      I4 => \moving_sum[11]_i_2_n_0\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8777FFFF"
    )
        port map (
      I0 => \i__carry__0_i_12_n_0\,
      I1 => pos_count(4),
      I2 => pos_count(5),
      I3 => \i__carry__0_i_10_n_0\,
      I4 => \moving_sum[11]_i_2_n_0\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9F"
    )
        port map (
      I0 => pos_count(4),
      I1 => pos_count(3),
      I2 => \moving_sum[11]_i_2_n_0\,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pos_count(2),
      I1 => pos_count(6),
      I2 => pos_count(7),
      I3 => pos_count(4),
      I4 => pos_count(3),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => pos_count(0),
      I1 => pos_count(1),
      I2 => pos_count(5),
      I3 => pos_count(7),
      I4 => pos_count(6),
      O => \i__carry__0_i_9_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => pos_count(2),
      I1 => \i__carry_i_9_n_0\,
      I2 => pos_count(3),
      I3 => \moving_sum[11]_i_2_n_0\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => pos_count(3),
      I1 => pos_count(4),
      I2 => pos_count(7),
      I3 => pos_count(6),
      I4 => pos_count(2),
      I5 => pos_count(5),
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => pos_count(3),
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => pos_count(1),
      I1 => \i__carry_i_10_n_0\,
      I2 => pos_count(0),
      I3 => \moving_sum[11]_i_2_n_0\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD000"
    )
        port map (
      I0 => pos_count(1),
      I1 => \i__carry_i_10_n_0\,
      I2 => pos_count(0),
      I3 => \moving_sum[11]_i_2_n_0\,
      I4 => pos_inc,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0002FFF"
    )
        port map (
      I0 => pos_count(1),
      I1 => \i__carry_i_10_n_0\,
      I2 => pos_count(0),
      I3 => \moving_sum[11]_i_2_n_0\,
      I4 => pos_inc,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9F"
    )
        port map (
      I0 => pos_count(3),
      I1 => pos_count(2),
      I2 => \moving_sum[11]_i_2_n_0\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D02F2F2FFFFFFFFF"
    )
        port map (
      I0 => pos_count(0),
      I1 => \i__carry_i_10_n_0\,
      I2 => pos_count(1),
      I3 => pos_count(2),
      I4 => \i__carry_i_11_n_0\,
      I5 => \moving_sum[11]_i_2_n_0\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C9495555"
    )
        port map (
      I0 => pos_inc,
      I1 => pos_count(1),
      I2 => pos_count(0),
      I3 => \i__carry_i_10_n_0\,
      I4 => \moving_sum[11]_i_2_n_0\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D02F00FF2FD0FF00"
    )
        port map (
      I0 => pos_count(1),
      I1 => \i__carry_i_10_n_0\,
      I2 => pos_count(0),
      I3 => pos_inc,
      I4 => \moving_sum[11]_i_2_n_0\,
      I5 => pos_dec,
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => pos_count(6),
      I1 => pos_count(7),
      I2 => pos_count(5),
      I3 => pos_count(1),
      I4 => pos_count(0),
      I5 => pos_count(4),
      O => \i__carry_i_9_n_0\
    );
\moving_sum[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \moving_sum[11]_i_2_n_0\,
      O => ten_ms_pulse
    );
\moving_sum[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \moving_sum[11]_i_3_n_0\,
      I1 => \moving_sum[11]_i_4_n_0\,
      I2 => rcount_reg(0),
      I3 => rcount_reg(18),
      I4 => rcount_reg(19),
      I5 => \moving_sum[11]_i_5_n_0\,
      O => \moving_sum[11]_i_2_n_0\
    );
\moving_sum[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rcount_reg(2),
      I1 => rcount_reg(1),
      I2 => rcount_reg(4),
      I3 => rcount_reg(3),
      O => \moving_sum[11]_i_3_n_0\
    );
\moving_sum[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rcount_reg(14),
      I1 => rcount_reg(9),
      I2 => rcount_reg(17),
      I3 => rcount_reg(16),
      O => \moving_sum[11]_i_4_n_0\
    );
\moving_sum[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rcount[0]_i_8_n_0\,
      I1 => rcount_reg(5),
      O => \moving_sum[11]_i_5_n_0\
    );
moving_sum_next_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => moving_sum_next_carry_n_0,
      CO(2) => moving_sum_next_carry_n_1,
      CO(1) => moving_sum_next_carry_n_2,
      CO(0) => moving_sum_next_carry_n_3,
      CYINIT => '0',
      DI(3) => moving_sum_next_carry_i_1_n_0,
      DI(2) => moving_sum_next_carry_i_2_n_0,
      DI(1) => moving_sum_next_carry_i_3_n_0,
      DI(0) => moving_sum_next_carry_i_4_n_0,
      O(3) => moving_sum_next_carry_n_4,
      O(2) => moving_sum_next_carry_n_5,
      O(1) => moving_sum_next_carry_n_6,
      O(0) => moving_sum_next_carry_n_7,
      S(3) => moving_sum_next_carry_i_5_n_0,
      S(2) => moving_sum_next_carry_i_6_n_0,
      S(1) => moving_sum_next_carry_i_7_n_0,
      S(0) => moving_sum_next_carry_i_8_n_0
    );
\moving_sum_next_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => moving_sum_next_carry_n_0,
      CO(3) => \moving_sum_next_carry__0_n_0\,
      CO(2) => \moving_sum_next_carry__0_n_1\,
      CO(1) => \moving_sum_next_carry__0_n_2\,
      CO(0) => \moving_sum_next_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \moving_sum_next_carry__0_i_1_n_0\,
      DI(2) => \moving_sum_next_carry__0_i_2_n_0\,
      DI(1) => \moving_sum_next_carry__0_i_3_n_0\,
      DI(0) => \moving_sum_next_carry__0_i_4_n_0\,
      O(3) => \moving_sum_next_carry__0_n_4\,
      O(2) => \moving_sum_next_carry__0_n_5\,
      O(1) => \moving_sum_next_carry__0_n_6\,
      O(0) => \moving_sum_next_carry__0_n_7\,
      S(3) => \moving_sum_next_carry__0_i_5_n_0\,
      S(2) => \moving_sum_next_carry__0_i_6_n_0\,
      S(1) => \moving_sum_next_carry__0_i_7_n_0\,
      S(0) => \moving_sum_next_carry__0_i_8_n_0\
    );
\moving_sum_next_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => moving_sum(6),
      I1 => \pos_shift_reg[9]\(6),
      I2 => pos_count(6),
      O => \moving_sum_next_carry__0_i_1_n_0\
    );
\moving_sum_next_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => moving_sum(5),
      I1 => \pos_shift_reg[9]\(5),
      I2 => pos_count(5),
      O => \moving_sum_next_carry__0_i_2_n_0\
    );
\moving_sum_next_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => moving_sum(4),
      I1 => \pos_shift_reg[9]\(4),
      I2 => pos_count(4),
      O => \moving_sum_next_carry__0_i_3_n_0\
    );
\moving_sum_next_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => moving_sum(3),
      I1 => \pos_shift_reg[9]\(3),
      I2 => pos_count(3),
      O => \moving_sum_next_carry__0_i_4_n_0\
    );
\moving_sum_next_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => pos_count(6),
      I1 => \pos_shift_reg[9]\(6),
      I2 => moving_sum(6),
      I3 => \pos_shift_reg[9]\(7),
      I4 => pos_count(7),
      I5 => moving_sum(7),
      O => \moving_sum_next_carry__0_i_5_n_0\
    );
\moving_sum_next_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => pos_count(5),
      I1 => \pos_shift_reg[9]\(5),
      I2 => moving_sum(5),
      I3 => \pos_shift_reg[9]\(6),
      I4 => pos_count(6),
      I5 => moving_sum(6),
      O => \moving_sum_next_carry__0_i_6_n_0\
    );
\moving_sum_next_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => pos_count(4),
      I1 => \pos_shift_reg[9]\(4),
      I2 => moving_sum(4),
      I3 => \pos_shift_reg[9]\(5),
      I4 => pos_count(5),
      I5 => moving_sum(5),
      O => \moving_sum_next_carry__0_i_7_n_0\
    );
\moving_sum_next_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => pos_count(3),
      I1 => \pos_shift_reg[9]\(3),
      I2 => moving_sum(3),
      I3 => \pos_shift_reg[9]\(4),
      I4 => pos_count(4),
      I5 => moving_sum(4),
      O => \moving_sum_next_carry__0_i_8_n_0\
    );
\moving_sum_next_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \moving_sum_next_carry__0_n_0\,
      CO(3) => \NLW_moving_sum_next_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \moving_sum_next_carry__1_n_1\,
      CO(1) => \moving_sum_next_carry__1_n_2\,
      CO(0) => \moving_sum_next_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => moving_sum(9 downto 8),
      DI(0) => \moving_sum_next_carry__1_i_1_n_0\,
      O(3) => \moving_sum_next_carry__1_n_4\,
      O(2) => \moving_sum_next_carry__1_n_5\,
      O(1) => \moving_sum_next_carry__1_n_6\,
      O(0) => \moving_sum_next_carry__1_n_7\,
      S(3) => \moving_sum_next_carry__1_i_2_n_0\,
      S(2) => \moving_sum_next_carry__1_i_3_n_0\,
      S(1) => \moving_sum_next_carry__1_i_4_n_0\,
      S(0) => \moving_sum_next_carry__1_i_5_n_0\
    );
\moving_sum_next_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => moving_sum(7),
      I1 => pos_count(7),
      I2 => \pos_shift_reg[9]\(7),
      O => \moving_sum_next_carry__1_i_1_n_0\
    );
\moving_sum_next_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => moving_sum(10),
      I1 => \^q\(0),
      O => \moving_sum_next_carry__1_i_2_n_0\
    );
\moving_sum_next_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => moving_sum(9),
      I1 => moving_sum(10),
      O => \moving_sum_next_carry__1_i_3_n_0\
    );
\moving_sum_next_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => moving_sum(8),
      I1 => moving_sum(9),
      O => \moving_sum_next_carry__1_i_4_n_0\
    );
\moving_sum_next_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B24D"
    )
        port map (
      I0 => \pos_shift_reg[9]\(7),
      I1 => pos_count(7),
      I2 => moving_sum(7),
      I3 => moving_sum(8),
      O => \moving_sum_next_carry__1_i_5_n_0\
    );
moving_sum_next_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => moving_sum(2),
      I1 => \pos_shift_reg[9]\(2),
      I2 => pos_count(2),
      O => moving_sum_next_carry_i_1_n_0
    );
moving_sum_next_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => moving_sum(1),
      I1 => \pos_shift_reg[9]\(1),
      I2 => pos_count(1),
      O => moving_sum_next_carry_i_2_n_0
    );
moving_sum_next_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pos_count(0),
      I1 => moving_sum(0),
      O => moving_sum_next_carry_i_3_n_0
    );
moving_sum_next_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pos_count(0),
      I1 => moving_sum(0),
      O => moving_sum_next_carry_i_4_n_0
    );
moving_sum_next_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => pos_count(2),
      I1 => \pos_shift_reg[9]\(2),
      I2 => moving_sum(2),
      I3 => \pos_shift_reg[9]\(3),
      I4 => pos_count(3),
      I5 => moving_sum(3),
      O => moving_sum_next_carry_i_5_n_0
    );
moving_sum_next_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => pos_count(1),
      I1 => \pos_shift_reg[9]\(1),
      I2 => moving_sum(1),
      I3 => \pos_shift_reg[9]\(2),
      I4 => pos_count(2),
      I5 => moving_sum(2),
      O => moving_sum_next_carry_i_6_n_0
    );
moving_sum_next_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E11E1EE1"
    )
        port map (
      I0 => moving_sum(0),
      I1 => pos_count(0),
      I2 => \pos_shift_reg[9]\(1),
      I3 => pos_count(1),
      I4 => moving_sum(1),
      O => moving_sum_next_carry_i_7_n_0
    );
moving_sum_next_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => moving_sum(0),
      I1 => pos_count(0),
      I2 => \pos_shift_reg[9]\(0),
      O => moving_sum_next_carry_i_8_n_0
    );
\moving_sum_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => moving_sum_next_carry_n_7,
      Q => moving_sum(0)
    );
\moving_sum_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \moving_sum_next_carry__1_n_5\,
      Q => moving_sum(10)
    );
\moving_sum_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \moving_sum_next_carry__1_n_4\,
      Q => \^q\(0)
    );
\moving_sum_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => moving_sum_next_carry_n_6,
      Q => moving_sum(1)
    );
\moving_sum_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => moving_sum_next_carry_n_5,
      Q => moving_sum(2)
    );
\moving_sum_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => moving_sum_next_carry_n_4,
      Q => moving_sum(3)
    );
\moving_sum_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \moving_sum_next_carry__0_n_7\,
      Q => moving_sum(4)
    );
\moving_sum_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \moving_sum_next_carry__0_n_6\,
      Q => moving_sum(5)
    );
\moving_sum_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \moving_sum_next_carry__0_n_5\,
      Q => moving_sum(6)
    );
\moving_sum_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \moving_sum_next_carry__0_n_4\,
      Q => moving_sum(7)
    );
\moving_sum_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \moving_sum_next_carry__1_n_7\,
      Q => moving_sum(8)
    );
\moving_sum_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \moving_sum_next_carry__1_n_6\,
      Q => moving_sum(9)
    );
\pos_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \_inferred__0/i__carry_n_7\,
      Q => pos_count(0)
    );
\pos_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \_inferred__0/i__carry_n_6\,
      Q => pos_count(1)
    );
\pos_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \_inferred__0/i__carry_n_5\,
      Q => pos_count(2)
    );
\pos_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \_inferred__0/i__carry_n_4\,
      Q => pos_count(3)
    );
\pos_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \_inferred__0/i__carry__0_n_7\,
      Q => pos_count(4)
    );
\pos_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \_inferred__0/i__carry__0_n_6\,
      Q => pos_count(5)
    );
\pos_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \_inferred__0/i__carry__0_n_5\,
      Q => pos_count(6)
    );
\pos_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \_inferred__0/i__carry__0_n_4\,
      Q => pos_count(7)
    );
\pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => ten_ms_pulse,
      CLK => mclk,
      D => pos_count(0),
      Q => \pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\
    );
\pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => ten_ms_pulse,
      CLK => mclk,
      D => pos_count(1),
      Q => \pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\
    );
\pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => ten_ms_pulse,
      CLK => mclk,
      D => pos_count(2),
      Q => \pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\
    );
\pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => ten_ms_pulse,
      CLK => mclk,
      D => pos_count(3),
      Q => \pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\
    );
\pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => ten_ms_pulse,
      CLK => mclk,
      D => pos_count(4),
      Q => \pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\
    );
\pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => ten_ms_pulse,
      CLK => mclk,
      D => pos_count(5),
      Q => \pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\
    );
\pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => ten_ms_pulse,
      CLK => mclk,
      D => pos_count(6),
      Q => \pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\
    );
\pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => ten_ms_pulse,
      CLK => mclk,
      D => pos_count(7),
      Q => \pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\
    );
\pos_shift_reg[8][0]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7\: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      D => \pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\,
      Q => \pos_shift_reg[8][0]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      R => '0'
    );
\pos_shift_reg[8][1]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7\: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      D => \pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\,
      Q => \pos_shift_reg[8][1]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      R => '0'
    );
\pos_shift_reg[8][2]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7\: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      D => \pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\,
      Q => \pos_shift_reg[8][2]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      R => '0'
    );
\pos_shift_reg[8][3]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7\: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      D => \pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\,
      Q => \pos_shift_reg[8][3]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      R => '0'
    );
\pos_shift_reg[8][4]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7\: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      D => \pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\,
      Q => \pos_shift_reg[8][4]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      R => '0'
    );
\pos_shift_reg[8][5]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7\: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      D => \pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\,
      Q => \pos_shift_reg[8][5]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      R => '0'
    );
\pos_shift_reg[8][6]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7\: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      D => \pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\,
      Q => \pos_shift_reg[8][6]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      R => '0'
    );
\pos_shift_reg[8][7]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7\: unisim.vcomponents.FDRE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      D => \pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0\,
      Q => \pos_shift_reg[8][7]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      R => '0'
    );
\pos_shift_reg[9][0]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \pos_shift_reg_gate__6_n_0\,
      Q => \pos_shift_reg[9]\(0)
    );
\pos_shift_reg[9][1]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \pos_shift_reg_gate__5_n_0\,
      Q => \pos_shift_reg[9]\(1)
    );
\pos_shift_reg[9][2]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \pos_shift_reg_gate__4_n_0\,
      Q => \pos_shift_reg[9]\(2)
    );
\pos_shift_reg[9][3]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \pos_shift_reg_gate__3_n_0\,
      Q => \pos_shift_reg[9]\(3)
    );
\pos_shift_reg[9][4]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \pos_shift_reg_gate__2_n_0\,
      Q => \pos_shift_reg[9]\(4)
    );
\pos_shift_reg[9][5]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \pos_shift_reg_gate__1_n_0\,
      Q => \pos_shift_reg[9]\(5)
    );
\pos_shift_reg[9][6]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => \pos_shift_reg_gate__0_n_0\,
      Q => \pos_shift_reg[9]\(6)
    );
\pos_shift_reg[9][7]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => pos_shift_reg_gate_n_0,
      Q => \pos_shift_reg[9]\(7)
    );
pos_shift_reg_c: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => '1',
      Q => pos_shift_reg_c_n_0
    );
pos_shift_reg_c_0: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => pos_shift_reg_c_n_0,
      Q => pos_shift_reg_c_0_n_0
    );
pos_shift_reg_c_1: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => pos_shift_reg_c_0_n_0,
      Q => pos_shift_reg_c_1_n_0
    );
pos_shift_reg_c_2: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => pos_shift_reg_c_1_n_0,
      Q => pos_shift_reg_c_2_n_0
    );
pos_shift_reg_c_3: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => pos_shift_reg_c_2_n_0,
      Q => pos_shift_reg_c_3_n_0
    );
pos_shift_reg_c_4: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => pos_shift_reg_c_3_n_0,
      Q => pos_shift_reg_c_4_n_0
    );
pos_shift_reg_c_5: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => pos_shift_reg_c_4_n_0,
      Q => pos_shift_reg_c_5_n_0
    );
pos_shift_reg_c_6: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => pos_shift_reg_c_5_n_0,
      Q => pos_shift_reg_c_6_n_0
    );
pos_shift_reg_c_7: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => ten_ms_pulse,
      CLR => reset,
      D => pos_shift_reg_c_6_n_0,
      Q => pos_shift_reg_c_7_n_0
    );
pos_shift_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pos_shift_reg[8][7]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      I1 => pos_shift_reg_c_7_n_0,
      O => pos_shift_reg_gate_n_0
    );
\pos_shift_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pos_shift_reg[8][6]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      I1 => pos_shift_reg_c_7_n_0,
      O => \pos_shift_reg_gate__0_n_0\
    );
\pos_shift_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pos_shift_reg[8][5]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      I1 => pos_shift_reg_c_7_n_0,
      O => \pos_shift_reg_gate__1_n_0\
    );
\pos_shift_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pos_shift_reg[8][4]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      I1 => pos_shift_reg_c_7_n_0,
      O => \pos_shift_reg_gate__2_n_0\
    );
\pos_shift_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pos_shift_reg[8][3]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      I1 => pos_shift_reg_c_7_n_0,
      O => \pos_shift_reg_gate__3_n_0\
    );
\pos_shift_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pos_shift_reg[8][2]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      I1 => pos_shift_reg_c_7_n_0,
      O => \pos_shift_reg_gate__4_n_0\
    );
\pos_shift_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pos_shift_reg[8][1]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      I1 => pos_shift_reg_c_7_n_0,
      O => \pos_shift_reg_gate__5_n_0\
    );
\pos_shift_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pos_shift_reg[8][0]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0\,
      I1 => pos_shift_reg_c_7_n_0,
      O => \pos_shift_reg_gate__6_n_0\
    );
\rcount[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00007FFF"
    )
        port map (
      I0 => rcount_reg(3),
      I1 => rcount_reg(4),
      I2 => rcount_reg(0),
      I3 => rcount_reg(5),
      I4 => \rcount[0]_i_8_n_0\,
      I5 => \rcount[0]_i_11_n_0\,
      O => \rcount[0]_i_10_n_0\
    );
\rcount[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABABABFF"
    )
        port map (
      I0 => \rcount[12]_i_6_n_0\,
      I1 => rcount_reg(14),
      I2 => rcount_reg(15),
      I3 => \rcount[12]_i_7_n_0\,
      I4 => rcount_reg(9),
      O => \rcount[0]_i_11_n_0\
    );
\rcount[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => rcount_reg(3),
      I1 => rcount_reg(4),
      I2 => rcount_reg(1),
      I3 => rcount_reg(2),
      I4 => \rcount[0]_i_8_n_0\,
      O => \rcount[0]_i_12_n_0\
    );
\rcount[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \rcount[0]_i_7_n_0\,
      I1 => \rcount[0]_i_8_n_0\,
      I2 => rcount_reg(5),
      I3 => rcount_reg(0),
      O => \rcount[0]_i_2_n_0\
    );
\rcount[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0B0"
    )
        port map (
      I0 => \rcount[0]_i_9_n_0\,
      I1 => \rcount[0]_i_8_n_0\,
      I2 => rcount_reg(3),
      I3 => rcount_reg(4),
      O => \rcount[0]_i_3_n_0\
    );
\rcount[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F010"
    )
        port map (
      I0 => \rcount[0]_i_8_n_0\,
      I1 => rcount_reg(1),
      I2 => rcount_reg(2),
      I3 => \rcount[0]_i_10_n_0\,
      O => \rcount[0]_i_4_n_0\
    );
\rcount[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F010"
    )
        port map (
      I0 => \rcount[0]_i_8_n_0\,
      I1 => rcount_reg(2),
      I2 => rcount_reg(1),
      I3 => \rcount[0]_i_10_n_0\,
      O => \rcount[0]_i_5_n_0\
    );
\rcount[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \rcount[0]_i_11_n_0\,
      I1 => \rcount[0]_i_12_n_0\,
      I2 => \rcount[0]_i_8_n_0\,
      I3 => rcount_reg(0),
      O => \rcount[0]_i_6_n_0\
    );
\rcount[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15555555"
    )
        port map (
      I0 => \rcount[0]_i_8_n_0\,
      I1 => rcount_reg(2),
      I2 => rcount_reg(1),
      I3 => rcount_reg(4),
      I4 => rcount_reg(3),
      I5 => \rcount[0]_i_11_n_0\,
      O => \rcount[0]_i_7_n_0\
    );
\rcount[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rcount_reg(6),
      I1 => rcount_reg(7),
      I2 => rcount_reg(8),
      I3 => \rcount[12]_i_7_n_0\,
      O => \rcount[0]_i_8_n_0\
    );
\rcount[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00007FFF"
    )
        port map (
      I0 => rcount_reg(1),
      I1 => rcount_reg(2),
      I2 => rcount_reg(0),
      I3 => rcount_reg(5),
      I4 => \rcount[0]_i_8_n_0\,
      I5 => \rcount[0]_i_11_n_0\,
      O => \rcount[0]_i_9_n_0\
    );
\rcount[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => rcount_reg(18),
      I1 => rcount_reg(19),
      I2 => rcount_reg(16),
      I3 => rcount_reg(17),
      I4 => rcount_reg(15),
      O => \rcount[12]_i_2_n_0\
    );
\rcount[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00AB00"
    )
        port map (
      I0 => \rcount[12]_i_6_n_0\,
      I1 => rcount_reg(9),
      I2 => \rcount[12]_i_7_n_0\,
      I3 => rcount_reg(14),
      I4 => \rcount[8]_i_7_n_0\,
      O => \rcount[12]_i_3_n_0\
    );
\rcount[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rcount[8]_i_6_n_0\,
      I1 => rcount_reg(13),
      O => \rcount[12]_i_4_n_0\
    );
\rcount[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rcount[8]_i_6_n_0\,
      I1 => rcount_reg(12),
      O => \rcount[12]_i_5_n_0\
    );
\rcount[12]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rcount_reg(17),
      I1 => rcount_reg(16),
      I2 => rcount_reg(19),
      I3 => rcount_reg(18),
      O => \rcount[12]_i_6_n_0\
    );
\rcount[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rcount_reg(10),
      I1 => rcount_reg(13),
      I2 => rcount_reg(15),
      I3 => rcount_reg(12),
      I4 => rcount_reg(11),
      O => \rcount[12]_i_7_n_0\
    );
\rcount[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => \rcount[16]_i_6_n_0\,
      I1 => rcount_reg(17),
      I2 => rcount_reg(16),
      I3 => rcount_reg(18),
      I4 => rcount_reg(19),
      O => \rcount[16]_i_2_n_0\
    );
\rcount[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => \rcount[16]_i_6_n_0\,
      I1 => rcount_reg(17),
      I2 => rcount_reg(16),
      I3 => rcount_reg(19),
      I4 => rcount_reg(18),
      O => \rcount[16]_i_3_n_0\
    );
\rcount[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C4CCCCCC"
    )
        port map (
      I0 => rcount_reg(16),
      I1 => rcount_reg(17),
      I2 => \rcount[16]_i_6_n_0\,
      I3 => rcount_reg(19),
      I4 => rcount_reg(18),
      O => \rcount[16]_i_4_n_0\
    );
\rcount[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C4CCCCCC"
    )
        port map (
      I0 => rcount_reg(17),
      I1 => rcount_reg(16),
      I2 => \rcount[16]_i_6_n_0\,
      I3 => rcount_reg(19),
      I4 => rcount_reg(18),
      O => \rcount[16]_i_5_n_0\
    );
\rcount[16]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABABABFF"
    )
        port map (
      I0 => \rcount[8]_i_7_n_0\,
      I1 => rcount_reg(14),
      I2 => rcount_reg(15),
      I3 => \rcount[12]_i_7_n_0\,
      I4 => rcount_reg(9),
      O => \rcount[16]_i_6_n_0\
    );
\rcount[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rcount[0]_i_11_n_0\,
      I1 => rcount_reg(7),
      O => \rcount[4]_i_2_n_0\
    );
\rcount[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rcount[0]_i_11_n_0\,
      I1 => rcount_reg(6),
      O => \rcount[4]_i_3_n_0\
    );
\rcount[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F010"
    )
        port map (
      I0 => \rcount[0]_i_8_n_0\,
      I1 => rcount_reg(0),
      I2 => rcount_reg(5),
      I3 => \rcount[0]_i_7_n_0\,
      O => \rcount[4]_i_4_n_0\
    );
\rcount[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0B0"
    )
        port map (
      I0 => \rcount[0]_i_9_n_0\,
      I1 => \rcount[0]_i_8_n_0\,
      I2 => rcount_reg(4),
      I3 => rcount_reg(3),
      O => \rcount[4]_i_5_n_0\
    );
\rcount[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rcount[8]_i_6_n_0\,
      I1 => rcount_reg(11),
      O => \rcount[8]_i_2_n_0\
    );
\rcount[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rcount[8]_i_6_n_0\,
      I1 => rcount_reg(10),
      O => \rcount[8]_i_3_n_0\
    );
\rcount[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \rcount[8]_i_7_n_0\,
      I1 => rcount_reg(9),
      I2 => \rcount[8]_i_6_n_0\,
      O => \rcount[8]_i_4_n_0\
    );
\rcount[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rcount[0]_i_11_n_0\,
      I1 => rcount_reg(8),
      O => \rcount[8]_i_5_n_0\
    );
\rcount[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => rcount_reg(15),
      I1 => rcount_reg(14),
      I2 => rcount_reg(18),
      I3 => rcount_reg(19),
      I4 => rcount_reg(16),
      I5 => rcount_reg(17),
      O => \rcount[8]_i_6_n_0\
    );
\rcount[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F700FF00FF00FF"
    )
        port map (
      I0 => rcount_reg(2),
      I1 => rcount_reg(1),
      I2 => \rcount[8]_i_8_n_0\,
      I3 => \rcount[0]_i_8_n_0\,
      I4 => rcount_reg(5),
      I5 => rcount_reg(0),
      O => \rcount[8]_i_7_n_0\
    );
\rcount[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rcount_reg(3),
      I1 => rcount_reg(4),
      O => \rcount[8]_i_8_n_0\
    );
\rcount_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[0]_i_1_n_7\,
      Q => rcount_reg(0)
    );
\rcount_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rcount_reg[0]_i_1_n_0\,
      CO(2) => \rcount_reg[0]_i_1_n_1\,
      CO(1) => \rcount_reg[0]_i_1_n_2\,
      CO(0) => \rcount_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \rcount[0]_i_2_n_0\,
      O(3) => \rcount_reg[0]_i_1_n_4\,
      O(2) => \rcount_reg[0]_i_1_n_5\,
      O(1) => \rcount_reg[0]_i_1_n_6\,
      O(0) => \rcount_reg[0]_i_1_n_7\,
      S(3) => \rcount[0]_i_3_n_0\,
      S(2) => \rcount[0]_i_4_n_0\,
      S(1) => \rcount[0]_i_5_n_0\,
      S(0) => \rcount[0]_i_6_n_0\
    );
\rcount_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[8]_i_1_n_5\,
      Q => rcount_reg(10)
    );
\rcount_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[8]_i_1_n_4\,
      Q => rcount_reg(11)
    );
\rcount_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[12]_i_1_n_7\,
      Q => rcount_reg(12)
    );
\rcount_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rcount_reg[8]_i_1_n_0\,
      CO(3) => \rcount_reg[12]_i_1_n_0\,
      CO(2) => \rcount_reg[12]_i_1_n_1\,
      CO(1) => \rcount_reg[12]_i_1_n_2\,
      CO(0) => \rcount_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rcount_reg[12]_i_1_n_4\,
      O(2) => \rcount_reg[12]_i_1_n_5\,
      O(1) => \rcount_reg[12]_i_1_n_6\,
      O(0) => \rcount_reg[12]_i_1_n_7\,
      S(3) => \rcount[12]_i_2_n_0\,
      S(2) => \rcount[12]_i_3_n_0\,
      S(1) => \rcount[12]_i_4_n_0\,
      S(0) => \rcount[12]_i_5_n_0\
    );
\rcount_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[12]_i_1_n_6\,
      Q => rcount_reg(13)
    );
\rcount_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[12]_i_1_n_5\,
      Q => rcount_reg(14)
    );
\rcount_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[12]_i_1_n_4\,
      Q => rcount_reg(15)
    );
\rcount_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[16]_i_1_n_7\,
      Q => rcount_reg(16)
    );
\rcount_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rcount_reg[12]_i_1_n_0\,
      CO(3) => \NLW_rcount_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \rcount_reg[16]_i_1_n_1\,
      CO(1) => \rcount_reg[16]_i_1_n_2\,
      CO(0) => \rcount_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rcount_reg[16]_i_1_n_4\,
      O(2) => \rcount_reg[16]_i_1_n_5\,
      O(1) => \rcount_reg[16]_i_1_n_6\,
      O(0) => \rcount_reg[16]_i_1_n_7\,
      S(3) => \rcount[16]_i_2_n_0\,
      S(2) => \rcount[16]_i_3_n_0\,
      S(1) => \rcount[16]_i_4_n_0\,
      S(0) => \rcount[16]_i_5_n_0\
    );
\rcount_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[16]_i_1_n_6\,
      Q => rcount_reg(17)
    );
\rcount_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[16]_i_1_n_5\,
      Q => rcount_reg(18)
    );
\rcount_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[16]_i_1_n_4\,
      Q => rcount_reg(19)
    );
\rcount_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[0]_i_1_n_6\,
      Q => rcount_reg(1)
    );
\rcount_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[0]_i_1_n_5\,
      Q => rcount_reg(2)
    );
\rcount_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[0]_i_1_n_4\,
      Q => rcount_reg(3)
    );
\rcount_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[4]_i_1_n_7\,
      Q => rcount_reg(4)
    );
\rcount_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rcount_reg[0]_i_1_n_0\,
      CO(3) => \rcount_reg[4]_i_1_n_0\,
      CO(2) => \rcount_reg[4]_i_1_n_1\,
      CO(1) => \rcount_reg[4]_i_1_n_2\,
      CO(0) => \rcount_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rcount_reg[4]_i_1_n_4\,
      O(2) => \rcount_reg[4]_i_1_n_5\,
      O(1) => \rcount_reg[4]_i_1_n_6\,
      O(0) => \rcount_reg[4]_i_1_n_7\,
      S(3) => \rcount[4]_i_2_n_0\,
      S(2) => \rcount[4]_i_3_n_0\,
      S(1) => \rcount[4]_i_4_n_0\,
      S(0) => \rcount[4]_i_5_n_0\
    );
\rcount_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[4]_i_1_n_6\,
      Q => rcount_reg(5)
    );
\rcount_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[4]_i_1_n_5\,
      Q => rcount_reg(6)
    );
\rcount_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[4]_i_1_n_4\,
      Q => rcount_reg(7)
    );
\rcount_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[8]_i_1_n_7\,
      Q => rcount_reg(8)
    );
\rcount_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rcount_reg[4]_i_1_n_0\,
      CO(3) => \rcount_reg[8]_i_1_n_0\,
      CO(2) => \rcount_reg[8]_i_1_n_1\,
      CO(1) => \rcount_reg[8]_i_1_n_2\,
      CO(0) => \rcount_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rcount_reg[8]_i_1_n_4\,
      O(2) => \rcount_reg[8]_i_1_n_5\,
      O(1) => \rcount_reg[8]_i_1_n_6\,
      O(0) => \rcount_reg[8]_i_1_n_7\,
      S(3) => \rcount[8]_i_2_n_0\,
      S(2) => \rcount[8]_i_3_n_0\,
      S(1) => \rcount[8]_i_4_n_0\,
      S(0) => \rcount[8]_i_5_n_0\
    );
\rcount_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \rcount_reg[8]_i_1_n_6\,
      Q => rcount_reg(9)
    );
velocity1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => velocity1,
      CO(2) => velocity1_carry_n_1,
      CO(1) => velocity1_carry_n_2,
      CO(0) => velocity1_carry_n_3,
      CYINIT => '0',
      DI(3) => velocity1_carry_i_1_n_0,
      DI(2) => '0',
      DI(1) => velocity1_carry_i_2_n_0,
      DI(0) => velocity2(5),
      O(3 downto 0) => NLW_velocity1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => velocity1_carry_i_4_n_0,
      S(2) => velocity1_carry_i_5_n_0,
      S(1) => velocity1_carry_i_6_n_0,
      S(0) => velocity1_carry_i_7_n_0
    );
velocity1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => velocity3(10),
      I1 => velocity3(11),
      I2 => \^q\(0),
      I3 => moving_sum(10),
      O => velocity1_carry_i_1_n_0
    );
velocity1_carry_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => velocity1_carry_i_10_n_0,
      CO(2) => velocity1_carry_i_10_n_1,
      CO(1) => velocity1_carry_i_10_n_2,
      CO(0) => velocity1_carry_i_10_n_3,
      CYINIT => \velocity[3]_INST_0_i_3_n_0\,
      DI(3 downto 0) => B"0000",
      O(3) => velocity3(4),
      O(2 downto 0) => NLW_velocity1_carry_i_10_O_UNCONNECTED(2 downto 0),
      S(3) => velocity1_carry_i_18_n_0,
      S(2) => velocity1_carry_i_19_n_0,
      S(1) => velocity1_carry_i_20_n_0,
      S(0) => velocity1_carry_i_21_n_0
    );
velocity1_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => velocity1_carry_i_11_n_0
    );
velocity1_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(10),
      O => velocity1_carry_i_12_n_0
    );
velocity1_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(9),
      O => velocity1_carry_i_13_n_0
    );
velocity1_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(8),
      O => velocity1_carry_i_14_n_0
    );
velocity1_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(7),
      O => velocity1_carry_i_15_n_0
    );
velocity1_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(6),
      O => velocity1_carry_i_16_n_0
    );
velocity1_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(5),
      O => velocity1_carry_i_17_n_0
    );
velocity1_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(4),
      O => velocity1_carry_i_18_n_0
    );
velocity1_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(3),
      O => velocity1_carry_i_19_n_0
    );
velocity1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFEFE0"
    )
        port map (
      I0 => velocity3(6),
      I1 => velocity3(7),
      I2 => \^q\(0),
      I3 => moving_sum(6),
      I4 => moving_sum(7),
      O => velocity1_carry_i_2_n_0
    );
velocity1_carry_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(2),
      O => velocity1_carry_i_20_n_0
    );
velocity1_carry_i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(1),
      O => velocity1_carry_i_21_n_0
    );
velocity1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => velocity3(5),
      I1 => \^q\(0),
      I2 => moving_sum(5),
      O => velocity2(5)
    );
velocity1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"101F"
    )
        port map (
      I0 => velocity3(10),
      I1 => velocity3(11),
      I2 => \^q\(0),
      I3 => moving_sum(10),
      O => velocity1_carry_i_4_n_0
    );
velocity1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => velocity3(8),
      I1 => velocity3(9),
      I2 => \^q\(0),
      I3 => moving_sum(8),
      I4 => moving_sum(9),
      O => velocity1_carry_i_5_n_0
    );
velocity1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010101F1"
    )
        port map (
      I0 => moving_sum(7),
      I1 => moving_sum(6),
      I2 => \^q\(0),
      I3 => velocity3(7),
      I4 => velocity3(6),
      O => velocity1_carry_i_6_n_0
    );
velocity1_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"202F2020"
    )
        port map (
      I0 => velocity3(4),
      I1 => velocity3(5),
      I2 => \^q\(0),
      I3 => moving_sum(5),
      I4 => moving_sum(4),
      O => velocity1_carry_i_7_n_0
    );
velocity1_carry_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => velocity1_carry_i_9_n_0,
      CO(3 downto 2) => NLW_velocity1_carry_i_8_CO_UNCONNECTED(3 downto 2),
      CO(1) => velocity1_carry_i_8_n_2,
      CO(0) => velocity1_carry_i_8_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_velocity1_carry_i_8_O_UNCONNECTED(3),
      O(2 downto 0) => velocity3(11 downto 9),
      S(3) => '0',
      S(2) => velocity1_carry_i_11_n_0,
      S(1) => velocity1_carry_i_12_n_0,
      S(0) => velocity1_carry_i_13_n_0
    );
velocity1_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => velocity1_carry_i_10_n_0,
      CO(3) => velocity1_carry_i_9_n_0,
      CO(2) => velocity1_carry_i_9_n_1,
      CO(1) => velocity1_carry_i_9_n_2,
      CO(0) => velocity1_carry_i_9_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => velocity3(8 downto 5),
      S(3) => velocity1_carry_i_14_n_0,
      S(2) => velocity1_carry_i_15_n_0,
      S(1) => velocity1_carry_i_16_n_0,
      S(0) => velocity1_carry_i_17_n_0
    );
\velocity[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => velocity1,
      I1 => moving_sum(3),
      I2 => \^q\(0),
      I3 => \^moving_sum_reg[0]_0\(0),
      O => velocity(0)
    );
\velocity[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"020E0E02"
    )
        port map (
      I0 => moving_sum(4),
      I1 => \^q\(0),
      I2 => velocity1,
      I3 => \^moving_sum_reg[0]_0\(1),
      I4 => \^moving_sum_reg[0]_0\(0),
      O => velocity(1)
    );
\velocity[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000057FD000002A8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^moving_sum_reg[0]_0\(0),
      I2 => \^moving_sum_reg[0]_0\(1),
      I3 => \^moving_sum_reg[8]_0\(0),
      I4 => velocity1,
      I5 => moving_sum(5),
      O => velocity(2)
    );
\velocity[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004E004E004E00E4"
    )
        port map (
      I0 => \^q\(0),
      I1 => moving_sum(6),
      I2 => \^moving_sum_reg[8]_0\(1),
      I3 => velocity1,
      I4 => \^moving_sum_reg[0]_0\(0),
      I5 => velocity_3_sn_1,
      O => velocity(3)
    );
\velocity[3]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \velocity[3]_INST_0_i_1_n_0\,
      CO(2) => \velocity[3]_INST_0_i_1_n_1\,
      CO(1) => \velocity[3]_INST_0_i_1_n_2\,
      CO(0) => \velocity[3]_INST_0_i_1_n_3\,
      CYINIT => \velocity[3]_INST_0_i_3_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \^moving_sum_reg[0]_0\(1 downto 0),
      O(1 downto 0) => \NLW_velocity[3]_INST_0_i_1_O_UNCONNECTED\(1 downto 0),
      S(3) => \velocity[3]_INST_0_i_4_n_0\,
      S(2) => \velocity[3]_INST_0_i_5_n_0\,
      S(1) => \velocity[3]_INST_0_i_6_n_0\,
      S(0) => \velocity[3]_INST_0_i_7_n_0\
    );
\velocity[3]_INST_0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(0),
      O => \velocity[3]_INST_0_i_3_n_0\
    );
\velocity[3]_INST_0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(4),
      O => \velocity[3]_INST_0_i_4_n_0\
    );
\velocity[3]_INST_0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(3),
      O => \velocity[3]_INST_0_i_5_n_0\
    );
\velocity[3]_INST_0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(2),
      O => \velocity[3]_INST_0_i_6_n_0\
    );
\velocity[3]_INST_0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(1),
      O => \velocity[3]_INST_0_i_7_n_0\
    );
\velocity[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"030A0C0A"
    )
        port map (
      I0 => moving_sum(7),
      I1 => velocity_4_sn_1,
      I2 => velocity1,
      I3 => \^q\(0),
      I4 => \^moving_sum_reg[8]_0\(2),
      O => velocity(4)
    );
\velocity[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"030A0C0A"
    )
        port map (
      I0 => moving_sum(8),
      I1 => velocity_5_sn_1,
      I2 => velocity1,
      I3 => \^q\(0),
      I4 => \^moving_sum_reg[8]_0\(3),
      O => velocity(5)
    );
\velocity[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010103232323210"
    )
        port map (
      I0 => \^q\(0),
      I1 => velocity1,
      I2 => moving_sum(9),
      I3 => \^moving_sum_reg[8]_0\(3),
      I4 => velocity_5_sn_1,
      I5 => \^o\(0),
      O => velocity(6)
    );
\velocity[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFAAFFAAFFA8"
    )
        port map (
      I0 => \^q\(0),
      I1 => velocity_5_sn_1,
      I2 => \^o\(0),
      I3 => velocity1,
      I4 => velocity_7_sn_1,
      I5 => \^moving_sum_reg[8]_0\(3),
      O => velocity(7)
    );
\velocity[7]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(6),
      O => \velocity[7]_INST_0_i_10_n_0\
    );
\velocity[7]_INST_0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(5),
      O => \velocity[7]_INST_0_i_11_n_0\
    );
\velocity[7]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \velocity[7]_INST_0_i_4_n_0\,
      CO(3 downto 2) => \NLW_velocity[7]_INST_0_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \velocity[7]_INST_0_i_2_n_2\,
      CO(0) => \velocity[7]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_velocity[7]_INST_0_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => \^o\(2 downto 0),
      S(3) => '0',
      S(2) => \velocity[7]_INST_0_i_5_n_0\,
      S(1) => \velocity[7]_INST_0_i_6_n_0\,
      S(0) => \velocity[7]_INST_0_i_7_n_0\
    );
\velocity[7]_INST_0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \velocity[3]_INST_0_i_1_n_0\,
      CO(3) => \velocity[7]_INST_0_i_4_n_0\,
      CO(2) => \velocity[7]_INST_0_i_4_n_1\,
      CO(1) => \velocity[7]_INST_0_i_4_n_2\,
      CO(0) => \velocity[7]_INST_0_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^moving_sum_reg[8]_0\(3 downto 0),
      S(3) => \velocity[7]_INST_0_i_8_n_0\,
      S(2) => \velocity[7]_INST_0_i_9_n_0\,
      S(1) => \velocity[7]_INST_0_i_10_n_0\,
      S(0) => \velocity[7]_INST_0_i_11_n_0\
    );
\velocity[7]_INST_0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \velocity[7]_INST_0_i_5_n_0\
    );
\velocity[7]_INST_0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(10),
      O => \velocity[7]_INST_0_i_6_n_0\
    );
\velocity[7]_INST_0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(9),
      O => \velocity[7]_INST_0_i_7_n_0\
    );
\velocity[7]_INST_0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(8),
      O => \velocity[7]_INST_0_i_8_n_0\
    );
\velocity[7]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => moving_sum(7),
      O => \velocity[7]_INST_0_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tutorial_bd_system_struct_0_0_pulse_width_modulator is
  port (
    en : out STD_LOGIC;
    dir : out STD_LOGIC;
    mclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tutorial_bd_system_struct_0_0_pulse_width_modulator : entity is "pulse_width_modulator";
end tutorial_bd_system_struct_0_0_pulse_width_modulator;

architecture STRUCTURE of tutorial_bd_system_struct_0_0_pulse_width_modulator is
  signal en_i_1_n_0 : STD_LOGIC;
  signal \microsec_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \microsec_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \microsec_count[8]_i_2_n_0\ : STD_LOGIC;
  signal microsec_count_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal pwm : STD_LOGIC;
  signal \pwm0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm0_carry__0_n_3\ : STD_LOGIC;
  signal pwm0_carry_i_1_n_0 : STD_LOGIC;
  signal pwm0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm0_carry_i_4_n_0 : STD_LOGIC;
  signal pwm0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm0_carry_i_7_n_0 : STD_LOGIC;
  signal pwm0_carry_i_8_n_0 : STD_LOGIC;
  signal pwm0_carry_i_9_n_0 : STD_LOGIC;
  signal pwm0_carry_n_0 : STD_LOGIC;
  signal pwm0_carry_n_1 : STD_LOGIC;
  signal pwm0_carry_n_2 : STD_LOGIC;
  signal pwm0_carry_n_3 : STD_LOGIC;
  signal tick : STD_LOGIC;
  signal NLW_pwm0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \microsec_count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \microsec_count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \microsec_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \microsec_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \microsec_count[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \microsec_count[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \microsec_count[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \microsec_count[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \next_state[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of pwm0_carry_i_9 : label is "soft_lutpair1";
begin
TICK_0: entity work.tutorial_bd_system_struct_0_0_microsecond_tick
     port map (
      CLK => tick,
      mclk => mclk,
      reset => reset
    );
dir_reg: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \next_state[0]_i_1_n_0\,
      Q => dir
    );
en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666200000000"
    )
        port map (
      I0 => duty_cycle(7),
      I1 => next_state(0),
      I2 => duty_cycle(5),
      I3 => \next_state[1]_i_2_n_0\,
      I4 => duty_cycle(6),
      I5 => pwm,
      O => en_i_1_n_0
    );
en_reg: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => en_i_1_n_0,
      Q => en
    );
\microsec_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => microsec_count_reg(0),
      I1 => microsec_count_reg(8),
      O => \microsec_count[0]_i_1_n_0\
    );
\microsec_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => microsec_count_reg(0),
      I1 => microsec_count_reg(1),
      I2 => microsec_count_reg(8),
      O => p_0_in(1)
    );
\microsec_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => microsec_count_reg(0),
      I1 => microsec_count_reg(1),
      I2 => microsec_count_reg(2),
      I3 => microsec_count_reg(8),
      O => p_0_in(2)
    );
\microsec_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => microsec_count_reg(1),
      I1 => microsec_count_reg(0),
      I2 => microsec_count_reg(2),
      I3 => microsec_count_reg(3),
      I4 => microsec_count_reg(8),
      O => p_0_in(3)
    );
\microsec_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => microsec_count_reg(2),
      I1 => microsec_count_reg(0),
      I2 => microsec_count_reg(1),
      I3 => microsec_count_reg(3),
      I4 => microsec_count_reg(4),
      I5 => microsec_count_reg(8),
      O => p_0_in(4)
    );
\microsec_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \microsec_count[5]_i_2_n_0\,
      I1 => microsec_count_reg(5),
      I2 => microsec_count_reg(8),
      O => p_0_in(5)
    );
\microsec_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => microsec_count_reg(3),
      I1 => microsec_count_reg(1),
      I2 => microsec_count_reg(0),
      I3 => microsec_count_reg(2),
      I4 => microsec_count_reg(4),
      O => \microsec_count[5]_i_2_n_0\
    );
\microsec_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \microsec_count[8]_i_2_n_0\,
      I1 => microsec_count_reg(6),
      I2 => microsec_count_reg(8),
      O => p_0_in(6)
    );
\microsec_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B4"
    )
        port map (
      I0 => \microsec_count[8]_i_2_n_0\,
      I1 => microsec_count_reg(6),
      I2 => microsec_count_reg(7),
      I3 => microsec_count_reg(8),
      O => p_0_in(7)
    );
\microsec_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => microsec_count_reg(8),
      I1 => microsec_count_reg(7),
      I2 => microsec_count_reg(6),
      I3 => \microsec_count[8]_i_2_n_0\,
      O => p_0_in(8)
    );
\microsec_count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => microsec_count_reg(4),
      I1 => microsec_count_reg(2),
      I2 => microsec_count_reg(0),
      I3 => microsec_count_reg(1),
      I4 => microsec_count_reg(3),
      I5 => microsec_count_reg(5),
      O => \microsec_count[8]_i_2_n_0\
    );
\microsec_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      CLR => reset,
      D => \microsec_count[0]_i_1_n_0\,
      Q => microsec_count_reg(0)
    );
\microsec_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      CLR => reset,
      D => p_0_in(1),
      Q => microsec_count_reg(1)
    );
\microsec_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      CLR => reset,
      D => p_0_in(2),
      Q => microsec_count_reg(2)
    );
\microsec_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      CLR => reset,
      D => p_0_in(3),
      Q => microsec_count_reg(3)
    );
\microsec_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      CLR => reset,
      D => p_0_in(4),
      Q => microsec_count_reg(4)
    );
\microsec_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      CLR => reset,
      D => p_0_in(5),
      Q => microsec_count_reg(5)
    );
\microsec_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      CLR => reset,
      D => p_0_in(6),
      Q => microsec_count_reg(6)
    );
\microsec_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      CLR => reset,
      D => p_0_in(7),
      Q => microsec_count_reg(7)
    );
\microsec_count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => tick,
      CE => '1',
      CLR => reset,
      D => p_0_in(8),
      Q => microsec_count_reg(8)
    );
\next_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBBBBBB0"
    )
        port map (
      I0 => next_state(0),
      I1 => next_state(1),
      I2 => duty_cycle(6),
      I3 => \next_state[1]_i_2_n_0\,
      I4 => duty_cycle(5),
      I5 => duty_cycle(7),
      O => \next_state[0]_i_1_n_0\
    );
\next_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFFE00"
    )
        port map (
      I0 => duty_cycle(6),
      I1 => \next_state[1]_i_2_n_0\,
      I2 => duty_cycle(5),
      I3 => next_state(0),
      I4 => duty_cycle(7),
      O => \next_state[1]_i_1_n_0\
    );
\next_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => duty_cycle(3),
      I1 => duty_cycle(1),
      I2 => duty_cycle(0),
      I3 => duty_cycle(2),
      I4 => duty_cycle(4),
      O => \next_state[1]_i_2_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \next_state[0]_i_1_n_0\,
      Q => next_state(0)
    );
\next_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \next_state[1]_i_1_n_0\,
      Q => next_state(1)
    );
pwm0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm0_carry_n_0,
      CO(2) => pwm0_carry_n_1,
      CO(1) => pwm0_carry_n_2,
      CO(0) => pwm0_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm0_carry_i_1_n_0,
      DI(2) => pwm0_carry_i_2_n_0,
      DI(1) => pwm0_carry_i_3_n_0,
      DI(0) => pwm0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm0_carry_i_5_n_0,
      S(2) => pwm0_carry_i_6_n_0,
      S(1) => pwm0_carry_i_7_n_0,
      S(0) => pwm0_carry_i_8_n_0
    );
\pwm0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm0_carry_n_0,
      CO(3 downto 1) => \NLW_pwm0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \pwm0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pwm0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_pwm0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \pwm0_carry__0_i_2_n_0\
    );
\pwm0_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => duty_cycle(7),
      I1 => duty_cycle(5),
      I2 => \next_state[1]_i_2_n_0\,
      I3 => duty_cycle(6),
      I4 => microsec_count_reg(8),
      O => \pwm0_carry__0_i_1_n_0\
    );
\pwm0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002FFFD"
    )
        port map (
      I0 => duty_cycle(7),
      I1 => duty_cycle(5),
      I2 => \next_state[1]_i_2_n_0\,
      I3 => duty_cycle(6),
      I4 => microsec_count_reg(8),
      O => \pwm0_carry__0_i_2_n_0\
    );
pwm0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100414003D7C7DF0"
    )
        port map (
      I0 => microsec_count_reg(6),
      I1 => duty_cycle(7),
      I2 => duty_cycle(6),
      I3 => duty_cycle(5),
      I4 => \next_state[1]_i_2_n_0\,
      I5 => microsec_count_reg(7),
      O => pwm0_carry_i_1_n_0
    );
pwm0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100414003D7C7DF0"
    )
        port map (
      I0 => microsec_count_reg(4),
      I1 => duty_cycle(7),
      I2 => duty_cycle(4),
      I3 => duty_cycle(3),
      I4 => pwm0_carry_i_9_n_0,
      I5 => microsec_count_reg(5),
      O => pwm0_carry_i_2_n_0
    );
pwm0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100414003D7C7DF0"
    )
        port map (
      I0 => microsec_count_reg(2),
      I1 => duty_cycle(7),
      I2 => duty_cycle(2),
      I3 => duty_cycle(1),
      I4 => duty_cycle(0),
      I5 => microsec_count_reg(3),
      O => pwm0_carry_i_3_n_0
    );
pwm0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => duty_cycle(0),
      I1 => microsec_count_reg(1),
      O => pwm0_carry_i_4_n_0
    );
pwm0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5028285007808007"
    )
        port map (
      I0 => duty_cycle(7),
      I1 => \next_state[1]_i_2_n_0\,
      I2 => duty_cycle(5),
      I3 => duty_cycle(6),
      I4 => microsec_count_reg(7),
      I5 => microsec_count_reg(6),
      O => pwm0_carry_i_5_n_0
    );
pwm0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1248482184842121"
    )
        port map (
      I0 => microsec_count_reg(5),
      I1 => microsec_count_reg(4),
      I2 => duty_cycle(4),
      I3 => pwm0_carry_i_9_n_0,
      I4 => duty_cycle(3),
      I5 => duty_cycle(7),
      O => pwm0_carry_i_6_n_0
    );
pwm0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1248482184842121"
    )
        port map (
      I0 => microsec_count_reg(3),
      I1 => microsec_count_reg(2),
      I2 => duty_cycle(2),
      I3 => duty_cycle(0),
      I4 => duty_cycle(1),
      I5 => duty_cycle(7),
      O => pwm0_carry_i_7_n_0
    );
pwm0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => microsec_count_reg(0),
      I1 => microsec_count_reg(1),
      I2 => duty_cycle(0),
      O => pwm0_carry_i_8_n_0
    );
pwm0_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => duty_cycle(1),
      I1 => duty_cycle(0),
      I2 => duty_cycle(2),
      O => pwm0_carry_i_9_n_0
    );
pwm_reg: unisim.vcomponents.FDCE
     port map (
      C => mclk,
      CE => '1',
      CLR => reset,
      D => \pwm0_carry__0_n_3\,
      Q => pwm
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tutorial_bd_system_struct_0_0_q_struct is
  port (
    current_c_reg : out STD_LOGIC;
    abcdefg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \moving_sum_reg[8]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \moving_sum_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    velocity : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SB : in STD_LOGIC;
    mclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    SA : in STD_LOGIC;
    velocity_7_sp_1 : in STD_LOGIC;
    velocity_5_sp_1 : in STD_LOGIC;
    abcdefg_4_sp_1 : in STD_LOGIC;
    \abcdefg[4]_0\ : in STD_LOGIC;
    abcdefg_3_sp_1 : in STD_LOGIC;
    abcdefg_1_sp_1 : in STD_LOGIC;
    velocity_4_sp_1 : in STD_LOGIC;
    \abcdefg[1]_0\ : in STD_LOGIC;
    velocity_3_sp_1 : in STD_LOGIC;
    abcdefg_0_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tutorial_bd_system_struct_0_0_q_struct : entity is "q_struct";
end tutorial_bd_system_struct_0_0_q_struct;

architecture STRUCTURE of tutorial_bd_system_struct_0_0_q_struct is
  signal SA_sync : STD_LOGIC;
  signal SB_sync : STD_LOGIC;
  signal SEG_7_n_1 : STD_LOGIC;
  signal SEG_7_n_2 : STD_LOGIC;
  signal SEG_7_n_3 : STD_LOGIC;
  signal abcdefg_0_sn_1 : STD_LOGIC;
  signal abcdefg_1_sn_1 : STD_LOGIC;
  signal abcdefg_3_sn_1 : STD_LOGIC;
  signal abcdefg_4_sn_1 : STD_LOGIC;
  signal \^current_c_reg\ : STD_LOGIC;
  signal moving_sum : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \^moving_sum_reg[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pos_dec : STD_LOGIC;
  signal pos_inc : STD_LOGIC;
  signal velocity_3_sn_1 : STD_LOGIC;
  signal velocity_4_sn_1 : STD_LOGIC;
  signal velocity_5_sn_1 : STD_LOGIC;
  signal velocity_7_sn_1 : STD_LOGIC;
begin
  abcdefg_0_sn_1 <= abcdefg_0_sp_1;
  abcdefg_1_sn_1 <= abcdefg_1_sp_1;
  abcdefg_3_sn_1 <= abcdefg_3_sp_1;
  abcdefg_4_sn_1 <= abcdefg_4_sp_1;
  current_c_reg <= \^current_c_reg\;
  \moving_sum_reg[0]\(1 downto 0) <= \^moving_sum_reg[0]\(1 downto 0);
  velocity_3_sn_1 <= velocity_3_sp_1;
  velocity_4_sn_1 <= velocity_4_sp_1;
  velocity_5_sn_1 <= velocity_5_sp_1;
  velocity_7_sn_1 <= velocity_7_sp_1;
DECODER_O: entity work.tutorial_bd_system_struct_0_0_quadrature_decoder
     port map (
      SA_sync => SA_sync,
      SB_sync => SB_sync,
      mclk => mclk,
      pos_dec => pos_dec,
      pos_inc => pos_inc,
      reset => reset
    );
INPUT_SYNCHRONIZER: entity work.tutorial_bd_system_struct_0_0_input_synchronizer_ent
     port map (
      SA => SA,
      SA_sync => SA_sync,
      SB => SB,
      SB_sync => SB_sync,
      mclk => mclk,
      reset => reset
    );
SEG_7: entity work.tutorial_bd_system_struct_0_0_seg7ctrl
     port map (
      O(0) => \^moving_sum_reg[0]\(0),
      Q(0) => moving_sum(11),
      current_c_reg_0 => \^current_c_reg\,
      current_c_reg_1 => SEG_7_n_1,
      current_c_reg_2 => SEG_7_n_2,
      current_c_reg_3 => SEG_7_n_3,
      mclk => mclk,
      reset => reset
    );
VELOCITY_READER_0: entity work.tutorial_bd_system_struct_0_0_velocity_reader
     port map (
      O(2 downto 0) => O(2 downto 0),
      Q(0) => moving_sum(11),
      abcdefg(6 downto 0) => abcdefg(6 downto 0),
      \abcdefg[1]_0\ => abcdefg_1_sn_1,
      \abcdefg[1]_1\ => \abcdefg[1]_0\,
      \abcdefg[4]_0\ => SEG_7_n_3,
      \abcdefg[4]_1\ => \abcdefg[4]_0\,
      \abcdefg[4]_2\ => SEG_7_n_2,
      abcdefg_0_sp_1 => abcdefg_0_sn_1,
      abcdefg_1_sp_1 => SEG_7_n_1,
      abcdefg_2_sp_1 => \^current_c_reg\,
      abcdefg_3_sp_1 => abcdefg_3_sn_1,
      abcdefg_4_sp_1 => abcdefg_4_sn_1,
      mclk => mclk,
      \moving_sum_reg[0]_0\(1 downto 0) => \^moving_sum_reg[0]\(1 downto 0),
      \moving_sum_reg[8]_0\(3 downto 0) => \moving_sum_reg[8]\(3 downto 0),
      pos_dec => pos_dec,
      pos_inc => pos_inc,
      reset => reset,
      velocity(7 downto 0) => velocity(7 downto 0),
      velocity_3_sp_1 => velocity_3_sn_1,
      velocity_4_sp_1 => velocity_4_sn_1,
      velocity_5_sp_1 => velocity_5_sn_1,
      velocity_7_sp_1 => velocity_7_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tutorial_bd_system_struct_0_0_system_struct is
  port (
    EN_sync : out STD_LOGIC;
    DIR_sync : out STD_LOGIC;
    current_c_reg : out STD_LOGIC;
    abcdefg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ARG3 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    velocity : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SB : in STD_LOGIC;
    mclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    SA : in STD_LOGIC;
    velocity_7_sp_1 : in STD_LOGIC;
    velocity_5_sp_1 : in STD_LOGIC;
    abcdefg_4_sp_1 : in STD_LOGIC;
    \abcdefg[4]_0\ : in STD_LOGIC;
    abcdefg_3_sp_1 : in STD_LOGIC;
    abcdefg_1_sp_1 : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    velocity_4_sp_1 : in STD_LOGIC;
    \abcdefg[1]_0\ : in STD_LOGIC;
    velocity_3_sp_1 : in STD_LOGIC;
    abcdefg_0_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tutorial_bd_system_struct_0_0_system_struct : entity is "system_struct";
end tutorial_bd_system_struct_0_0_system_struct;

architecture STRUCTURE of tutorial_bd_system_struct_0_0_system_struct is
  signal abcdefg_0_sn_1 : STD_LOGIC;
  signal abcdefg_1_sn_1 : STD_LOGIC;
  signal abcdefg_3_sn_1 : STD_LOGIC;
  signal abcdefg_4_sn_1 : STD_LOGIC;
  signal dir : STD_LOGIC;
  signal en : STD_LOGIC;
  signal velocity_3_sn_1 : STD_LOGIC;
  signal velocity_4_sn_1 : STD_LOGIC;
  signal velocity_5_sn_1 : STD_LOGIC;
  signal velocity_7_sn_1 : STD_LOGIC;
begin
  abcdefg_0_sn_1 <= abcdefg_0_sp_1;
  abcdefg_1_sn_1 <= abcdefg_1_sp_1;
  abcdefg_3_sn_1 <= abcdefg_3_sp_1;
  abcdefg_4_sn_1 <= abcdefg_4_sp_1;
  velocity_3_sn_1 <= velocity_3_sp_1;
  velocity_4_sn_1 <= velocity_4_sp_1;
  velocity_5_sn_1 <= velocity_5_sp_1;
  velocity_7_sn_1 <= velocity_7_sp_1;
output_sync_0: entity work.tutorial_bd_system_struct_0_0_output_synchronizer_ent
     port map (
      DIR_sync => DIR_sync,
      EN_sync => EN_sync,
      dir => dir,
      en => en,
      mclk => mclk,
      reset => reset
    );
pwm_0: entity work.tutorial_bd_system_struct_0_0_pulse_width_modulator
     port map (
      dir => dir,
      duty_cycle(7 downto 0) => duty_cycle(7 downto 0),
      en => en,
      mclk => mclk,
      reset => reset
    );
q_struct_0: entity work.tutorial_bd_system_struct_0_0_q_struct
     port map (
      O(2 downto 0) => ARG3(8 downto 6),
      SA => SA,
      SB => SB,
      abcdefg(6 downto 0) => abcdefg(6 downto 0),
      \abcdefg[1]_0\ => \abcdefg[1]_0\,
      \abcdefg[4]_0\ => \abcdefg[4]_0\,
      abcdefg_0_sp_1 => abcdefg_0_sn_1,
      abcdefg_1_sp_1 => abcdefg_1_sn_1,
      abcdefg_3_sp_1 => abcdefg_3_sn_1,
      abcdefg_4_sp_1 => abcdefg_4_sn_1,
      current_c_reg => current_c_reg,
      mclk => mclk,
      \moving_sum_reg[0]\(1 downto 0) => ARG3(1 downto 0),
      \moving_sum_reg[8]\(3 downto 0) => ARG3(5 downto 2),
      reset => reset,
      velocity(7 downto 0) => velocity(7 downto 0),
      velocity_3_sp_1 => velocity_3_sn_1,
      velocity_4_sp_1 => velocity_4_sn_1,
      velocity_5_sp_1 => velocity_5_sn_1,
      velocity_7_sp_1 => velocity_7_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tutorial_bd_system_struct_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tutorial_bd_system_struct_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tutorial_bd_system_struct_0_0 : entity is "tutorial_bd_system_struct_0_0,system_struct,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of tutorial_bd_system_struct_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of tutorial_bd_system_struct_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of tutorial_bd_system_struct_0_0 : entity is "system_struct,Vivado 2020.2";
end tutorial_bd_system_struct_0_0;

architecture STRUCTURE of tutorial_bd_system_struct_0_0 is
  signal ARG3 : STD_LOGIC_VECTOR ( 11 downto 3 );
  signal \abcdefg[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \abcdefg[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \abcdefg[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \abcdefg[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \abcdefg[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \abcdefg[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \velocity[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \velocity[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \velocity[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \abcdefg[1]_INST_0_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \abcdefg[1]_INST_0_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \abcdefg[3]_INST_0_i_9\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \abcdefg[4]_INST_0_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \abcdefg[5]_INST_0_i_9\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \velocity[3]_INST_0_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \velocity[4]_INST_0_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \velocity[7]_INST_0_i_1\ : label is "soft_lutpair28";
  attribute x_interface_info : string;
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.tutorial_bd_system_struct_0_0_system_struct
     port map (
      ARG3(8 downto 0) => ARG3(11 downto 3),
      DIR_sync => DIR_sync,
      EN_sync => EN_sync,
      SA => SA,
      SB => SB,
      abcdefg(6 downto 0) => abcdefg(6 downto 0),
      \abcdefg[1]_0\ => \abcdefg[1]_INST_0_i_6_n_0\,
      \abcdefg[4]_0\ => \abcdefg[5]_INST_0_i_9_n_0\,
      abcdefg_0_sp_1 => \abcdefg[0]_INST_0_i_7_n_0\,
      abcdefg_1_sp_1 => \abcdefg[1]_INST_0_i_5_n_0\,
      abcdefg_3_sp_1 => \abcdefg[3]_INST_0_i_9_n_0\,
      abcdefg_4_sp_1 => \abcdefg[4]_INST_0_i_2_n_0\,
      current_c_reg => c,
      duty_cycle(7 downto 0) => duty_cycle(7 downto 0),
      mclk => mclk,
      reset => reset,
      velocity(7 downto 0) => velocity(7 downto 0),
      velocity_3_sp_1 => \velocity[3]_INST_0_i_2_n_0\,
      velocity_4_sp_1 => \velocity[4]_INST_0_i_1_n_0\,
      velocity_5_sp_1 => \velocity[7]_INST_0_i_1_n_0\,
      velocity_7_sp_1 => \velocity[7]_INST_0_i_3_n_0\
    );
\abcdefg[0]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ARG3(5),
      I1 => ARG3(4),
      O => \abcdefg[0]_INST_0_i_7_n_0\
    );
\abcdefg[1]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ARG3(4),
      I1 => ARG3(5),
      O => \abcdefg[1]_INST_0_i_5_n_0\
    );
\abcdefg[1]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ARG3(8),
      I1 => ARG3(9),
      O => \abcdefg[1]_INST_0_i_6_n_0\
    );
\abcdefg[3]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ARG3(3),
      I1 => ARG3(6),
      O => \abcdefg[3]_INST_0_i_9_n_0\
    );
\abcdefg[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ARG3(9),
      I1 => ARG3(8),
      O => \abcdefg[4]_INST_0_i_2_n_0\
    );
\abcdefg[5]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ARG3(3),
      I1 => ARG3(6),
      O => \abcdefg[5]_INST_0_i_9_n_0\
    );
\velocity[3]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ARG3(4),
      I1 => ARG3(5),
      O => \velocity[3]_INST_0_i_2_n_0\
    );
\velocity[4]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ARG3(6),
      I1 => ARG3(3),
      I2 => ARG3(5),
      I3 => ARG3(4),
      O => \velocity[4]_INST_0_i_1_n_0\
    );
\velocity[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ARG3(4),
      I1 => ARG3(5),
      I2 => ARG3(3),
      I3 => ARG3(6),
      I4 => ARG3(7),
      O => \velocity[7]_INST_0_i_1_n_0\
    );
\velocity[7]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ARG3(10),
      I1 => ARG3(11),
      O => \velocity[7]_INST_0_i_3_n_0\
    );
end STRUCTURE;
