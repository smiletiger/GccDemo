#makefile begin

#CFLAGS = -g -Wall -O2 -lm
#CC = gcc
#hello:hello.o
#.c.o

all:
	@echo you have typed command "make all"
clean:
	@echo youhave typed command "make clean"
	-rm *.o
	-rm *~
	-rm -r  *.dSYM
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
