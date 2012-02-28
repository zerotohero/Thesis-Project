--
-- VHDL Entity SAYEH_lib.Fetch_Control.arch_name
--
-- Created:
--          by - Christopher.UNKNOWN (CJ)
--          at - 06:32:53 02/16/2012
--
-- using Mentor Graphics HDL Designer(TM) 2010.2a (Build 7)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Fetch_Control IS
  PORT (reset, stall, mdelay, jump, clock : IN std_logic;
    pcm : OUT std_logic_vector(1 DOWNTO 0);
    pcvm, im : OUT std_logic);
END ENTITY Fetch_Control;

ARCHITECTURE StateMachine OF Fetch_Control IS
  TYPE state IS (Sreset, Srun);
  SIGNAL current_state, next_state : state;
  BEGIN
  PROCESS (clock)   --state transition
    BEGIN
      IF rising_edge(clock) THEN
        current_state <= next_state;
      END IF;
    END PROCESS;
    
  PROCESS (stall, mdelay, reset, current_state)  --next state
    BEGIN
      CASE current_state IS
      WHEN Sreset =>
        IF ((reset = '1') OR (mdelay = '1')) THEN
          next_state <= Sreset;
        ELSE
          next_state <= Srun;
        END IF;
        
      WHEN Srun =>
        IF (reset = '1') THEN
          next_state <= Sreset;
        ELSE
          next_state <= Srun;
        END IF;
      END CASE;
    END PROCESS;
    
    PROCESS (stall, mdelay, jump, current_state)  --output process
      BEGIN
        IF (jump = '1') THEN
          pcvm <= '1';
        ELSE
          pcvm <= '0';
        END IF;
        
        CASE current_state IS
        WHEN Sreset =>
          pcm <= "11";
          im <= '0';
          
        WHEN Srun =>
          IF ((stall = '1') or (mdelay = '1')) THEN
            pcm <= "01";
          ELSIF (jump = '1') THEN
            pcm <= "10";
          ELSE
            pcm <= "00";
          END IF;
          
          IF ((stall = '1') or (mdelay = '1')) THEN
            im <= '0';
          ELSE
            im <= '1';
          END IF;
        END CASE;
      END PROCESS;
    END ARCHITECTURE StateMachine;