all: make_pom make_ce make_copy

make_ce:
	$(MAKE) -C ce

make_pom: 
	$(MAKE) -C pom 

make_copy:
	cp ce/ce  ./CE
