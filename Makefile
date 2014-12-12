RONN = ronn
RONNFLAGS = --pipe --warnings

ALLMAN += man/printscreen.1
ALLMAN += man/printscreen.1.html
ALLMAN += man/printscreen.1.md

all: man

clean:
	$(RM) $(ALLMAN)

man: $(ALLMAN)

man/%: man/%.ronn
	$(RONN) $(RONNFLAGS) --roff $< > $@

man/%.html: man/%.ronn
	$(RONN) $(RONNFLAGS) --html --style toc $< > $@

man/%.md: man/%.ronn
	$(RONN) $(RONNFLAGS) --markdown $< > $@
