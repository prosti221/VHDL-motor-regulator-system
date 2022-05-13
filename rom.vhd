library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;
use STD.textio.all;

entity ROM is
    port(
        adr          :in     unsigned(4 downto 0); 
        data         :out    std_logic_vector(7 downto 0)
    );
end entity ROM;

architecture ROM_beh of ROM is
CONSTANT filename : string := "ROM.txt";
type mem is array(19 downto 0) of std_logic_vector(7 downto 0);

impure function init_ROM(file_name: string)
    return mem is 
    file init_file        : text open read_mode is file_name;
    variable current_line : line;
    variable res          : mem;
begin
    for i in res'range loop
        readline(init_file, current_line);
        read(current_line, res(i));
    end loop;
    return res;
end function init_ROM;

constant ROM_DATA : mem := init_ROM(filename);
begin
    data <= ROM_DATA(to_integer(adr));
end architecture ROM_beh;
