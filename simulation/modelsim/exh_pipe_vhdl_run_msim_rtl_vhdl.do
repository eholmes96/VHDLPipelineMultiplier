transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/evholmes/OneDrive/Documents/2nd Year 2nd Sem/DSII/exh_pipe_vhdl/exh_pipe_vhdl.vhd}
vcom -93 -work work {C:/Users/evholmes/OneDrive/Documents/2nd Year 2nd Sem/DSII/exh_pipe_vhdl/exh_4bAND.vhd}
vcom -93 -work work {C:/Users/evholmes/OneDrive/Documents/2nd Year 2nd Sem/DSII/exh_pipe_vhdl/exh_4bADD.vhd}
vcom -93 -work work {C:/Users/evholmes/OneDrive/Documents/2nd Year 2nd Sem/DSII/exh_pipe_vhdl/exh_mul12_emu_vhdl.vhd}
vcom -93 -work work {C:/Users/evholmes/OneDrive/Documents/2nd Year 2nd Sem/DSII/exh_pipe_vhdl/exh_reg_vhdl.vhd}
vcom -93 -work work {C:/Users/evholmes/OneDrive/Documents/2nd Year 2nd Sem/DSII/exh_pipe_vhdl/exh_inpipe_vhdl.vhd}

vcom -93 -work work {C:/Users/evholmes/OneDrive/Documents/2nd Year 2nd Sem/DSII/exh_pipe_vhdl/exh_pipe_vhdl_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  exh_pipe_vhdl_tb

add wave *
view structure
view signals
run -all
