# ip

source ../scripts/adi_env.tcl
source $ad_hdl_dir/library/scripts/adi_ip_xilinx.tcl

global VIVADO_IP_LIBRARY

adi_ip_create axi_ad9152
adi_ip_files axi_ad9152 [list \
  "axi_ad9152.v" ]

adi_ip_properties axi_ad9152

adi_init_bd_tcl
adi_ip_bd axi_ad9152 "bd/bd.tcl"

adi_ip_add_core_dependencies [list \
  analog.com:$VIVADO_IP_LIBRARY:ad_ip_jesd204_tpl_dac:1.0 \
]

set_property driver_value 0 [ipx::get_ports *dunf* -of_objects [ipx::current_core]]
set_property driver_value 0 [ipx::get_ports *tx_ready* -of_objects [ipx::current_core]]

ipx::infer_bus_interface tx_clk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface dac_clk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]

adi_add_auto_fpga_spec_params
ipx::create_xgui_files [ipx::current_core]

ipx::save_core [ipx::current_core]
