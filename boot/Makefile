OUT = floppy.boot

include ../conf.mk
include ../base.mk

floppy.boot: floppy.asm
	@echo [AS] $@
	@$(AS) $< $@