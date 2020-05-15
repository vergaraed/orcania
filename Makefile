#
# Orcania Framework
#
# Makefile used to build all programs
#
# Copyright 2017 Nicolas Mora <mail@babelouest.org>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the MIT License
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#

LIBORCANIA_LOCATION=./src
TESTS_LOCATION=./test

all: target

target:
	cd $(LIBORCANIA_LOCATION) && $(MAKE) $*

debug:
	cd $(LIBORCANIA_LOCATION) && $(MAKE) debug $*

clean:
	cd $(LIBORCANIA_LOCATION) && $(MAKE) clean
	cd $(TESTS_LOCATION) && $(MAKE) clean
	rm -rf doc/html/ doc/man/

check:
	cd $(LIBORCANIA_LOCATION) && $(MAKE) debug $*
	cd $(TESTS_LOCATION) && $(MAKE) test $*

install:
	cd $(LIBORCANIA_LOCATION) && $(MAKE) install $*

uninstall:
	cd $(LIBORCANIA_LOCATION) && $(MAKE) uninstall $*

doxygen:
	doxygen doc/doxygen.cfg

release: target
