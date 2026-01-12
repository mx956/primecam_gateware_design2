library ieee; 
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    use ieee.std_logic_unsigned.all;


entity timestamp is 
    generic ( N     : integer := 32;
              PKTS  : integer := 15 );
    port(
        clk              : in  std_logic; 
        arst_n           : in  std_logic;
        pps,sync         : in  std_logic;
        GPIO             : in  std_logic_vector(15 downto 0); -- DUMMY SIGNAL TO BE CONCATED IN INTERNAL PROC.
        PMOD0,PMOD1,PMOD2,PMOD3,PMOD4,PMOD5,PMOD6, PMOD7 : in STD_LOGIC;
        pps_countval     : out std_logic_vector(N-1 downto 0); -- 1 Hz
        free_countval    : out std_logic_vector(N-1 downto 0); -- 256 MHz
        sync_countval    : out std_logic_vector(N-1 downto 0); -- 488 Hz
        timing_data      : out std_logic_vector((PKTS*8)-1 downto 0) -- 488 Hz
    );
end entity;


architecture behaviour of timestamp is 
    signal fcount,pcount,scount : std_logic_vector(N-1 downto 0);
    signal pps_prev,sync_prev   : std_logic;
    signal PMODS                : std_logic_vector(7 downto 0);
    signal syncedge_prev        : std_logic;
begin

    timing_data   <= fcount & scount & pcount & GPIO & PMODS;
    free_countval <= fcount;
    sync_countval <= scount;
    pps_countval  <= pcount;
    
    process(clk,sync,pps) begin 
        if rising_edge(clk) then 
            pps_prev<=pps;
            sync_prev<=sync;
        end if;
    end process;

    freecount : process(arst_n,clk,fcount) begin 
        if arst_n='0' then 
            fcount<=(others=>'0');
        elsif rising_edge(clk) then
            fcount<=fcount+1;
        end if;
    end process;

    pps_count : process(arst_n,clk,pcount) begin 
    if arst_n='0' then 
        pcount<=(others=>'0');
    elsif rising_edge(clk) then
        if pps='1' and pps_prev='0' then
            pcount<=pcount+1;
        end if;
    end if;
    end process;

--    sync_count : process(arst_n,clk,sync,scount, PMOD0, PMOD1, PMOD2, PMOD3, PMOD4, PMOD5, PMOD6, PMOD7)
    sync_count : process(arst_n,clk,sync, sync_prev)
--    variable syncedge_prev : std_logic;
    variable PMODS_reg     : std_logic_vector(7 downto 0);
    begin 
    if arst_n='0' then 
        scount<=(others=>'0');
    elsif rising_edge(clk) then
        
        if    PMOD0='1' then 
                PMODS_reg(7) := '1';
        elsif PMOD1='1' then
                PMODS_reg(6) := '1';
        elsif PMOD2='1' then
                PMODS_reg(5) := '1';
        elsif PMOD3='1' then
                PMODS_reg(4) := '1';
        elsif PMOD4='1' then
                PMODS_reg(3) := '1';
        elsif PMOD5='1' then
                PMODS_reg(2) := '1';
        elsif PMOD6='1' then
                PMODS_reg(1) := '1';
        elsif PMOD7='1' then
                PMODS_reg(0) := '1';
        end if;
        
        if sync='1' and sync_prev='0' then
            scount    <= scount+1;
            PMODS     <= PMODS_reg;
        elsif sync='0' and sync_prev='1' then
            PMODS_reg :=(others=>'0');
        end if;
    end if;
    end process;
end architecture;