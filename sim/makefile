#------------------------------------------------------
# MAS MULTIPLIER (VEDIC/RADIX) makefile 
# #----------------------------------------------------

SIM             := $(shell pwd)
RTL_VEDIC       := ../rtl/vedic/
RTL_RADIX       := ../rtl/radix/
RTL_ERROR       := ../rtl/error/
NETLIST_VEDIC   := ../netlist/vedic/mas_mul_vedic_netlist.v
NETLIST_RADIX   := ../netlist/radix/mas_mul_radix_netlist.v
LIB_VERILOG     := ../lib/verilog/saed90nm.v
SVTB_VIP        := ../svtb/vip/
SVTB_INC        := ../svtb/inc
SVTB_VEDIC      := ../svtb/vedic
SVTB_RADIX      := ../svtb/radix
TB_VEDIC        := ../tb/vedic
TB_RADIX        := ../tb/radix
VEDIC_FILE      ?= mas_mul_vedic.f
RADIX_FILE      ?= mas_mul_radix.f
VEDIC_F_LIST    := $(addprefix $(RTL_VEDIC),$(shell cat $(RTL_VEDIC)$(VEDIC_FILE)))
RADIX_F_LIST    := $(addprefix $(RTL_RADIX),$(shell cat $(RTL_RADIX)$(RADIX_FILE)))
ERROR_F_LIST    := $(addprefix $(RTL_ERROR),$(shell cat $(RTL_ERROR)$(RADIX_FILE)))
OPT             := -sverilog -R -debug_access+all +vcs+vcdpluson+ +incdir+$(SVTB_VIP) +incdir+$(SVTB_INC) -l run.log 
SUPPRESS       := +warn=none

ifeq ($(MUL),radix)
  OPT += +define+RADIX+
else
  OPT += +define+VEDIC+
endif

ifeq ($(MODE),rtl)
  OPT += +define+RTL+
endif

ifeq ($(TB),svtb)
  VEDIC_TB_LIST := $(SVTB_VEDIC)/mas_mul_vedic_tb.sv $(SVTB_VEDIC)/mas_mul_program.sv
  RADIX_TB_LIST := $(SVTB_RADIX)/mas_mul_radix_tb.sv $(SVTB_RADIX)/mas_mul_program.sv
else
  VEDIC_TB_LIST := $(TB_VEDIC)/mas_mul_vedic_tb.sv 
  RADIX_TB_LIST := $(TB_RADIX)/mas_mul_radix_tb.sv 
endif

vedic_rtl:
	cd $(BUILD); \
	vcs $(OPT) $(VEDIC_TB_LIST) $(VEDIC_F_LIST) 

vedic_gls:
	cd $(BUILD); \
	vcs $(OPT) $(SUPPRESS) $(LIB_VERILOG) $(VEDIC_TB_LIST) $(NETLIST_VEDIC)

radix_rtl:
	cd $(BUILD); \
	vcs $(OPT) $(RADIX_TB_LIST) $(RADIX_F_LIST)

radix_gls:
	cd $(BUILD); \
	vcs $(OPT) $(SUPPRESS) $(LIB_VERILOG) $(RADIX_TB_LIST) $(NETLIST_RADIX)

error:
	cd $(BUILD); \
	vcs $(OPT) $(RADIX_TB_LIST) $(ERROR_F_LIST)

clean_sim:
	cd $(SIM)
	rm DVEfiles *.log csrc simv* vcdplus.vpd ucli.key -rf
