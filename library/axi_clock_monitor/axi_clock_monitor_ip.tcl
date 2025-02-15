# ip

source ../scripts/adi_env.tcl
source $ad_hdl_dir/library/scripts/adi_ip_xilinx.tcl

adi_ip_create axi_clock_monitor
adi_ip_files axi_clock_monitor [list \
  "$ad_hdl_dir/library/common/up_axi.v" \
  "$ad_hdl_dir/library/common/up_clock_mon.v" \
  "axi_clock_monitor.v" \
  "axi_clock_monitor_constr.xdc" ]

adi_ip_properties axi_clock_monitor

set_property company_url {https://wiki.analog.com/resources/fpga/docs/axi_clock_monitor} [ipx::current_core]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 1} \
  [ipx::get_ports *_1* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 2} \
  [ipx::get_ports *_2* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 3} \
  [ipx::get_ports *_3* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 4} \
  [ipx::get_ports *_4* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 5} \
  [ipx::get_ports *_5* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 6} \
  [ipx::get_ports *_6* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 7} \
  [ipx::get_ports *_7* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 8 } \
  [ipx::get_ports *_8*  -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 9 } \
  [ipx::get_ports *_9*  -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 10} \
  [ipx::get_ports *_10* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 11} \
  [ipx::get_ports *_11* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 12} \
  [ipx::get_ports *_12* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 13} \
  [ipx::get_ports *_13* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 14} \
  [ipx::get_ports *_14* -of_objects [ipx::current_core]]
set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.NUM_OF_CLOCKS')) > 15} \
  [ipx::get_ports *_15* -of_objects [ipx::current_core]]

ipx::infer_bus_interface reset xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]

ipx::save_core [ipx::current_core]


