# Macros for building, deleting ########################################

# AS=tasm -m @asmlib.cfg
# the following would require that you run SET ASMLIB=... first in a .bat:
# AS=jwasmd -mt @asmlib ... so we just hardcode the asmlib/ for includes
AS=jwasm
LINKEXE=wlink
GCC=gcc
# using tlink /x /t would create COM but fails on jwasm made OBJ:
# it says that there would be data defined below initial CS:IP...
# *** LINKCOM=tlink /x /t

RM=rm -f

# Targets ##############################################################

all: ctmouse.exe

ctmouse.o: ctmouse.asm ctmouse.msg
	$(AS) $*.asm

ctmouse.exe: ctmouse.o bin2exe
	$(LINKEXE) format dos com file $* option map
	./bin2exe -s 512 ctmouse.com ctmouse.exe
	rm -f ctmouse.com

ctmouse.o: ctmouse.asm ctmouse.msg asmlib/* asmlib/bios/* &
		asmlib/convert/* asmlib/dos/* asmlib/hard/*

ctmouse.msg: ctm-en.msg
	cp ctm-en.msg ctmouse.msg
	
bin2exe: bin2exe.c
	$(GCC) bin2exe.c -o $*

# Clean up #############################################################

clean
	-$(RM) ctmouse.msg
	-$(RM) *.o
	-$(RM) ctmouse.exe
	-$(RM) ctm-*.exe
# -$(RM) ctmouse.com

