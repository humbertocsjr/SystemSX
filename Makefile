MAKEDIR=make --no-print-directory $@ -C
MAKE=make --no-print-directory

all clean distro:
	@chmod +x configure
	@sh ./configure
	@$(MAKEDIR) devkit
	@$(MAKEDIR) boot
	@$(MAKEDIR) output