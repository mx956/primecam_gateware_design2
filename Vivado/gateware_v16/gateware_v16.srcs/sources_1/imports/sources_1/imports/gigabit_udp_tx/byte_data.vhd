----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
-- 
-- Description: Data for sending an empty UDP packet out over the MII interface.
--              "user_data" is asserted where you should replace 'byte' with 
--              data that you wish to send.

-- Matt edit: added 8192 bytes of data_0 to be transmitted
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity byte_data is
    Port ( clk         : in  STD_LOGIC;
           start       : in  STD_LOGIC;
           advance     : in  STD_LOGIC;
           busy        : out STD_LOGIC := '0';
           
           -- Ethernet UDP SOURCE & DEST.    
           -- Ethernet frame header 
            eth_src_mac       : in std_logic_vector(47 downto 0) := x"DEADBEEF0123";
            eth_dst_mac       : in std_logic_vector(47 downto 0) := x"FFFFFFFFFFFF";

            ip_src_addr       : in std_logic_vector(31 downto 0) := x"C0_A4_01_40"; -- 192.168.1.64
            ip_dst_addr       : in std_logic_vector(31 downto 0) := x"FF_FF_FF_FF"; -- 255.255.255.255
           --- END OF Ethernet UDP SOURCE & DEST. 

           data        : out STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
           data_user   : out STD_LOGIC                     := '0';               
           data_valid  : out STD_LOGIC                     := '0';
           data_enable : out STD_LOGIC                     := '0';
           -- user ports
    	   timing_data    : in STD_LOGIC_VECTOR (96-1 downto 0); -- PTP 94 bits
           packet_info    : in STD_LOGIC_VECTOR (32-1 downto 0); -- 32 bit info
           packet_count   : in STD_LOGIC_VECTOR (32-1 downto 0); -- 32 bit packet count
           data_0      : in STD_LOGIC_VECTOR (7 downto 0)
           );
end byte_data;

architecture Behavioral of byte_data is
    constant ip_header_bytes   : integer := 20;
    constant udp_header_bytes  : integer := 8;
    constant data_bytes        : integer := 8192+20;
    constant ip_total_bytes    : integer := ip_header_bytes + udp_header_bytes + data_bytes;
    constant udp_total_bytes   : integer := udp_header_bytes + data_bytes;
    signal start_internal      : std_logic := '0';
    signal counter : unsigned(13 downto 0) := (others => '0');
    
    
    -- Ethernet frame header 
    --signal eth_src_mac       : std_logic_vector(47 downto 0) := x"DEADBEEF0123";
    --signal eth_dst_mac       : std_logic_vector(47 downto 0) := x"FFFFFFFFFFFF";
    signal eth_type          : std_logic_vector(15 downto 0) := x"0800";

    -- IP header
    signal ip_version        : std_logic_vector( 3 downto 0) := x"4";
    signal ip_header_len     : std_logic_vector( 3 downto 0) := x"5";
    signal ip_dscp_ecn       : std_logic_vector( 7 downto 0) := x"00";
    signal ip_identification : std_logic_vector(15 downto 0) := x"0000";     -- Checksum is optional
    signal ip_length         : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(ip_total_bytes, 16));
    signal ip_flags_and_frag : std_logic_vector(15 downto 0) := x"0000";     -- no flags48 bytes
    signal ip_ttl            : std_logic_vector( 7 downto 0)  := x"80";
    signal ip_protocol       : std_logic_vector( 7 downto 0)  := x"11";
    signal ip_checksum       : std_logic_vector(15 downto 0) := x"0000";   -- Calcuated later on
    --signal ip_src_addr       : std_logic_vector(31 downto 0) := x"C0A40140"; -- 192.168.1.64
    --signal ip_dst_addr       : std_logic_vector(31 downto 0) := x"FFFFFFFF"; -- 255.255.255.255
    -- for calculating the checksum 
    signal ip_checksum1     : unsigned(31 downto 0) := (others => '0');
    signal ip_checksum2     : unsigned(15 downto 0) := (others => '0');
    
    -- UDP Header
    signal udp_src_port      : std_logic_vector(15 downto 0) := x"1000";     -- port 4096
    signal udp_dst_port      : std_logic_vector(15 downto 0) := x"1000";     -- port 4096
    signal udp_length        : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(udp_total_bytes, 16)); 
    signal udp_checksum      : std_logic_vector(15 downto 0) := x"0000";     -- Checksum is optional, and if presentincludes the data
