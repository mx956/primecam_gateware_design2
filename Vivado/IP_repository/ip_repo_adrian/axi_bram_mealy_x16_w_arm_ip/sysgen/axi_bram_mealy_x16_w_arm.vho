  sysgen_dut : entity xil_defaultlib.axi_bram_mealy_x16_w_arm 
  port map (
    rising_edge_arm => rising_edge_arm,
    max_count_minus_one_step => max_count_minus_one_step,
    rising_edge_start => rising_edge_start,
    clk => clk,
    address => address,
    we => we
  );
