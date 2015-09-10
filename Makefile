PYTHON := python
MD5 := md5sum -c --quiet

.SUFFIXES:
.SUFFIXES: .asm .o .gbc .png .2bpp .1bpp .lz .pal .bin .blk .tilemap
.PHONY: all clean
.SECONDEXPANSION:

poketools := pokemon-reverse-engineering-tools/pokemontools
#gfx       := $(PYTHON) gfx.py
includes  := $(PYTHON) $(poketools)/scan_includes.py


#crystal11_obj := 

crystal_obj := \
main.o

all_obj := $(crystal_obj)

# object dependencies
$(foreach obj, $(all_obj), \
	$(eval $(obj:.o=)_dep := $(shell $(includes) $(obj:.o=.asm))) \
)


roms := linksawakeningdx.gbc

all: $(roms)
#crystal: linksawakeningdx.gbc

clean:
	rm -f $(roms) $(all_obj) $(roms:.gbc=.map) $(roms:.gbc=.sym)

#compare: linksawakeningdx.gbc pokecrystal11.gbc
#	@$(MD5) roms.md5

%.asm: ;
$(all_obj): $$*.asm $$($$*_dep)
	rgbasm -o $@ $<

#pokecrystal11.gbc: $(crystal11_obj)
#	rgblink -n $*.sym -m $*.map -o $@ $^
#	rgbfix -Cjv -i BYTE -k 01 -l 0x33 -m 0x10 -n 1 -p 0 -r 3 -t PM_CRYSTAL $@

linksawakeningdx.gbc: $(crystal_obj)
	rgblink -n $*.sym -m $*.map -o $@ $^
	rgbfix -cjsv -i AZLE -k 01 -l 0x33 -n 2 -m 0x1b -p 5 -r 3 -t ZELDA $@


#pngs:
#	find . -iname "*.lz"      -exec $(gfx) unlz {} +
#	find . -iname "*.[12]bpp" -exec $(gfx) png  {} +
#	find . -iname "*.[12]bpp" -exec touch {} \;
#	find . -iname "*.lz"      -exec touch {} \;

#%.2bpp: %.png ; $(gfx) 2bpp $<
#%.1bpp: %.png ; $(gfx) 1bpp $<
#%.lz:   %     ; $(gfx) lz $<


#%.pal: %.2bpp ;
#gfx/pics/%/normal.pal gfx/pics/%/bitmask.asm gfx/pics/%/frames.asm: gfx/pics/%/front.2bpp ;
#%.bin: ;
#%.blk: ;
#%.tilemap: ;

