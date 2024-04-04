
# (C) 2001-2022 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 win32 2022.10.13.11:09:53

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "montre"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} 

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/altera/13.0sp1/quartus/"
} 

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/montre_nios2_qsys_0_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/montre_nios2_qsys_0_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/montre_nios2_qsys_0_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/montre_nios2_qsys_0_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/montre_nios2_qsys_0_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/montre_nios2_qsys_0_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/montre_nios2_qsys_0_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/montre_nios2_qsys_0_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/montre_nios2_qsys_0_rf_ram_b.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                  ./libraries/altera_ver      
vmap       altera_ver       ./libraries/altera_ver      
ensure_lib                  ./libraries/lpm_ver         
vmap       lpm_ver          ./libraries/lpm_ver         
ensure_lib                  ./libraries/sgate_ver       
vmap       sgate_ver        ./libraries/sgate_ver       
ensure_lib                  ./libraries/altera_mf_ver   
vmap       altera_mf_ver    ./libraries/altera_mf_ver   
ensure_lib                  ./libraries/altera_lnsim_ver
vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver
ensure_lib                  ./libraries/cycloneii_ver   
vmap       cycloneii_ver    ./libraries/cycloneii_ver   
ensure_lib                  ./libraries/altera          
vmap       altera           ./libraries/altera          
ensure_lib                  ./libraries/lpm             
vmap       lpm              ./libraries/lpm             
ensure_lib                  ./libraries/sgate           
vmap       sgate            ./libraries/sgate           
ensure_lib                  ./libraries/altera_mf       
vmap       altera_mf        ./libraries/altera_mf       
ensure_lib                  ./libraries/altera_lnsim    
vmap       altera_lnsim     ./libraries/altera_lnsim    
ensure_lib                  ./libraries/cycloneii       
vmap       cycloneii        ./libraries/cycloneii       
ensure_lib                                                                                  ./libraries/irq_mapper                                                                      
vmap       irq_mapper                                                                       ./libraries/irq_mapper                                                                      
ensure_lib                                                                                  ./libraries/width_adapter                                                                   
vmap       width_adapter                                                                    ./libraries/width_adapter                                                                   
ensure_lib                                                                                  ./libraries/rsp_xbar_mux                                                                    
vmap       rsp_xbar_mux                                                                     ./libraries/rsp_xbar_mux                                                                    
ensure_lib                                                                                  ./libraries/rsp_xbar_demux                                                                  
vmap       rsp_xbar_demux                                                                   ./libraries/rsp_xbar_demux                                                                  
ensure_lib                                                                                  ./libraries/cmd_xbar_mux                                                                    
vmap       cmd_xbar_mux                                                                     ./libraries/cmd_xbar_mux                                                                    
ensure_lib                                                                                  ./libraries/cmd_xbar_demux                                                                  
vmap       cmd_xbar_demux                                                                   ./libraries/cmd_xbar_demux                                                                  
ensure_lib                                                                                  ./libraries/rst_controller                                                                  
vmap       rst_controller                                                                   ./libraries/rst_controller                                                                  
ensure_lib                                                                                  ./libraries/burst_adapter                                                                   
vmap       burst_adapter                                                                    ./libraries/burst_adapter                                                                   
ensure_lib                                                                                  ./libraries/id_router_001                                                                   
vmap       id_router_001                                                                    ./libraries/id_router_001                                                                   
ensure_lib                                                                                  ./libraries/id_router                                                                       
vmap       id_router                                                                        ./libraries/id_router                                                                       
ensure_lib                                                                                  ./libraries/addr_router                                                                     
vmap       addr_router                                                                      ./libraries/addr_router                                                                     
ensure_lib                                                                                  ./libraries/sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo                   
vmap       sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo                    ./libraries/sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo                   
ensure_lib                                                                                  ./libraries/sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo                     
vmap       sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo                      ./libraries/sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo                     
ensure_lib                                                                                  ./libraries/jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent_rsp_fifo
vmap       jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent_rsp_fifo ./libraries/jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent_rsp_fifo
ensure_lib                                                                                  ./libraries/jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent         
vmap       jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent          ./libraries/jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent         
ensure_lib                                                                                  ./libraries/nios2_qsys_0_data_master_translator_avalon_universal_master_0_agent             
vmap       nios2_qsys_0_data_master_translator_avalon_universal_master_0_agent              ./libraries/nios2_qsys_0_data_master_translator_avalon_universal_master_0_agent             
ensure_lib                                                                                  ./libraries/jtag_uart_0_avalon_jtag_slave_translator                                        
vmap       jtag_uart_0_avalon_jtag_slave_translator                                         ./libraries/jtag_uart_0_avalon_jtag_slave_translator                                        
ensure_lib                                                                                  ./libraries/nios2_qsys_0_data_master_translator                                             
vmap       nios2_qsys_0_data_master_translator                                              ./libraries/nios2_qsys_0_data_master_translator                                             
ensure_lib                                                                                  ./libraries/nios2_qsys_0                                                                    
vmap       nios2_qsys_0                                                                     ./libraries/nios2_qsys_0                                                                    
ensure_lib                                                                                  ./libraries/sysid_qsys_0                                                                    
vmap       sysid_qsys_0                                                                     ./libraries/sysid_qsys_0                                                                    
ensure_lib                                                                                  ./libraries/jtag_uart_0                                                                     
vmap       jtag_uart_0                                                                      ./libraries/jtag_uart_0                                                                     
ensure_lib                                                                                  ./libraries/hex                                                                             
vmap       hex                                                                              ./libraries/hex                                                                             
ensure_lib                                                                                  ./libraries/bottons                                                                         
vmap       bottons                                                                          ./libraries/bottons                                                                         
ensure_lib                                                                                  ./libraries/timer                                                                           
vmap       timer                                                                            ./libraries/timer                                                                           
ensure_lib                                                                                  ./libraries/pll                                                                             
vmap       pll                                                                              ./libraries/pll                                                                             
ensure_lib                                                                                  ./libraries/sdram                                                                           
vmap       sdram                                                                            ./libraries/sdram                                                                           

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  vlog +define+SKIP_KEYWORDS_PRAGMA "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"              -work altera_ver      
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                       -work lpm_ver         
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                          -work sgate_ver       
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                      -work altera_mf_ver   
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim_ver
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.v"                -work cycloneii_ver   
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera          
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera          
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera          
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera          
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera          
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera          
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm             
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm             
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate           
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate           
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf       
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf       
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim    
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.vhd"              -work cycloneii       
  vcom                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_components.vhd"         -work cycloneii       
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vcom  "$QSYS_SIMDIR/submodules/montre_irq_mapper.vho"                                                                       -work irq_mapper                                                                      
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_merlin_width_adapter.sv"                                                        -work width_adapter                                                                   
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_merlin_address_alignment.sv"                                                    -work width_adapter                                                                   
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_merlin_burst_uncompressor.sv"                                                   -work width_adapter                                                                   
  vcom  "$QSYS_SIMDIR/submodules/montre_rsp_xbar_mux.vho"                                                                     -work rsp_xbar_mux                                                                    
  vcom  "$QSYS_SIMDIR/submodules/montre_rsp_xbar_demux.vho"                                                                   -work rsp_xbar_demux                                                                  
  vcom  "$QSYS_SIMDIR/submodules/montre_cmd_xbar_mux.vho"                                                                     -work cmd_xbar_mux                                                                    
  vcom  "$QSYS_SIMDIR/submodules/montre_cmd_xbar_demux.vho"                                                                   -work cmd_xbar_demux                                                                  
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_reset_controller.v"                                                             -work rst_controller                                                                  
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_reset_synchronizer.v"                                                           -work rst_controller                                                                  
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_merlin_burst_adapter.sv"                                                        -work burst_adapter                                                                   
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_merlin_address_alignment.sv"                                                    -work burst_adapter                                                                   
  vcom  "$QSYS_SIMDIR/submodules/montre_id_router_001.vho"                                                                    -work id_router_001                                                                   
  vcom  "$QSYS_SIMDIR/submodules/montre_id_router.vho"                                                                        -work id_router                                                                       
  vcom  "$QSYS_SIMDIR/submodules/montre_addr_router.vho"                                                                      -work addr_router                                                                     
  vcom  "$QSYS_SIMDIR/submodules/montre_sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo.vho"                    -work sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo                   
  vcom  "$QSYS_SIMDIR/submodules/montre_sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"                      -work sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo                     
  vcom  "$QSYS_SIMDIR/submodules/montre_jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent_rsp_fifo.vho" -work jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent_rsp_fifo
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_merlin_slave_agent.sv"                                                          -work jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent         
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_merlin_burst_uncompressor.sv"                                                   -work jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent         
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_merlin_master_agent.sv"                                                         -work nios2_qsys_0_data_master_translator_avalon_universal_master_0_agent             
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_merlin_slave_translator.sv"                                                     -work jtag_uart_0_avalon_jtag_slave_translator                                        
  vlog  "$QSYS_SIMDIR/submodules/aldec/altera_merlin_master_translator.sv"                                                    -work nios2_qsys_0_data_master_translator                                             
  vcom  "$QSYS_SIMDIR/submodules/montre_nios2_qsys_0.vhd"                                                                     -work nios2_qsys_0                                                                    
  vcom  "$QSYS_SIMDIR/submodules/montre_nios2_qsys_0_jtag_debug_module_sysclk.vhd"                                            -work nios2_qsys_0                                                                    
  vcom  "$QSYS_SIMDIR/submodules/montre_nios2_qsys_0_jtag_debug_module_tck.vhd"                                               -work nios2_qsys_0                                                                    
  vcom  "$QSYS_SIMDIR/submodules/montre_nios2_qsys_0_jtag_debug_module_wrapper.vhd"                                           -work nios2_qsys_0                                                                    
  vcom  "$QSYS_SIMDIR/submodules/montre_nios2_qsys_0_oci_test_bench.vhd"                                                      -work nios2_qsys_0                                                                    
  vcom  "$QSYS_SIMDIR/submodules/montre_nios2_qsys_0_test_bench.vhd"                                                          -work nios2_qsys_0                                                                    
  vcom  "$QSYS_SIMDIR/submodules/montre_sysid_qsys_0.vho"                                                                     -work sysid_qsys_0                                                                    
  vcom  "$QSYS_SIMDIR/submodules/montre_jtag_uart_0.vhd"                                                                      -work jtag_uart_0                                                                     
  vcom  "$QSYS_SIMDIR/submodules/montre_hex.vhd"                                                                              -work hex                                                                             
  vcom  "$QSYS_SIMDIR/submodules/montre_bottons.vhd"                                                                          -work bottons                                                                         
  vcom  "$QSYS_SIMDIR/submodules/montre_timer.vhd"                                                                            -work timer                                                                           
  vcom  "$QSYS_SIMDIR/submodules/montre_pll.vhd"                                                                              -work pll                                                                             
  vcom  "$QSYS_SIMDIR/submodules/montre_sdram.vhd"                                                                            -work sdram                                                                           
  vcom  "$QSYS_SIMDIR/montre.vhd"                                                                                                                                                                                   
  vcom  "$QSYS_SIMDIR/montre_jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent.vhd"                                                                                                           
  vcom  "$QSYS_SIMDIR/montre_sdram_s1_translator_avalon_universal_slave_0_agent.vhd"                                                                                                                                
  vcom  "$QSYS_SIMDIR/montre_width_adapter.vhd"                                                                                                                                                                     
  vcom  "$QSYS_SIMDIR/montre_width_adapter_001.vhd"                                                                                                                                                                 
  vcom  "$QSYS_SIMDIR/montre_nios2_qsys_0_data_master_translator.vhd"                                                                                                                                               
  vcom  "$QSYS_SIMDIR/montre_nios2_qsys_0_instruction_master_translator.vhd"                                                                                                                                        
  vcom  "$QSYS_SIMDIR/montre_jtag_uart_0_avalon_jtag_slave_translator.vhd"                                                                                                                                          
  vcom  "$QSYS_SIMDIR/montre_sdram_s1_translator.vhd"                                                                                                                                                               
  vcom  "$QSYS_SIMDIR/montre_timer_s1_translator.vhd"                                                                                                                                                               
  vcom  "$QSYS_SIMDIR/montre_nios2_qsys_0_jtag_debug_module_translator.vhd"                                                                                                                                         
  vcom  "$QSYS_SIMDIR/montre_bottons_avalon_parallel_port_slave_translator.vhd"                                                                                                                                     
  vcom  "$QSYS_SIMDIR/montre_sysid_qsys_0_control_slave_translator.vhd"                                                                                                                                             
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim +access +r  -t ps -L work -L irq_mapper -L width_adapter -L rsp_xbar_mux -L rsp_xbar_demux -L cmd_xbar_mux -L cmd_xbar_demux -L rst_controller -L burst_adapter -L id_router_001 -L id_router -L addr_router -L sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo -L sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent_rsp_fifo -L jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent -L nios2_qsys_0_data_master_translator_avalon_universal_master_0_agent -L jtag_uart_0_avalon_jtag_slave_translator -L nios2_qsys_0_data_master_translator -L nios2_qsys_0 -L sysid_qsys_0 -L jtag_uart_0 -L hex -L bottons -L timer -L pll -L sdram -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -dbg -O2 +access +r -t ps -L work -L irq_mapper -L width_adapter -L rsp_xbar_mux -L rsp_xbar_demux -L cmd_xbar_mux -L cmd_xbar_demux -L rst_controller -L burst_adapter -L id_router_001 -L id_router -L addr_router -L sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo -L sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent_rsp_fifo -L jtag_uart_0_avalon_jtag_slave_translator_avalon_universal_slave_0_agent -L nios2_qsys_0_data_master_translator_avalon_universal_master_0_agent -L jtag_uart_0_avalon_jtag_slave_translator -L nios2_qsys_0_data_master_translator -L nios2_qsys_0 -L sysid_qsys_0 -L jtag_uart_0 -L hex -L bottons -L timer -L pll -L sdram -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
