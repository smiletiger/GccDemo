#makefile begin

CFLAGS = -g -Wall -O2 -lm
CC = gcc
VPATH = ./LibTest1/

hello:hello.o buildlib
	cc -o hello hello.o
hello.o:
	cc -c -o hello.o hello.c -lm

buildlib:
	@echo buildlib start
	cd LibTest1 && $(MAKE) clean && $(MAKE)
all:
	@echo you have typed command "make all"
clean:
	@echo youhave typed command "make clean"
	-rm *.o
	-rm *~
	-rm -r  *.dSYM
#clean sub lib
	-cd LibTest1 && $(MAKE) clean	
	@echo make clean done
install:
	@echo youhave typed command "make $@"
	-cp ./hello /usr/bin/
	@echo sudo cp hello done
uninstall:
	@echo you have typed command "make uninstall"
	-rm -f /usr/bin/hello
	@echo unintall done
doall: all clean install
	@echo youhave typed command "make do $@"

#makefile end
