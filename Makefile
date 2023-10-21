MODSDIR = "/Users/atu/Library/Application Support/factorio/mods"
ZIPCMD ?= zip
ZIPFILE = $(MODNAME)_$(VERSION).zip

deploy: check-modname get-version
ifeq ($(ZIPCMD), zip)
	zip -r $(ZIPFILE) $(MODNAME)
else ifeq ($(ZIPCMD), 7zz)
	7zz a $(ZIPFILE) $(MODNAME)/*
endif
	mv $(ZIPFILE) $(MODSDIR)

get-version: check-modname
	$(eval VERSION=$(shell jq -r '.version' $(MODNAME)/info.json))

check-modname:
ifndef MODNAME
	$(error MODNAME is not set)
endif

examples:
	@echo "Examples of using the make command with this Makefile:"
	@echo ""
	@echo "1. To deploy using the default zip command:"
	@echo "   make deploy MODNAME=<modname>"
	@echo ""
	@echo "2. To deploy using the 7zz command:"
	@echo "   make deploy ZIPCMD=7zz MODNAME=<modname>"
