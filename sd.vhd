-- Module: SD or Multiplication by Successive Additions - SAM

-- Autor: João da Cruz de Nativiade e Silva Neto
-- Date: Sun Aug 25 21:02:22 2024

-- Curso: Engenharia de Computação
-- Disciplina: Projetos de Hardware e Interfaceamento

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

entity sd is
    port (
        Reset: in std_logic;
        ck: in std_logic;
        entA: in unsigned(3 downto 0);
        entB: in unsigned(3 downto 0);
        mult: out unsigned(3 downto 0);
        pronto: out std_logic
    );
end entity sd;


architecture MyHDL of sd is


type t_enum_states_1 is (
	IDLE,
	LOAD,
	CHECK_B,
	ADD,
	SUB,
	DONE
	);

signal A: unsigned(3 downto 0);
signal B: unsigned(3 downto 0);
signal P: unsigned(3 downto 0);
signal state: t_enum_states_1;
signal temp: unsigned(3 downto 0);

begin




SD_FSM: process (ck, Reset) is
begin
    if (Reset = '1') then
        A <= to_unsigned(0, 4);
        temp <= to_unsigned(0, 4);
        P <= to_unsigned(0, 4);
        pronto <= '0';
        mult <= to_unsigned(0, 4);
        B <= to_unsigned(0, 4);
        state <= IDLE;
    elsif rising_edge(ck) then
        case state is
            when IDLE =>
                pronto <= '0';
                if (Reset = '0') then
                    state <= LOAD;
                end if;
            when LOAD =>
                A <= entA;
                B <= entB;
                P <= to_unsigned(0, 4);
                state <= CHECK_B;
            when CHECK_B =>
                if (B /= 0) then
                    state <= ADD;
                else
                    state <= DONE;
                end if;
            when ADD =>
                temp <= (P + B);
                if (A = 0) then
                    state <= DONE;
                else
                    state <= SUB;
                end if;
            when SUB =>
                P <= temp;
                A <= (A - 1);
                if (A = 0) then
                    state <= DONE;
                else
                    state <= ADD;
                end if;
            when others => -- DONE
                mult <= P;
                pronto <= '1';
                state <= IDLE;
        end case;
    end if;
end process SD_FSM;

end architecture MyHDL;
