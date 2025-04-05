OUT = bin/picofs bin/zasm

include ../base.mk

bin:
	@mkdir -p bin

bin/zasm: zasm/zasm
	@cp $< $@
	@chmod +x $@

bin/picofs: bin picofs/picofs.c picofs/picofs.h common.c common.h version.h
	@cc -o $@ picofs/picofs.c common.c