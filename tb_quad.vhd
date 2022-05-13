library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

--I run this for 17 seconds and check that it does the right think in the waveform
entity tb_quad is

end entity tb_quad;

architecture behavioural of tb_quad is
    component quadrature_decoder is
        port(
            mclk               : in std_logic; --100MHz, positive flank                              
            reset              : in std_logic; --Asynchronous reset, active high                    
            SA, SB             : in std_logic;
            pos_inc, pos_dec   : out std_logic
            
        );
    end component quadrature_decoder;

    signal mclk, reset        :   std_logic := '0';
    signal SA                 :   std_logic := '0';
    signal SB                 :   std_logic := '0';
    signal pos_inc, pos_dec   :   std_logic;
    constant HALF_PERIOD      :   time := 5 ns;

begin
   reset <= '1' after 240 ns, '0' after 251 ns;
   mclk <= not mclk after HALF_PERIOD;
   SA <= '0' after 100 ns, '1' after 150 ns;
   SB <= '1' after 100 ns, '0' after 200 ns;

   PWM_O : quadrature_decoder 
   port map(
            mclk    => mclk,
            reset   => reset,
            SA      => SA,
            SB      => SB,
            pos_inc => pos_inc,
            pos_dec => pos_dec
            );
end architecture behavioural;
