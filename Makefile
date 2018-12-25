
bin := resembed

srcdir := src
objdir := obj
resdir := res

srcfil := $(wildcard $(srcdir)/*.c)
objfil := $(patsubst $(srcdir)/%.c,$(objdir)/%.o,$(srcfil))
ressrc := $(wildcard $(resdir)/*)
rojfil := $(patsubst $(resdir)/%,$(objdir)/%.o,$(ressrc))

$(bin): $(objfil) $(rojfil)
	gcc -o $@ $^

$(objdir)/%.o: $(srcdir)/%.c
	gcc -c $(cflags) -o $@ $<

$(objdir)/%.o: $(resdir)/%
	ld -r -b binary -o $@ $^

.PHONY: clean
clean:
	rm -f $(objdir)/* $(bin)
