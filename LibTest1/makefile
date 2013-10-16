#make file begin
CC = gcc
MYLIB = LibTest1
LibTest1.a:LibTest1IF.o LibTest1IF.h
	@echo build $(MYLIB)
	ar -r $(MYLIB).a LibTest1IF.o
	@echo build $(MYLIB)

#release my lib
	-mkdir ../mylib/$(MYLIB)
	-cp LibTest1IF.h ../mylib/$(MYLIB)/LibTest1IF.h 
	-cp $(MYLIB).a ../mylib/$(MYLIB)/$(MYLIB).a
	@echo release $(MYLIB)

LibTest1IF.o:LibTest1IF.c LibTest1IF.h
	CC -c LibTest1IF.c

clean:
	-rm *.o *.a
	#clean release lib
	-rm -r ../mylib/$(MYLIB)
	@echo LibTest1 clean 


#make file end
