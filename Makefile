RONN = ronn
RONNFLAGS = --pipe --warnings

ALLMAN += man/printscreen.1
ALLMAN += man/printscreen.1.html
ALLMAN += man/printscreen.1.md

all: man

clean:
	$(RM) $(ALLMAN)

man: $(ALLMAN)

man/printscreen.1: man/printscreen.1.ronn
	$(RONN) $(RONNFLAGS) --roff $< > $@

man/printscreen.1.html: man/printscreen.1.ronn
	$(RONN) $(RONNFLAGS) --html --style toc $< > $@

man/printscreen.1.md: man/printscreen.1.ronn
	$(RONN) $(RONNFLAGS) --markdown $< > $@
