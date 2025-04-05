MAKEDIR=make --no-print-directory $@ -C
MAKE=make --no-print-directory

all clean distro:
	@chmod +x configure
	@sh ./configure
	@$(MAKEDIR) devkit
	@$(MAKEDIR) boot
	@$(MAKEDIR) output

run: distro
	@openmsx -machine Gradiente_Expert_GPC-1 -exta DDX_3.0 -extb megaram -diska output/720.img