begin
   ----------------------------------------------
   -- Calculate the TCP checksum using logic
   -- This should all collapse down to a constant
   -- at build-time (example was found on the web)
   -----------------------------------------------
   --- Step 1) 4500 + 0030 + 4422 + 4000 + 8006 + 0000 + (0410 + 8A0C + FFFF + FFFF) = 0002BBCF (32-bit sum)
   ip_checksum1 <= to_unsigned(0,32) 
                 + unsigned(ip_version & ip_header_len & ip_dscp_ecn)
                 + unsigned(ip_identification)
                 + unsigned(ip_length)
                 + unsigned(ip_flags_and_frag)
                 + unsigned(ip_ttl & ip_protocol)
                 + unsigned(ip_src_addr(31 downto 16))
                 + unsigned(ip_src_addr(15 downto  0))
                 + unsigned(ip_dst_addr(31 downto 16))
                 + unsigned(ip_dst_addr(15 downto  0));
   -- Step 2) 0002 + BBCF = BBD1 = 1011101111010001 (1's complement 16-bit sum, formed by "end around carry" of 32-bit 2's complement sum)
   ip_checksum2 <= ip_checksum1(31 downto 16) + ip_checksum1(15 downto 0);
   -- Step 3) ~BBD1 = 0100010000101110 = 442E (1's complement of 1's complement 16-bit sum)
   ip_checksum  <= NOT std_logic_vector(ip_checksum2);

generate_nibbles: process (clk) 
    begin
        if rising_edge(clk) then
            -- Update the counter of where we are 
            -- in the packet
