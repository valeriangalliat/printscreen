ALL += index.html

all: clean $(ALL)

clean:
	$(RM) $(ALL)

index.html:
	git show master:man/printscreen.1.html > $@
