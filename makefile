#------------------------------------------------------
# MAS MULTIPLIERS TOP makefile 
#----------------------------------------------------

#MUL  = <vedic,radix>
MUL    ?= vedic
#TB   = <svtb,vtb>
TB     ?= svtb
#MODE = <rtl,gls>
MODE   ?= rtl

ifeq ($(MUL),vedic)
  ifeq ($(MODE),rtl)
    BUILD_MODE  = vedic_rtl
  else
    BUILD_MODE  = vedic_gls
  endif
else
  ifeq ($(MODE),rtl)
    BUILD_MODE  = radix_rtl
  else
    BUILD_MODE  = radix_gls
  endif
endif

#TOP MAKEFILE PARAMETERS
export ROOT        := $(shell pwd)
export SIM         := $(ROOT)/sim
export BUILD       := $(ROOT)/build

run: clean_build forge

run_error: clean_build forge_error

forge:
	$(MAKE) -C $(SIM) $(BUILD_MODE) TB=$(TB)

#example for design with error
forge_error:
	$(MAKE) -C $(SIM) error MUL=radix TB=$(TB) 

clean_build:
	cd $(BUILD); \
	rm *.txt vcdplus.vpd csrc/ simv* *.log ucli.key -rf
