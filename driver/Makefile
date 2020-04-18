#CC=lcc
CC=/home/imanol/Documentos/sdcc-3.8.0/bin/sdcc -mgbz80 --no-std-crt0 -I /home/imanol/Documentos/gbdk-n/include -I /home/imanol/Documentos/gbdk-n/include/asm

default: ASMFILES

ASMFILES: freq.asm music.asm noisefreq.asm player.asm vib.asm

%.asm: %.c
	$(CC) -S $<; python fixcode.py $@ $@
