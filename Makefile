prefix  := /usr/local
bin     := $(prefix)/bin

scripts := git-reply-to-commit

README.md: $(scripts)
	pod2markdown $< > $@

install:
	@install -dv $(bin)
	@install -cv $(scripts) $(bin)

uninstall:
	@rm -v $(patsubst %,$(bin)/%,$(scripts)) \
		| perl -pe 'print "rm: "'
