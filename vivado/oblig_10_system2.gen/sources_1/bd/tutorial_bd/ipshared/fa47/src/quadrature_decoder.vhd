library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity quadrature_decoder is
    port(
        mclk    : in std_logic;
        reset   : in std_logic;
        SA      : in std_logic;
        SB      : in std_logic;
        pos_inc : out std_logic;
        pos_dec : out std_logic
    );
end entity quadrature_decoder;

architecture quadrature_decoder_beh of quadrature_decoder is
    --currnet_state: 000 = s_0, 001 = s_1, 010 = s_2, 011 = s_3, 100 = s_init, 101 = s_reset
    signal current_state : std_logic_vector(2 downto 0);
    signal next_state    : std_logic_vector(2 downto 0) := "100";
    signal err           : std_logic := '0'; 

begin

    FSM:
    process(mclk, reset, current_state, next_state)
    begin
        if (reset = '1') OR (current_state = "101") then
            next_state <= "100";
            pos_inc <= '0'; 
            pos_dec <= '0'; 
            err <= '0';
        elsif rising_edge(mclk) then
            pos_inc <= '0';
            pos_dec <= '0';
            err <= '0';
            if (SA = '0') AND (SB = '0') then
                case current_state is 
                    when "100" =>
                        next_state <= "000";
                    when "001" =>
                        pos_dec <= '1';
                        next_state <= "000";
                    when "010" =>
                        err <= '1';
                        next_state <= "101";
                    when "011" =>
                        pos_inc <= '1';
                        next_state <= "000";
                    when others =>
                        next_state <= current_state;
                end case;
            elsif (SA = '0') AND (SB = '1') then
                case current_state is 
                    when "100" =>
                        next_state <= "001";
                    when "000" =>
                        pos_inc <= '1';
                        next_state <= "001";
                    when "010" =>
                        pos_dec <= '1';
                        next_state <= "001";
                    when "011" =>
                        err <= '1';
                        next_state <= "101";
                    when others =>
                        next_state <= current_state;
                end case;
            elsif (SA = '1') AND (SB = '1') then
                case current_state is 
                    when "100" =>
                        next_state <= "010";
                    when "000" =>
                        err <= '1';
                        next_state <= "101";
                    when "001" =>
                        pos_inc <= '1';
                        next_state <= "010";
                    when "011" =>
                        pos_dec <= '1';
                        next_state <= "010";
                    when others =>
                        next_state <= current_state;
                end case;
            elsif (SA = '1') AND (SB = '0') then
                case current_state is 
                    when "100" =>
                        next_state <= "011";
                    when "000" =>
                        pos_dec <= '1';
                        next_state <= "011";
                    when "001" =>
                        err <= '1';
                        next_state <= "101";
                    when "010" =>
                        pos_inc <= '1';
                        next_state <= "011";
                    when others =>
                        next_state <= current_state;
                end case;
            end if;
        end if;
        current_state <= next_state;
    end process FSM;
end architecture quadrature_decoder_beh;
