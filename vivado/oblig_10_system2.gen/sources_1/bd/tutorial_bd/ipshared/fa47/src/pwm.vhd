library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity pulse_width_modulator is
    port(
        mclk       : in std_logic;
        reset      : in std_logic;
        duty_cycle : in std_logic_vector(7 downto 0);
        dir        : out std_logic;
        en         : out std_logic
        );
end entity pulse_width_modulator;

architecture pulse_width_modulator_beh of pulse_width_modulator is
    component microsecond_tick is
        port(
            mclk, reset : in std_logic;
            tick        : out std_logic
        );
    end component microsecond_tick;

    signal tick           : std_logic;
    signal microsec_count : unsigned(8 downto 0) := (others => '0');
    signal pwm            : std_logic;
    --4 states: reverse idle = 00, forward idle = 01, reverse = 10, forward = 11
    signal current_state  : std_logic_vector(1 downto 0) := "00"; --Defaults to reverse idle
    signal next_state     : std_logic_vector(1 downto 0);
    constant EN_PERIOD    : unsigned := to_unsigned(256, 9); 

begin
    TICK_0 : microsecond_tick 
    port map(
            mclk  => mclk,
            reset => reset,
            tick  => tick
    );

    COUNT_MICROSECONDS:
    process(mclk, reset, tick)
    begin
        if reset then
            microsec_count <= (others => '0');
        elsif rising_edge(tick) then
            microsec_count <= microsec_count + 1 when (microsec_count < EN_PERIOD) else (others => '0');
        end if;
    end process COUNT_MICROSECONDS;

   PULSE:
   process(mclk, reset, microsec_count)
   begin
       if reset then
           pwm <= '0';
       elsif rising_edge(mclk) then
           pwm <= '1' when (microsec_count < unsigned(abs(signed(duty_cycle) * 2))) else '0';
       end if;
   end process PULSE;

   FSM:
   process(mclk, reset, duty_cycle, current_state, next_state)
   begin
       if reset then
           next_state <= "00";
           en <= '0';
           dir <= '0';
       elsif rising_edge(mclk) then
           if signed(duty_cycle) < 0 then
               case current_state is
                   when "00" => 
                       next_state <= "10";
                       en <= pwm;
                       dir <= '0';
                   when "01" =>
                       next_state <= "00";
                       en <= '0';
                       dir <= '0';
                   when "10" =>
                       next_state <= "10";
                       en <= pwm;
                       dir <= '0';
                   when "11" =>
                       next_state <= "01";
                       en <= '0';
                       dir <= '1';
                   when others => 
                       next_state <= "00";
                       en <= '0';
                       dir <= '0';
               end case;
           elsif signed(duty_cycle) > 0 then
               case current_state is
                   when "00" => 
                       next_state <= "01";
                       en <= '0';
                       dir <= '1';
                   when "01" =>
                       next_state <= "11";
                       en <= pwm;
                       dir <= '1';
                   when "10" =>
                       next_state <= "00";
                       en <= '0';
                       dir <= '0';
                   when "11" =>
                       next_state <= "11";
                       en <= pwm;
                       dir <= '1';
                   when others => 
                       next_state <= "00";
                       en <= '0';
                       dir <= '0';
               end case;
           else --if duty cycle is zero
               en <= '0';
               dir <= '0';
               next_state <= "00";
           end if;
        end if;
        current_state <= next_state;
    end process FSM;
end architecture pulse_width_modulator_beh; 
