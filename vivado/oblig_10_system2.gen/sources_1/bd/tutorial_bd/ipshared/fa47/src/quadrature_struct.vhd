library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity q_struct is
    port(
        mclk     : in std_logic;
        reset    : in std_logic;
        SA       : in std_logic;
        SB       : in std_logic;
        abcdefg  : out std_logic_vector(6 downto 0);
        velocity : out signed(7 downto 0);
        c        : out std_logic
    );
end entity q_struct;

architecture netlist of q_struct is
    signal pos_inc, pos_dec : std_logic;
    signal velocity_abs     : std_logic_vector(7 downto 0);
    signal SA_sync, SB_sync : std_logic;

    component quadrature_decoder is
        port(
            mclk               : in std_logic; --100MHz, positive flank                              
            reset              : in std_logic;
            SA, SB             : in std_logic;
            pos_inc, pos_dec   : out std_logic
        );
    end component quadrature_decoder;

    component input_synchronizer_ent is
        port(
            mclk               : in std_logic; --100MHz, positive flank                              
            reset              : in std_logic; 
            SA, SB             : in std_logic;
            SA_sync, SB_sync   : out std_logic
            
        );
    end component input_synchronizer_ent;

    component seg7ctrl is
        port
        (
            mclk    : in std_logic; --100MHz, positive flank
            reset   : in std_logic;
            d0      : in std_logic_vector(3 downto 0);
            d1      : in std_logic_vector(3 downto 0);
            abcdefg : out std_logic_vector(6 downto 0);
            c       : out std_logic
        );
    end component seg7ctrl;

    component velocity_reader is
      generic(
        RCOUNT_WIDTH : natural := 20;
        TEN_MS_COUNT : natural := 1_000_000
      );
      port(
        mclk      : in std_logic; 
        reset     : in std_logic; 
        pos_inc   : in std_logic;
        pos_dec   : in std_logic;
        velocity  : out signed(7 downto 0) 
      );
    end component velocity_reader;

begin
   DECODER_O : quadrature_decoder 
   port map(
            mclk    => mclk,
            reset   => reset,
            SA      => SA_sync,
            SB      => SB_sync,
            pos_inc => pos_inc,
            pos_dec => pos_dec
            );

   INPUT_SYNCHRONIZER : input_synchronizer_ent 
   port map(
            mclk    => mclk,
            reset   => reset,
            SA      => SA,
            SB      => SB,
            SA_sync => SA_sync,
            SB_sync => SB_sync 
            );

   SEG_7 : seg7ctrl 
   port map(
            mclk    => mclk,
            reset   => reset,
            d1      => velocity_abs(7 downto 4),
            d0      => velocity_abs(3 downto 0),
            abcdefg => abcdefg,
            c       => c 
            );

   VELOCITY_READER_0 : velocity_reader
   port map(
            mclk     => mclk,
            reset    => reset,
            pos_inc  => pos_inc,
            pos_dec  => pos_dec,
            velocity => velocity
            );
   velocity_abs <= std_logic_vector(unsigned(abs(velocity)));
end architecture netlist;
