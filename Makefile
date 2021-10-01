SEARCH = $(shell find _data _pages _posts -type f)

TAGS: $(SEARCH)
	@etags $^
