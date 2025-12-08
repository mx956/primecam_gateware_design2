  sysgen_dut : entity xil_defaultlib.cordic_mix_v1 
  port map (
    dphi => dphi,
    im_even => im_even,
    im_odd => im_odd,
    re_even => re_even,
    re_odd => re_odd,
    sync_in => sync_in,
    clk => clk,
    gateway_out11 => gateway_out11,
    out_im_even => out_im_even,
    out_im_odd => out_im_odd,
    out_re_even => out_re_even,
    out_re_odd => out_re_odd,
    sync_out => sync_out
  );
