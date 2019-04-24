Library ieee;
 Use ieee.std_logic_1164.all;
 Use ieee.std_logic_signed.all;

Entity multiplexer is 
    generic ( n: integer := 8);
    port ( input1: in std_logic_vector(n-1 downto 0);
    input2: in std_logic_vector(n-1 downto 0);
    selection: in std_logic;
    exi: out std_logic_vector(n-1 downto 0));
end entity;

Architecture behavior of multiplexer is 
begin 
    exi <= input1 when selection = '0' else input2;
end architecture;
