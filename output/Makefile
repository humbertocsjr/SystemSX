OUT = 720.img

include ../conf.mk

all:
	@echo >> /dev/null
distro: $(OUT)
	@echo >> /dev/null
clean:
	@rm -f *.img

%.img: $(BOOT_FLOPPY)
	@echo [PICOFS] $@
	@$(PICOFS) $@ genfs $(patsubst %.img,%,$@) "SystemSX" $(BOOT_FLOPPY)