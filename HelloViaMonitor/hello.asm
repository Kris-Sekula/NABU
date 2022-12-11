DATAP    EQU $A0       ; VDP Data port
CMDP     EQU $A1       ; VDP Command port 
AY       EQU $40       ; VDP Data port
KBPORT   EQU $90       ; keyboard data port
HCCA     EQU $80       ; Network adapter

        ORG $140D

       ; DI ; We don't know, how interrupts works in this system, so we disable them.

;        CALL    KBD_CTRL_OUT 
;        CALL    KBD_CTRL_OUT 
;        CALL    KBD_CTRL_OUT 
;        CALL    KBD_CTRL_OUT 
;        CALL    KBD_CTRL_OUT 
;        LD      a, $40 
;        CALL    KBD_CTRL_OUT ; write $40 to Kbd statuscontrol = internal reset
;        LD      a, $4e 
;        CALL    KBD_CTRL_OUT ; write $4e to Kbd statuscontrol = 8N1, 16x
;        LD      a, $04 
;        CALL    KBD_CTRL_OUT ; write $04 to Kbd statuscontrol = only receive enable
       
        ; Let's set VDP write address to #0000
        XOR A
        OUT (CMDP),A
        LD A,#40
        OUT (CMDP),A

        ; Now let's clear first 16Kb of VDP memory
        LD B,0
        LD HL,#3FFF
        LD C,DATAP
CLEAR:
        OUT (C),B
        DEC HL
        LD A,H
        OR L
        NOP ; Let's wait 8 clock cycles just in case VDP is not quick enough.
        NOP
        JR NZ, CLEAR

    ;----------------------------------------
    ; Register 0 (0x80) to #0
    ;
    ; Set mode selection bit M3 (maybe also M4 & M5) to zero and
    ; disable external video & horizontal interrupt
    LD C,CMDP
    LD E,#80
    
    OUT (C),A
    OUT (C),E
    ;----------------------------------------
    ; Register 1 (0x81) to #50
    ;
    ; Select 40 column mode, enable screen and disable vertical interrupt
    
    LD A,#50
    INC E
    OUT (C),A
    OUT (C),E
    ;----------------------------------------
    ; Register 2 (0x82) to #0
    ;
    ; Set pattern name table to #0000
    
    XOR A
    INC E
    OUT (C),A
    OUT (C),E
    ;----------------------------------------
    ; Register 3 (0x83) is ignored as 40 column mode does not need color table
    ;
    INC E
    ;----------------------------------------
    ; Register 4 (0x84) to #1
    ; Set pattern generator table to #800
    
    INC A
    INC E
    
    OUT (C),A
    OUT (C),E
    ;----------------------------------------
    ; Registers 5 (0x85) (Sprite attribute) & 6 (Sprite pattern) are ignored
    ; as 40 column mode does not have sprites
    
    INC E
    INC E
    ;----------------------------------------
    ; Register 7 (0x87) for color FORE/BACK

;    LD A,#F2 ;  light blue
;    LD A,#F3 ;  light blue
;    LD A,#F4 ;  blue
;    LD A,#F5 ; nabu blue
;    LD A,#F7 ; blue 
;    LD A,#F8 ; poops1 
;    LD A,#F9 ; poops2  
;    LD A,#FC ; blue/green
;    LD A,$FA ; yellow/green
;    LD A,#FF ; white
     LD A,#F0 ; white on black
    INC E
    OUT (C),A
    OUT (C),E
    ;----------------------------------------
        
    ; Let's set VDP write address to #808 so, that we can write
    ; character set to memory
    ; (No need to write SPACE it is clear char already)
    LD A,8
    OUT (C),A
    LD A,#48
    OUT (C),A
    
    ; Let's copy character set
    LD HL,CHARS
    LD B, CHARS_END-CHARS
COPYCHARS:
    LD A,(HL)
    OUT (DATAP),A
    INC HL
    NOP ; Let's wait 8 clock cycles just in case VDP is not quick enough.
    NOP
    DJNZ COPYCHARS

    ; Let's set write address to start of name table
    XOR A
    OUT (C),A
    LD A,#40
    OUT (C),A
    
    ; Let's put characters to screen
    LD HL,ORDER
    LD B,ORDER_END-ORDER
COPYORDER:
    LD A,(HL)
    OUT (DATAP),A
    INC HL

    JR OVERNMI
    NOP
    NOP
    
    ; Here is address #66, that is entry for NMI
    RETN ;Return from NMI

OVERNMI:
    DJNZ COPYORDER

    ; The end
    halt
GETKEY
      
            IN      a, (KBPORT+1) 
            BIT     1, a 
            JP      z, GETKEY
            
            IN      a, (KBPORT) 
            OUT     (HCCA), a
            PUSH    af 
            SUB     $30                 ; subtract 0x30 to make the keyboard code into characters (see ascii chart)
            ;JR      c, EXIT             ;jmp if  0 pressed
            JP GETKEY
EXIT
      JP ($FFEE)



KBD_CTRL_OUT  
            OUT     (KBPORT + 1),a 
            NOP      
            NOP      
            NOP      
            NOP      
            NOP      
            RET      

        ; Character set:
; --------------
ORDER:
    DEFB 1,2,3,3,4,0,5,4,6,3,7,8,0,0,9
ORDER_END:

CHARS:

    ; H 1
    DEFB %10001000
    DEFB %10001000
    DEFB %10001000
    DEFB %11111000
    DEFB %10001000
    DEFB %10001000
    DEFB %10001000
    DEFB %00000000
    ; e 2
    DEFB %00000000
    DEFB %00000000
    DEFB %01110000
    DEFB %10001000
    DEFB %11111000
    DEFB %10000000
    DEFB %01110000
    DEFB %00000000
    ; l 3
    DEFB %01100000
    DEFB %00100000
    DEFB %00100000
    DEFB %00100000
    DEFB %00100000
    DEFB %00100000
    DEFB %01110000
    DEFB %00000000
    ; o 4
    DEFB %00000000
    DEFB %00000000
    DEFB %01110000
    DEFB %10001000
    DEFB %10001000
    DEFB %10001000
    DEFB %01110000
    DEFB %00000000
    ; W 5
    DEFB %10001000
    DEFB %10001000
    DEFB %10001000
    DEFB %10101000
    DEFB %10101000
    DEFB %11011000
    DEFB %10001000
    DEFB %00000000
    
    ; r 6
    DEFB %00000000
    DEFB %00000000
    DEFB %10110000
    DEFB %11001000
    DEFB %10000000
    DEFB %10000000
    DEFB %10000000
    DEFB %00000000
    ; d 7
    DEFB %00001000
    DEFB %00001000
    DEFB %01101000
    DEFB %10011000
    DEFB %10001000
    DEFB %10011000
    DEFB %01101000
    DEFB %00000000
    ; ! 8
    DEFB %00011000
    DEFB %00011000
    DEFB %00011000
    DEFB %00001000
    DEFB %00001000
    DEFB %00001000
    DEFB %00000000
    DEFB %00001000
    ; TEST 9
    DEFB %10000001
    DEFB %00000000
    DEFB %00000000
    DEFB %00000000
    DEFB %00000000
    DEFB %00000000
    DEFB %00000000
    DEFB %10000001
CHARS_END:

