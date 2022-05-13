library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity tb_quadrature_struct is

end entity tb_quadrature_struct;

architecture tb_beh of tb_quadrature_struct is
    component q_struct is
        port(
            mclk               : in std_logic; --100MHz, positive flank                              
            reset              : in std_logic;                   
            SA                 : in std_logic;
            SB                 : in std_logic;
            abcdefg            : out std_logic_vector(6 downto 0);
            c                  : out std_logic
        );
    end component q_struct;

    signal mclk, reset        :   std_logic := '0';
    signal SA                 :   std_logic := '0';
    signal SB                 :   std_logic := '0';
    signal c                  :   std_logic;
    signal abcdefg            :   std_logic_vector(6 downto 0);
    constant HALF_PERIOD      :   time := 5 ns;

begin
   reset <= '1', '0' after 5 ns;
   mclk <= not mclk after HALF_PERIOD;
   SA <= '0' after 100 ns, '1' after 150 ns;
   SB <= '1' after 100 ns, '0' after 200 ns;

   quad : q_struct port map(
            mclk    => mclk,
            reset   => reset,
            SA      => SA,
            SB      => SB,
            abcdefg => abcdefg,
            c => c 
            );
end architecture tb_beh;
