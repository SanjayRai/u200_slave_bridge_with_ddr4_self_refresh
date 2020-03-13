# u200_slave_bridge_with_ddr4_self_refresh
Alveo U200 Slave Bridge with DDR4 Self Refresh


To build:

1. Build all the IP
    a. cd hlx/IP_BD_PRJ
    b. vivado -source vivado_project.tcl
    c. build_ip (from the TCL consol)

2. Build the full design Shell and CDMA Example
    a. cd examples/rt/cdma_example
    b. vivado -source vivado_batch.tcl

3.  Program the Full bitfile in the bitfiles directory into the Card. THe MCS can be programmed into the QSPI as well.

4. To run the test software:
    a. Install udmabuf driver from github (https://github.com/ikwzm/udmabuf )
    b. cd /sw/SW_TEST/HOST_code/SDX_CDMA/Makeflow
    c. make srai_hw
    d. ./passthru.hw <PCIe_BAR_Address> (This is derived from lspci -vvv)

