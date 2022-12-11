@echo off
echo "Compiling"
sjasmplus.exe --raw="hello.bin" "hello.asm"
echo "Coverting to hex"
pause
srec_cat.exe "hello.bin" -binary -offset 0x0140D -o "hello.hex" -intel -address-length=2 -obs=16
:: you can alos use bin2hex part of python intelhex library 'pip install intelhex'
:: bin2hex.py --offset=0x140d hello.bin hello.hex
pause
echo g0140d >> hello.hex