printf "Compiling...."
z80asm --list=nabu_4k_new.lst  nabu_4k.asm  -o nabu_4k_new.bin
read -p "Press enter to patch checksum"
./check nabu_4k_new.bin
read -p "Press enter to upload"
python3 EPROM_NG_v2.0rc3.py -mem 2732 -spi y -auto n -map y nabu_4k_new.bin /dev/ttyUSB0
