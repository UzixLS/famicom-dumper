:start

@set FWFILE=famicom-dumper.hex
@set DUDEFLAGS=-p m64 -c um232h -b 115200
avrdude %DUDEFLAGS% -U flash:w:%FWFILE%:i -U lfuse:w:0x9E:m -U hfuse:w:0xDC:m -U efuse:w:0xFF:m
@PAUSE

@goto start
