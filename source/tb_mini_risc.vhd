-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- Testbench para o mini_risc
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Este arquivo irá gerar um sinal de clock e reset de modo a possibilitar a simulação do DUT mini_risc

entity tb_mini_risc is
end tb_mini_risc;

architecture estimulos of tb_mini_risc is
	-- Declarar a unidade sob teste
	component mini_risc
		port (
			clk   : in std_logic;
			reset : in std_logic
		);
	end component;

	signal clk : std_logic;
	signal rst : std_logic;

	-- Definição das configurações de clock				
	constant PERIODO    : time := 20 ns;
	constant DUTY_CYCLE : real := 0.5;
	constant OFFSET     : time := 5 ns;
begin
	-- instancia o componente 
	instancia : mini_risc port map(clk => clk, reset => rst);
	-- processo para gerar o sinal de clock 		
	gera_clock : process
	begin
        wait for OFFSET;
		CLOCK_LOOP : loop
			clk <= '0';
			wait for (PERIODO - (PERIODO * DUTY_CYCLE));
			clk <= '1';
			wait for (PERIODO * DUTY_CYCLE);
		end loop CLOCK_LOOP;
	end process gera_clock;
	-- processo para gerar o estimulo de reset		
	gera_reset : process
	begin
		rst <= '0';
		for i in 1 to 2 loop
			wait until rising_edge(clk);
		end loop;
		rst <= '0';
		wait;
	end process gera_reset;
end;