--            if start = '1' then           
--                start_internal <= '1';
--            end if;

            data_enable <= '0';
            if advance = '1' then
                data_enable <= '1';
                if counter = 0 then
                    --if start_internal = '1' or start = '1' then
                    if start = '1' then
                        counter         <= counter + 1;
                        --start_internal  <= start;
                    end if;
                else
                    counter <= counter + 1;
                end if;            
            end if;
            
            -- Note, this uses the current value of counter, not the one assigned above!
            data <= "00000000";
            case to_integer(counter) is 
              -- We pause at 0 count when idle (see below case statement)
              when 0 => NULL;  busy  <= '0';
              -----------------------------
              -- MAC Header 
              -----------------------------
              -- Ethernet destination
              when 1 => data <= eth_dst_mac(47 downto 40); data_valid <= '1';  busy  <= '1';
              when 2 => data <= eth_dst_mac(39 downto 32);
              when 3 => data <= eth_dst_mac(31 downto 24);
              when 4 => data <= eth_dst_mac(23 downto 16);
              when 5 => data <= eth_dst_mac(15 downto  8);
              when 6 => data <= eth_dst_mac( 7 downto  0);
              -- Ethernet source
              when 7 => data <= eth_src_mac(47 downto 40);
              when 8 => data <= eth_src_mac(39 downto 32);
              when 9 => data <= eth_src_mac(31 downto 24);
              when 10 => data <= eth_src_mac(23 downto 16);
              when 11 => data <= eth_src_mac(15 downto  8);
              when 12 => data <= eth_src_mac( 7 downto  0);
              -- Ether Type 08:00
              when 13 => data <= eth_type(15 downto  8);
              when 14 => data <= eth_type( 7 downto  0);
              -------------------------
              -- User data packet
              ------------------------------
              -- IPv4 Header
              ----------------------------
              when 15 => data <= ip_version & ip_header_len;              
              when 16 => data <= ip_dscp_ecn( 7 downto  0);
              -- Length of total packet (excludes etherent header and ethernet FCS) = 0x0030
              when 17 => data <= ip_length(15 downto  8);
              when 18 => data <= ip_length( 7 downto  0);
              -- all zeros
              when 19 => data <= ip_identification(15 downto  8);
              when 20 => data <= ip_identification( 7 downto  0);
              -- No flags, no frament offset.
              when 21 => data <= ip_flags_and_frag(15 downto  8);
              when 22 => data <= ip_flags_and_frag( 7 downto  0);
              -- Time to live
              when 23 => data <= ip_ttl( 7 downto  0);
              -- Protocol (UDP)
              when 24 => data <= ip_protocol( 7 downto  0);
              -- Header checksum
              when 25 => data <= ip_checksum(15 downto  8);
              when 26 => data <= ip_checksum( 7 downto  0);
              -- source address
              when 27 => data <= ip_src_addr(31 downto 24);
              when 28 => data <= ip_src_addr(23 downto 16);
              when 29 => data <= ip_src_addr(15 downto  8);
              when 30 => data <= ip_src_addr( 7 downto  0);
              -- dest address
              when 31 => data <= ip_dst_addr(31 downto 24);
              when 32 => data <= ip_dst_addr(23 downto 16);
              when 33 => data <= ip_dst_addr(15 downto  8);
              when 34 => data <= ip_dst_addr( 7 downto  0);
              -- No options in this packet
              
              ------------------------------------------------
              -- UDP/IP Header - from port 4096 to port 4096
              ------------------------------------------------
              -- Source port 4096
              when 35 => data <= udp_src_port(15 downto  8);
              when 36 => data <= udp_src_port( 7 downto  0);
              -- Target port 4096
              when 37 => data <= udp_dst_port(15 downto  8);
              when 38 => data <= udp_dst_port( 7 downto  0);
              -- UDP Length (header + data) 24 octets
              when 39 => data <= udp_length(15 downto  8);
              when 40 => data <= udp_length( 7 downto  0);
              -- UDP Checksum not suppled
              when 41 => data <= udp_checksum(15 downto  8);
              when 42 => data <= udp_checksum( 7 downto  0);
              --------------------------------------------
              -- Finally! 16 bytes of user data (defaults 
              -- to "0000" due to assignement above CASE).
              ---------------------------------------------
               when 43 => data <= data_0; data_user <= '1';
               when 44 to 8234 =>  data <= data_0; -- this works
               when 8235 => data <= packet_info( 31 downto 24 ); -- packet info 
               when 8236 => data <= packet_info( 23 downto 16 ); -- packet info
               when 8237 => data <= packet_info( 15 downto  8 ); -- packet info
               when 8238 => data <= packet_info(  7 downto  0 ); -- packet info
               when 8239 => data <= packet_count( 31 downto 24 ); -- packet count 
               when 8240 => data <= packet_count( 23 downto 16 ); -- packet count
               when 8241 => data <= packet_count( 15 downto  8 ); -- packet count
               when 8242 => data <= packet_count(  7 downto  0 ); -- packet count
	           when 8243 => data <= timing_data(  95 downto   88 ); -- ptp
               when 8244 => data <= timing_data(  87 downto   80 ); -- ptp
               when 8245 => data <= timing_data(  79 downto   72 ); -- ptp
               when 8246 => data <= timing_data(  71 downto   64 ); -- ptp
               when 8247 => data <= timing_data(  63 downto   56 ); -- ptp
               when 8248 => data <= timing_data(  55 downto   48 ); -- ptp
               when 8249 => data <= timing_data(  47 downto   40 ); -- ptp
               when 8250 => data <= timing_data(  39 downto   32 ); -- ptp
               when 8251 => data <= timing_data(  31 downto   24 ); -- ptp
               when 8252 => data <= timing_data(  23 downto   16 ); -- ptp
               when 8253 => data <= timing_data(  15 downto    8 ); -- ptp
               when 8254 => data <= timing_data(   7 downto    0 ); -- ptp
               -- 16B here are '0x00'
              ---------------------------------------------
              -- Ethernet Frame Check Sequence (CRC) will 
              -- be added here, overwriting these nibbles
              ---------------------------------------------
              when 8255 => data_valid <= '0'; data_user <= '0';
              when 8256 => NULL;
              when 8257 => NULL;
              when 8258 => NULL;
              ----------------------------------------------------------------------------------
              -- End of frame - there needs to be at least 20 octets before  sending 
              -- the next packet, (maybe more depending  on medium?) 12 are for the inter packet
              -- gap, 8 allow for the preamble that will be added to the start of this packet.
              --
              -- Note that when the count of 0000 adds one  more nibble, so if start is assigned 
              -- '1' this should be minimum that is  within spec.
              ----------------------------------------------------------------------------------
              when 8273 => counter <= (others => '0'); busy  <= '0';
              when others => data <= "00000000";
            end case;
         end if;    
    end process;
end Behavioral;
