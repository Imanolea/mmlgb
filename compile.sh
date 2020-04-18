#/bin/sh

java -jar parser/MMLGB.jar music/"$1" driver/song.asm

/opt/gbdk/bin/lcc -c driver/player.asm -o driver/player.o
/opt/gbdk/bin/lcc -c driver/music.asm -o driver/music.o
/opt/gbdk/bin/lcc -c driver/song.asm -o driver/song.o
/opt/gbdk/bin/lcc -c driver/freq.asm -o driver/freq.o
/opt/gbdk/bin/lcc -c driver/noisefreq.asm -o driver/noisefreq.o
/opt/gbdk/bin/lcc -c driver/vib.asm -o driver/vib.o
/opt/gbdk/bin/lcc -Wl-j driver/player.o driver/music.o driver/song.o driver/freq.o driver/noisefreq.o driver/vib.o -o rom/rom.gb
