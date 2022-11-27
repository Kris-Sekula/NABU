 ld a,0x02
 ld (0xffee),a
 out (0x00),a
 ld sp,0xffee
 ld hl,0x06c9
 ld b,0x08
 ld c,0xa1
 outi
 ld a,b
 or 0x80
 out (0xa1),a
 and 0x7f
 jr nz,0x0011
 ld hl,0xffef
 ld de,0xfff0
 ld bc,0x0009
 xor a
 ld (hl),a
 ldir
 call 0x0521
 xor a
 call 0x052a
 call 0x052a
 call 0x052a
 call 0x052a
 call 0x052a
 ld a,0x40
 call 0x052a
 ld a,0x4e
 call 0x052a
 ld a,0x04
 call 0x052a
 call 0x04e3
 call 0x0532
 jp z,0x01ca
 ld a,0x3a
 out (0x00),a
 ld h,0x0a
 ld c,0x20
 ld de,0xe000
 ld b,0x01
 call 0x0363
 jr z,0x006a
 djnz 0x006a
 jr 0x008c
 call 0x064d
 jr z,0x0061
 in a,(0x90)
 cp 0x31
 jr z,0x0082
 cp 0x3d
 jr nz,0x0061
 bit 0,h
 jr z,0x0061
 dec h
 jr z,0x0088
 jr 0x0061
 bit 0,h
 jr nz,0x0061
 jr 0x007d
 ld hl,0xffef
 inc (hl)
 ld a,(0xfff6)
 bit 0,a
 jr nz,0x0098
 call 0x04d1
 out (0x00),a
 xor a
 ld (0xffff),a
 ld ix,0x0ffd
 ld de,0xffff
 xor a
 ld h,a
 ld l,a
 ld b,a
 ld c,(ix+0)
 add hl,bc
 add ix,de
 jr c,0x00a7
 ld a,(0x0ffe)
 cp l
 jr nz,0x00bb
 ld a,(0x0fff)
 sub h
 jr z,0x00be
 call 0x04a6
 call 0x046a
 xor a
 out (0xa1),a
 ld a,0x40
 out (0xa1),a
 xor a
 ld de,0x0001
 ld ix,0xc000
 out (0xa0),a
 inc a
 add ix,de
 jr nc,0x00d0
 ld ix,0xc000
 xor a
 ld c,a
 ld b,a
 ld h,a
 ld l,a
 ld a,l
 out (0xa1),a
 ld a,h
 out (0xa1),a
 in a,(0xa0)
 cp c
 jr nz,0x0103
 ld a,l
 out (0xa1),a
 ld a,h
 or 0x40
 out (0xa1),a
 ld a,c
 cpl
 out (0xa0),a
 ld a,l
 out (0xa1),a
 ld a,h
 out (0xa1),a
 in a,(0xa0)
 cpl
 cp c
 jr z,0x0106
 call 0x04a6
 inc c
 inc hl
 ld de,0x0001
 add ix,de
 jr nc,0x00e0
 call 0x04e3
 call 0x053e
 call 0x046a
 xor a
 ld ix,0x2000
 ld hl,0x2100
 ld de,0x0001
 ld (ix+0),a
 inc a
 inc ix
 add hl,de
 jr nc,0x0123
 xor a
 ld c,a
 ld hl,0x2100
 ld ix,0x2000
 ld b,a
 ld a,(ix+0)
 cp c
 jr nz,0x0147
 cpl
 ld (ix+0),a
 ld a,(ix+0)
 cpl
 cp c
 jr z,0x014a
 call 0x04a6
 inc ix
 inc c
 add hl,de
 jr nc,0x0136
 call 0x046a
 ld b,0x10
 ld c,0x00
 ld a,b
 dec a
 out (0x41),a
 ld a,c
 out (0x40),a
 djnz 0x0157
 ld c,0x00
 ld b,0xff
 ld a,c
 out (0x41),a
 ld a,b
 out (0x40),a
 in a,(0x40)
 call 0x017e
 call nz,0x04a6
 srl b
 jr c,0x0164
 inc c
 ld a,0x0e
 cp c
 jr nz,0x0162
 jr 0x0199
 ld hl,0x018b
 ld e,c
 ld d,0x00
 add hl,de
 and (hl)
 ld e,a
 ld a,b
 and (hl)
 cp e
 ret
 rst 0x38
 rrca
 rst 0x38
 rrca
 rst 0x38
 rrca
 rra
 rst 0x38
 rra
 rra
 rra
 rst 0x38
 rst 0x38
 rrca
 call 0x046a
 call 0x0521
 ld de,0x0000
 ld b,0x05
 ld c,0x20
 call 0x064d
 jr z,0x01c1
 in a,(0x90)
 cp 0x95
 jr nc,0x01c1
 cp 0x91
 jr c,0x01c1
 cp 0x94
 jr z,0x01bc
 call 0x04a6
 call 0x046a
 jr 0x01ca
 dec de
 ld a,d
 or e
 jr nz,0x01a4
 djnz 0x01a4
 jr 0x01b9
 in a,(0x80)
 call 0x0386
 jr z,0x01e3
 call 0x04a6
 jr 0x0206
 ld a,0x05
 ld (0xfff7),a
 ld (0xfffe),a
 call 0x04a6
 jr 0x01ca
 ld c,0x82
 call 0x0379
 jr nz,0x01d6
 ld a,0x01
 out (0x80),a
 call 0x067a
 in a,(0x80)
 jr nz,0x01d6
 ld (0xfff8),a
 ld c,0x10
 call 0x036c
 jr nz,0x01d6
 ld c,0xe1
 call 0x036c
 jr nz,0x01d6
 call 0x0532
 call nz,0x046a
 ld a,(0xffef)
 or a
 jp nz,0x008c
 ld a,(0xfff6)
 bit 0,a
 jr nz,0x0221
 ld a,0x02
 ld (0xffee),a
 out (0x00),a
 ld hl,0xfff8
 bit 7,(hl)
 jr z,0x029f
 ld hl,0x06d1
 call 0x056b
 ld hl,0xfff9
 ld de,0x02c7
 call 0x057c
 ld hl,0xfff9
 xor a
 ld c,a
 ld b,0x04
 ld a,(hl)
 bit 0,b
 jr z,0x024c
 sla a
 bit 4,a
 jr z,0x024c
 res 4,a
 inc a
 add a,c
 ld c,a
 inc hl
 djnz 0x023e
 and 0x0f
 cp (hl)
 jr z,0x0266
 ld hl,0x07ac
 call 0x056b
 ld c,0x90
 ld de,0xe000
 call 0x06a2
 jr 0x022e
 ld hl,0xfff9
 ld b,0x04
 ld de,0x0000
 ld a,(hl)
 sla e
 rl d
 sla e
 rl d
 sla e
 rl d
 sla e
 rl d
 add a,e
 ld e,a
 inc hl
 djnz 0x026e
 push de
 ld c,0x85
 call 0x0379
 jp nz,0x01d6
 pop de
 ld a,d
 out (0x80),a
 ld c,0x40
 call 0x064d
 ld a,e
 out (0x80),a
 call 0x05ee
 jp nz,0x01d6
 ld c,0x81
 call 0x0379
 jp nz,0x01d6
 ld a,0x8f
 out (0x80),a
 ld c,0x40
 call 0x064d
 ld a,0x05
 out (0x80),a
 call 0x05ee
 jp nz,0x01d6
 ld a,0x05
 ld (0xfff8),a
 ld hl,0x0000
 ld de,0x0000
 ld bc,0x1000
 ldir
 ld a,(0xffee)
 set 0,a
 out (0x00),a
 ld hl,0x072c
 call 0x056b
 xor a
 ld (0x1000),a
 ld (0x1001),a
 ld (0x1003),a
 inc a
 ld (0x1002),a
 ld bc,0x100b
 ld (0x1004),bc
 ld bc,0x140d
 ld (0x1008),bc
 xor a
 ld (0x140b),a
 ld (0x140c),a
 xor a
 out (0x41),a
 out (0x40),a
 call 0x068a
 call 0x03b0
 jp nz,0x01d6
 xor a
 out (0x41),a
 ld a,(0x1003)
 sla a
 sla a
 cpl
 out (0x40),a
 ld hl,(0x1004)
 ld bc,0x000b
 add hl,bc
 ld a,(hl)
 ld (0x100a),a
 ld hl,(0x1006)
 ld bc,0xffee
 add hl,bc
 push hl
 pop bc
 ld hl,(0x140b)
 add hl,bc
 ld (0x140b),hl
 ld hl,(0x1004)
 ld de,0x0010
 add hl,de
 ld de,(0x1008)
 ldir
 ld (0x1008),de
 ld a,(0x100a)
 bit 4,a
 jr nz,0x034e
 ld hl,0x1003
 inc (hl)
 jr 0x0302
 ld a,0xa5
 ld (0xfffe),a
 ld a,0x5a
 ld (0xffff),a
 ld a,0x07
 out (0x41),a
 ld a,0x7f
 out (0x40),a
 jp 0x140f
 dec de
 ld a,d
 or e
 jr z,0x036a
 xor a
 dec a
 inc a
 ret
 push bc
 call 0x067a
 pop bc
 ret nz
 in a,(0x80)
 sub c
 ret z
 ld a,0x02
 ret
 ld a,c
 out (0x80),a
 ld c,0x10
 call 0x036c
 ret nz
 ld c,0x06
 jr 0x036c
 ld b,0x04
 ld a,0x83
 push af
 out (0x80),a
 pop af
 ld c,0x10
 ld hl,0x03a4
 push hl
 call 0x036c
 cp 0x02
 jr z,0x038d
 cp 0x00
 ret z
 pop af
 djnz 0x0388
 xor a
 inc a
 ret
 ld c,0x06
 ld hl,0x03ab
 jr 0x0393
 ld c,0xe4
 pop hl
 jr 0x0393
 exx
 xor a
 dec a
 ld d,a
 ld e,a
 exx
 ld c,0x84
 call 0x0379
 ret nz
 ld b,0x04
 ld hl,0x1003
 ld c,0x40
 call 0x064d
 jr z,0x03c1
 ld a,(hl)
 out (0x80),a
 dec l
 djnz 0x03c1
 ld c,0xe4
 call 0x036c
 ret nz
 ld b,0x18
 ld de,0x0001
 ld hl,0x0000
 add hl,de
 jr nc,0x03eb
 djnz 0x03eb
 ld hl,0x06f5
 call 0x056b
 pop bc
 jp 0x02d7
 ld c,0x80
 call 0x064d
 jr z,0x03dc
 in a,(0x80)
 sub 0x91
 ret nz
 ld a,0x10
 out (0x80),a
 ld c,0x40
 call 0x064d
 jr z,0x03fb
 ld c,0x80
 call 0x064d
 ld hl,(0x1004)
 ld bc,0x0000
 res 0,e
 ld a,0x06
 out (0x80),a
 push de
 ld de,0xffff
 ld a,0x0f
 out (0x41),a
 in a,(0x40)
 bit 0,a
 jr nz,0x0428
 call 0x0363
 jr nz,0x0465
 jr 0x0417
 pop de
 in a,(0x80)
 cp 0x10
 jr nz,0x0441
 bit 0,e
 jr z,0x043d
 res 0,e
 ld (hl),a
 call 0x065d
 inc hl
 inc bc
 jr 0x0413
 set 0,e
 jr 0x0413
 bit 0,e
 jr nz,0x044d
 ld (hl),a
 call 0x065d
 inc hl
 inc bc
 jr 0x0413
 ld (0x1006),bc
 cp 0xe1
 jp nz,0x03b0
 exx
 ld a,e
 cp 0x0f
 jp nz,0x03b0
 ld a,d
 cp 0x1d
 jp nz,0x03b0
 xor a
 ret
 pop de
 pop de
 jp 0x01d6
 ld c,0x50
 ld hl,0xfff6
 bit 1,(hl)
 jr z,0x0475
 ld c,0x90
 ld de,0xcc00
 call 0x06a2
 res 1,(hl)
 ld hl,0x8000
 ld de,0x0001
 add hl,de
 jr nc,0x0483
 ld a,(0xfff7)
 ld c,a
 sub 0x05
 jr z,0x0490
 add a,0x06
 ld (0xfff7),a
 ld a,(0xfff6)
 bit 0,a
 jp nz,0x05f3
 call 0x04d1
 out (0x00),a
 ld (0xffee),a
 jp 0x05f3
 push af
 push de
 push hl
 ld a,(0xfff6)
 bit 0,a
 jr nz,0x04ba
 call 0x04d1
 or 0x10
 out (0x00),a
 ld (0xffee),a
 ld a,0x03
 ld (0xfff6),a
 ld hl,0xfff0
 ld d,0x00
 ld a,(0xfff7)
 ld e,a
 add hl,de
 inc (hl)
 jr nz,0x04cd
 dec (hl)
 pop hl
 pop de
 pop af
 ret
 ld hl,0x04dd
 ld a,(0xfff7)
 ld e,a
 ld d,0x00
 add hl,de
 ld a,(hl)
 ret
 ld hl,(0x2a0a)
 ld a,(bc)
 ld (0xaf02),hl
 out (0xa1),a
 ld a,0x41
 out (0xa1),a
 ld c,0xa0
 ld d,0x04
 ld hl,0x083c
 ld b,0xff
 otir
 dec d
 jr nz,0x04f1
 xor a
 out (0xa1),a
 ld a,0x48
 out (0xa1),a
 ld a,0x20
 ld hl,0xfc40
 ld de,0x0001
 out (0xa0),a
 add hl,de
 jr nc,0x0507
 ld b,0x07
 ld hl,0x07d3
 ld de,0x000f
 push bc
 push hl
 push de
 call 0x056b
 pop de
 pop hl
 pop bc
 add hl,de
 djnz 0x0514
 ret
 ld a,0x07
 out (0x41),a
 ld a,0x7f
 out (0x40),a
 ret
 out (0x91),a
 nop
 nop
 nop
 nop
 nop
 ret
 ld hl,0xfffe
 ld a,(hl)
 sub 0xa5
 ret nz
 inc hl
 ld a,(hl)
 sub 0x5a
 ret
 ld c,0x05
 push bc
 call 0x05f3
 pop bc
 dec c
 jp m,0x054c
 push bc
 jr 0x0541
 ld a,(0xffef)
 or a
 ret z
 ld hl,(0x07d0)
 ld (0xfff9),hl
 ld a,(0x07d2)
 ld (0xfffb),a
 ld de,(0x0ffc)
 ld (0xfffc),de
 ld hl,0xfff9
 jp 0x056b
 ld b,(hl)
 inc hl
 ld a,(hl)
 out (0xa1),a
 inc hl
 ld a,(hl)
 add a,0x48
 out (0xa1),a
 inc hl
 ld c,0xa0
 otir
 ret
 ld b,0x05
 in a,(0x91)
 bit 1,a
 jr z,0x057e
 in a,(0x90)
 push af
 sub 0x30
 jr c,0x05c2
 cp 0x0a
 jr c,0x05a3
 sub 0x07
 cp 0x0a
 jr c,0x05c2
 cp 0x10
 jr c,0x05a3
 sub 0x20
 cp 0x0a
 jr c,0x05c2
 cp 0x10
 jr nc,0x05c2
 ld c,a
 ld a,b
 or a
 jr nz,0x05ab
 pop af
 jr 0x057e
 ld a,e
 out (0xa1),a
 ld a,d
 or 0x48
 out (0xa1),a
 pop af
 cp 0x5b
 jr c,0x05ba
 sub 0x20
 out (0xa0),a
 ld (hl),c
 inc hl
 inc de
 dec b
 jr 0x057e
 pop af
 cp 0x0d
 jr z,0x05cb
 cp 0xe7
 jr nz,0x05d0
 ld a,b
 or a
 jr nz,0x057e
 ret
 cp 0x7f
 jr z,0x05d8
 cp 0xe1
 jr nz,0x057e
 ld a,b
 cp 0x05
 jr z,0x057e
 dec de
 dec hl
 inc b
 ld a,e
 out (0xa1),a
 ld a,d
 or 0x48
 out (0xa1),a
 ld a,0x20
 out (0xa0),a
 jr 0x057e
 ld c,0xe4
 jp 0x036c
 ld a,(0xffef)
 or a
 jr z,0x061c
 ld a,0x02
 ld (0xfff9),a
 ld de,0x0028
 ld b,c
 inc b
 ld hl,0x012b
 add hl,de
 djnz 0x0606
 ld (0xfffa),hl
 ld hl,0xfff0
 add hl,bc
 ld de,0xfffc
 call 0x0633
 ld hl,0xfff9
 jp 0x056b
 ld hl,0xfff0
 ld b,0x00
 add hl,bc
 ld a,(hl)
 or a
 ret z
 ld hl,0x073a
 ld de,0x0013
 inc c
 dec c
 jp z,0x056b
 add hl,de
 jr 0x062c
 ld a,(hl)
 srl a
 srl a
 srl a
 srl a
 call 0x0643
 inc de
 ld a,(hl)
 and 0x0f
 add a,0x30
 cp 0x3a
 jr c,0x064b
 add a,0x07
 ld (de),a
 ret
 ld a,0x0e
 out (0x41),a
 ld a,c
 out (0x40),a
 ld a,0x0f
 out (0x41),a
 in a,(0x40)
 bit 0,a
 ret
 push af
 exx
 xor d
 ld c,a
 ld b,0x00
 sla c
 rl b
 ld d,e
 ld iy,0x0b74
 add iy,bc
 ld a,(iy+0)
 ld e,a
 ld a,(iy+1)
 xor d
 ld d,a
 exx
 pop af
 ret
 ld de,0xffff
 call 0x0363
 ret nz
 ld c,0x80
 call 0x064d
 jr z,0x067d
 xor a
 ret
 ld a,0x07
 out (0x41),a
 ld a,0x7e
 out (0x40),a
 ld a,0x08
 out (0x41),a
 ld a,0x06
 out (0x40),a
 ld a,0x01
 out (0x41),a
 dec a
 out (0x40),a
 ret
 push af
 push hl
 push bc
 push de
 call 0x068a
 xor a
 out (0x41),a
 ld a,c
 out (0x40),a
 ld hl,0x0001
 ld b,0x04
 ex de,hl
 add hl,de
 jr nc,0x06b5
 pop hl
 push hl
 djnz 0x06b5
 ld a,0x07
 out (0x41),a
 ld a,0x7f
 out (0x40),a
 pop de
 pop bc
 pop hl
 pop af
 ret
 push af
 nop
 nop
 nop
 nop
 ld (bc),a
 ret nc
 nop
 ld hl,0x02ab
 ld d,b
 ld c,h
 ld b,l
 ld b,c
 ld d,e
 ld b,l
 jr nz,0x0730
 ld e,c
 ld d,b
 ld b,l
 jr nz,0x072a
 ld c,(hl)
 jr nz,0x0727
 ld c,b
 ld b,c
 ld c,(hl)
 ld c,(hl)
 ld b,l
 ld c,h
 jr nz,0x072f
 ld c,a
 ld b,h
 ld b,l
 jr nz,0x0711
 jr nz,0x0713
 jr nz,0x0715
 inc (hl)
 ld hl,0x5303
 ld b,l
 ld b,l
 jr nz,0x071f
 ld c,c
 ld b,(hl)
 jr nz,0x0754
 ld c,a
 ld c,l
 ld b,l
 ld d,h
 ld c,b
 ld c,c
 ld c,(hl)
 ld b,a
 jr nz,0x0752
 ld c,a
 ld b,l
 ld d,e
 jr nz,0x0767
 ld d,d
 ld c,a
 ld c,(hl)
 ld b,a
 ld (0x4920),hl
 ld c,(hl)
 jr nz,0x073a
 jr nz,0x073c
 jr nz,0x073e
 jr nz,0x0740
 ld c,a
 ld d,a
 ld c,(hl)
 ld b,l
 ld d,d
 ld d,e
 jr nz,0x076f
 ld d,l
 ld c,c
 ld b,h
 ld b,l
 dec bc
 ld hl,0x5003
 ld c,h
 ld b,l
 ld b,c
 ld d,e
 ld b,l
 jr nz,0x078e
 ld b,c
 ld c,c
 ld d,h
 djnz 0x0785
 ld bc,0x4f52
 ld c,l
 jr nz,0x0788
 ld b,c
 ld c,c
 ld c,h
 ld d,l
 ld d,d
 ld b,l
 jr nz,0x076a
 jr nz,0x076c
 jr nz,0x075e
 ld (hl),c
 ld bc,0x4956
 ld b,h
 ld b,l
 ld c,a
 jr nz,0x079d
 ld b,c
 ld c,c
 ld c,h
 ld d,l
 ld d,d
 ld b,l
 jr nz,0x077f
 jr nz,0x0771
 sbc a,c
 ld bc,0x4152
 ld c,l
 jr nz,0x07ae
 ld b,c
 ld c,c
 ld c,h
 ld d,l
 ld d,d
 ld b,l
 jr nz,0x0790
 jr nz,0x0792
 jr nz,0x0784
 pop bc
 ld bc,0x4f53
 ld d,l
 ld c,(hl)
 ld b,h
 jr nz,0x07c3
 ld b,c
 ld c,c
 ld c,h
 ld d,l
 ld d,d
 ld b,l
 jr nz,0x07a5
 jr nz,0x0797
 jp (hl)
 ld bc,0x454b
 ld e,c
 ld b,d
 ld c,a
 ld b,c
 ld d,d
 ld b,h
 jr nz,0x07d9
 ld b,c
 ld c,c
 ld c,h
 ld d,l
 ld d,d
 ld b,l
 djnz 0x07ac
 ld (bc),a
 ld b,c
 ld b,h
 ld b,c
 ld d,b
 ld d,h
 ld c,a
 ld d,d
 jr nz,0x07eb
 ld b,c
 ld c,c
 ld c,h
 ld d,l
 ld d,d
 ld b,l
 jr nz,0x07ce
 xor e
 ld (bc),a
 ld d,d
 ld b,l
 dec l
 ld d,h
 ld e,c
 ld d,b
 ld b,l
 jr nz,0x07fb
 ld c,b
 ld b,c
 ld c,(hl)
 ld c,(hl)
 ld b,l
 ld c,h
 jr nz,0x0803
 ld c,a
 ld b,h
 ld b,l
 jr nz,0x07e5
 jr nz,0x07e7
 jr nz,0x07e9
 jr nz,0x07eb
 jr nz,0x07ed
 jr nz,0x07ef
 jr nz,0x07d3
 ld e,d
 inc bc
 inc c
 dec c
 nop
 ld e,e
 ld e,h
 ld e,h
 ld e,h
 ld e,h
 ld e,h
 ld e,h
 ld e,h
 ld e,h
 ld e,h
 ld e,h
 ld e,l
 inc c
 dec (hl)
 nop
 ld e,(hl)
 ld e,(hl)
 ld e,(hl)
 ld e,(hl)
 ld e,(hl)
 ld e,(hl)
 ld e,(hl)
 ld e,(hl)
 ld e,(hl)
 ld e,(hl)
 ld e,(hl)
 ld e,(hl)
 inc c
 ld e,l
 nop
 ld e,a
 ld h,b
 ld h,c
 ld h,d
 ld h,e
 ld h,h
 ld h,l
 ld h,(hl)
 ld h,a
 ld l,b
 ld l,c
 ld l,d
 inc c
 add a,l
 nop
 ld l,e
 ld l,h
 ld l,l
 ld l,(hl)
 ld l,a
 ld (hl),b
 ld (hl),c
 ld (hl),d
 ld (hl),e
 ld (hl),h
 ld (hl),l
 halt
 inc c
 xor l
 nop
 ld (hl),a
 ld a,b
 ld a,c
 ld a,d
 ld a,e
 ld a,h
 ld a,l
 ld a,(hl)
 ld a,a
 add a,b
 add a,c
 add a,d
 inc c
 push de
 nop
 add a,e
 add a,e
 add a,e
 add a,e
 add a,e
 add a,e
 add a,e
 add a,e
 add a,e
 add a,e
 add a,e
 add a,e
 inc c
 defb 0xfd
 nop
 add a,h
 add a,l
 add a,l
 add a,l
 add a,l
 add a,l
 add a,l
 add a,l
 add a,l
 add a,l
 add a,l
 add a,(hl)
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 djnz 0x0856
 djnz 0x0858
 djnz 0x084a
 djnz 0x084c
 jr z,0x0876
 nop
 nop
 nop
 nop
 nop
 nop
 jr z,0x087e
 ld a,h
 jr z,0x08d5
 jr z,0x0883
 nop
 jr c,0x08b2
 ld d,b
 jr c,0x0875
 ld d,h
 jr c,0x0864
 ld h,b
 ld h,h
 ex af,af'
 djnz 0x0889
 ld l,h
 inc c
 nop
 djnz 0x0896
 jr z,0x08a0
 ld d,b
 ld c,h
 ld a,h
 nop
 jr nc,0x08a6
 djnz 0x08d8
 nop
 nop
 nop
 nop
 djnz 0x089e
 ld b,b
 ld b,b
 ld b,b
 jr nz,0x0893
 nop
 ld b,b
 jr nz,0x0897
 djnz 0x0899
 jr nz,0x08cb
 nop
 nop
 ld d,h
 jr c,0x090c
 jr c,0x08e6
 djnz 0x0894
 nop
 nop
 djnz 0x08a8
 ld a,h
 djnz 0x08ab
 nop
 nop
 nop
 nop
 nop
 jr nc,0x08d2
 djnz 0x0904
 nop
 nop
 nop
 nop
 jr c,0x08aa
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 jr 0x08cb
 nop
 inc b
 inc b
 ex af,af'
 jr 0x08e9
 jr nz,0x08fb
 nop
 jr c,0x0902
 ld c,h
 ld d,h
 ld h,h
 ld b,h
 jr c,0x08c4
 djnz 0x08f6
 djnz 0x08d8
 djnz 0x08da
 jr c,0x08cc
 jr nc,0x0916
 ld c,b
 jr 0x0901
 jr nz,0x094b
 nop
 jr nc,0x091e
 ex af,af'
 djnz 0x08e1
 ld c,b
 jr nc,0x08dc
 djnz 0x090e
 jr nc,0x0930
 ld d,b
 ld a,b
 djnz 0x08e4
 ld a,b
 ld b,b
 ld d,b
 ld l,b
 ex af,af'
 ld c,b
 jr nc,0x08ec
 jr nc,0x0916
 ld b,b
 ld (hl),b
 ld l,b
 ld c,b
 jr nc,0x08f4
 ld a,b
 ld c,b
 ex af,af'
 djnz 0x0929
 jr nz,0x091b
 nop
 jr nc,0x0946
 ld c,b
 jr nc,0x0949
 ld c,b
 jr nc,0x0904
 jr nc,0x094e
 ld c,b
 jr c,0x0911
 ld d,b
 jr nc,0x090c
 nop
 nop
 jr nc,0x0940
 nop
 jr nc,0x0943
 nop
 nop
 nop
 jr nc,0x0948
 nop
 jr nc,0x092b
 ld b,b
 ex af,af'
 djnz 0x093f
 ld b,b
 jr nz,0x0932
 ex af,af'
 nop
 nop
 nop
 nop
 ld a,b
 nop
 ld a,b
 nop
 nop
 ld b,b
 jr nz,0x093f
 ex af,af'
 djnz 0x0952
 ld b,b
 nop
 jr nc,0x097e
 ld c,b
 djnz 0x0959
 jr nz,0x093b
 jr nz,0x097d
 jr c,0x0943
 jr c,0x0949
 jr c,0x098b
 inc (hl)
 djnz 0x096e
 ld b,h
 ld b,h
 ld a,h
 ld b,h
 ld b,h
 nop
 ld a,b
 ld b,h
 ld b,h
 ld a,b
 ld b,h
 ld b,h
 ld a,b
 nop
 jr c,0x099a
 ld b,b
 ld b,b
 ld b,b
 ld b,h
 jr c,0x095c
 ld (hl),b
 ld c,b
 ld b,h
 ld b,h
 ld b,h
 ld c,b
 ld (hl),b
 nop
 ld a,h
 ld b,b
 ld b,b
 ld (hl),b
 ld b,b
 ld b,b
 ld a,h
 nop
 ld a,h
 ld b,b
 ld b,b
 ld (hl),b
 ld b,b
 ld b,b
 ld b,b
 nop
 jr c,0x09ba
 ld b,h
 ld b,b
 ld e,h
 ld b,h
 inc a
 nop
 ld b,h
 ld b,h
 ld b,h
 ld a,h
 ld b,h
 ld b,h
 ld b,h
 nop
 jr c,0x0996
 djnz 0x0998
 djnz 0x099a
 jr c,0x098c
 inc e
 ex af,af'
 ex af,af'
 ex af,af'
 ld c,b
 ld c,b
 jr nc,0x0994
 ld c,b
 ld c,b
 ld d,b
 ld (hl),b
 ld d,b
 ld c,b
 ld c,h
 nop
 ld b,b
 ld b,b
 ld b,b
 ld b,b
 ld b,b
 ld b,b
 ld a,h
 nop
 ld l,h
 ld d,h
 ld d,h
 ld b,h
 ld b,h
 ld b,h
 ld b,h
 nop
 ld b,h
 ld h,h
 ld h,h
 ld d,h
 ld d,h
 ld c,h
 ld c,h
 nop
 jr c,0x09fa
 ld b,h
 ld b,h
 ld b,h
 ld b,h
 jr c,0x09bc
 ld a,b
 ld b,h
 ld b,h
 ld a,b
 ld b,b
 ld b,b
 ld b,b
 nop
 jr c,0x0a0a
 ld b,h
 ld b,h
 ld d,h
 ld c,b
 inc (hl)
 nop
 ld a,b
 ld c,b
 ld c,b
 ld a,b
 ld d,b
 ld c,b
 ld c,h
 nop
 jr c,0x0a1a
 ld b,b
 jr c,0x09dd
 ld b,h
 jr c,0x09dc
 ld a,h
 djnz 0x09ef
 djnz 0x09f1
 djnz 0x09f3
 nop
 ld b,h
 ld b,h
 ld b,h
 ld b,h
 ld b,h
 ld b,h
 jr c,0x09ec
 ld b,h
 ld b,h
 ld b,h
 jr z,0x0a19
 jr z,0x0a03
 nop
 ld b,h
 ld b,h
 ld b,h
 ld b,h
 ld d,h
 ld d,h
 jr z,0x09fc
 ld b,h
 ld b,h
 jr z,0x0a10
 jr z,0x0a46
 ld b,h
 nop
 ld b,h
 ld b,h
 ld b,h
 jr c,0x0a19
 djnz 0x0a1b
 nop
 ld a,h
 inc c
 jr 0x0a20
 jr nz,0x0a72
 ld a,h
 nop
 nop
 nop
 nop
 inc a
 ld a,h
 nop
 nop
 call m,0x00fc
 nop
 call m,0x00fc
 nop
 call m,0x0000
 nop
 ret p
 ret m
 nop
 nop
 call m,0xfcfc
 nop
 call m,0xfcfc
 call m,0xfc00
 call m,0xf0f0
 ret p
 ret p
 ret p
 ret p
 call m,0x0cfc
 inc c
 inc c
 inc b
 inc b
 inc b
 call m,0xe0fc
 ret po
 ret po
 ret po
 ret po
 ret po
 call m,0x7cfc
 ld a,h
 ld a,h
 ld a,h
 ld a,h
 ld a,h
 call m,0x80fc
 add a,b
 add a,b
 jr 0x0a73
 jr 0x0a59
 call m,0x7c7c
 ld a,h
 inc a
 inc a
 inc a
 call m,0x80fc
 add a,b
 add a,b
 add a,b
 add a,b
 add a,b
 call m,0x00fc
 nop
 nop
 ld h,b
 ld (hl),b
 ld (hl),b
 call m,0x78fc
 jr c,0x0a91
 ex af,af'
 ex af,af'
 ex af,af'
 call m,0x04fc
 inc b
 inc b
 inc b
 inc b
 inc b
 call m,0xc0fc
 ret nz
 ret nz
 ret nz
 ret nz
 ret nz
 call m,0x3cfc
 inc a
 inc a
 inc a
 inc a
 inc a
 ret p
 ret p
 ret p
 ret p
 ret p
 ret p
 ret p
 ret p
 nop
 nop
 jr nz,0x0ad0
 jr nc,0x0ada
 jr c,0x0ae0
 ret po
 ret po
 ret po
 ld h,b
 ld h,b
 ld h,b
 jr nz,0x0acc
 ld a,b
 ld a,b
 ld a,b
 ld (hl),b
 ld (hl),b
 ld (hl),b
 ld h,b
 ld h,b
 jr 0x0af2
 inc a
 inc a
 inc a
 nop
 nop
 nop
 inc e
 inc e
 inc e
 inc c
 inc c
 inc c
 inc b
 inc b
 add a,b
 add a,b
 add a,b
 add a,b
 add a,b
 add a,b
 add a,b
 add a,b
 ld h,b
 ld h,b
 nop
 inc b
 nop
 ld h,b
 ld h,b
 ld (hl),b
 jr 0x0b0e
 ld a,b
 ret m
 ld a,b
 jr c,0x0af3
 ex af,af'
 inc b
 inc b
 inc b
 inc b
 inc b
 inc b
 inc b
 inc b
 ret nz
 ret nz
 ret nz
 ret nz
 ret nz
 ret nz
 ret nz
 ret nz
 inc a
 inc a
 inc a
 inc a
 inc a
 inc a
 inc a
 inc a
 ret p
 ret p
 ret p
 ret p
 ret p
 call m,0x00fc
 inc a
 inc a
 inc a
 inc a
 inc a
 call m,0x00fc
 nop
 nop
 add a,b
 add a,b
 add a,b
 call m,0x00fc
 ld h,b
 ld b,b
 ld b,b
 ld b,b
 ld b,b
 call m,0x00fc
 nop
 jr 0x0b2f
 inc a
 inc a
 call m,0x00fc
 inc b
 nop
 nop
 nop
 nop
 call m,0x00fc
 add a,b
 add a,b
 add a,b
 add a,b
 add a,b
 call m,0x00fc
 ld (hl),b
 ld h,b
 nop
 nop
 nop
 call m,0x00fc
 ex af,af'
 ex af,af'
 inc e
 inc a
 ld a,h
 call m,0x00fc
 inc b
 nop
 nop
 add a,b
 ret nz
 call m,0x00fc
 ret nz
 add a,b
 nop
 nop
 inc b
 call m,0x00fc
 inc a
 inc a
 ld a,h
 call m,0xfcfc
 call m,0xfc00
 call m,0xfcfc
 nop
 call m,0xfcfc
 nop
 nop
 ld a,h
 inc a
 nop
 nop
 nop
 nop
 nop
 nop
 call m,0x00fc
 nop
 call m,0x0000
 nop
 ret m
 ret p
 nop
 nop
 nop
 nop
 nop
 nop
 ld hl,0x4210
 jr nz,0x0bde
 jr nc,0x0b01
 ld b,b
 and l
 ld d,b
 add a,0x60
 rst 0x20
 ld (hl),b
 ex af,af'
 add a,c
 add hl,hl
 sub c
 ld c,d
 and c
 ld l,e
 or c
 adc a,h
 pop bc
 xor l
 pop de
 adc a,0xe1
 rst 0x28
 pop af
 ld sp,0x1012
 ld (bc),a
 ld (hl),e
 ld (0x2252),a
 or l
 ld d,d
 sub h
 ld b,d
 rst 0x30
 ld (hl),d
 sub 0x62
 add hl,sp
 sub e
 jr 0x0b2b
 ld a,e
 or e
 ld e,d
 and e
 cp l
 out (0x9c),a
 jp 0xf3ff
 sbc a,0xe3
 ld h,d
 inc h
 ld b,e
 inc (hl)
 jr nz,0x0bbe
 ld bc,0xe614
 ld h,h
 rst 0x00
 ld (hl),h
 and h
 ld b,h
 add a,l
 ld d,h
 ld l,d
 and l
 ld c,e
 or l
 jr z,0x0b4f
 add hl,bc
 sub l
 xor 0xe5
 rst 0x08
 push af
 xor h
 push bc
 adc a,l
 push de
 ld d,e
 ld (hl),0x72
 ld h,0x11
 ld d,0x30
 ld b,0xd7
 halt
 or 0x66
 sub l
 ld d,(hl)
 or h
 ld b,(hl)
 ld e,e
 or a
 ld a,d
 and a
 add hl,de
 sub a
 jr c,0x0b73
 rst 0x18
 rst 0x30
 cp 0xe7
 sbc a,l
 rst 0x10
 cp h
 rst 0x00
 call nz,0xe548
 ld e,b
 add a,(hl)
 ld l,b
 and a
 ld a,b
 ld b,b
 ex af,af'
 ld h,c
 jr 0x0c03
 jr z,0x0c26
 jr c,0x0bd1
 ret
 defb 0xed, 0xd9
 adc a,(hl)
 jp (hl)
 xor a
 ld sp,hl
 ld c,b
 adc a,c
 ld l,c
 sbc a,c
 ld a,(bc)
 xor c
 dec hl
 cp c
 push af
 ld e,d
 call nc,0xb74a
 ld a,d
 sub (hl)
 ld l,d
 ld (hl),c
 ld a,(de)
 ld d,b
 ld a,(bc)
 inc sp
 ld a,(0x2a12)
 defb 0xfd
 in a,(0xdc)
 res 7,a
 ei
 sbc a,(hl)
 ex de,hl
 ld a,c
 sbc a,e
 ld e,b
 adc a,e
 dec sp
 cp e
 ld a,(de)
 xor e
 and (hl)
 ld l,h
 add a,a
 ld a,h
 call po,0xc54c
 ld e,h
 ld (0x032c),hl
 inc a
 ld h,b
 inc c
 ld b,c
 inc e
 xor (hl)
 defb 0xed, 0x8f
 defb 0xfd
 call pe,0xcdcd
 ld ix,(0x0bad)
 cp l
 ld l,b
 adc a,l
 ld c,c
 sbc a,l
 sub a
 ld a,(hl)
 or (hl)
 ld l,(hl)
 push de
 ld e,(hl)
 call p,0x134e
 ld a,0x32
 ld l,0x51
 ld e,0x70
 ld c,0x9f
 rst 0x38
 cp (hl)
 rst 0x28
 defb 0xdd
 rst 0x18
 call m,0x1bcf
 cp a
 ld a,(0x59af)
 sbc a,a
 ld a,b
 adc a,a
 adc a,b
 sub c
 xor c
 add a,c
 jp z,0xebb1
 and c
 inc c
 pop de
 dec l
 pop bc
 ld c,(hl)
 pop af
 ld l,a
 pop hl
 add a,b
 djnz 0x0c28
 nop
 jp nz,0xe330
 jr nz,0x0c91
 ld d,b
 dec h
 ld b,b
 ld b,(hl)
 ld (hl),b
 ld h,a
 ld h,b
 cp c
 add a,e
 sbc a,b
 sub e
 ei
 and e
 jp c,0x3db3
 jp 0xd31c
 ld a,a
 ex (sp),hl
 ld e,(hl)
 di
 or c
 ld (bc),a
 sub b
 ld (de),a
 di
 ld (0x32d2),hl
 dec (hl)
 ld b,d
 inc d
 ld d,d
 ld (hl),a
 ld h,d
 ld d,(hl)
 ld (hl),d
 jp pe,0xcbb5
 and l
 xor b
 sub l
 adc a,c
 add a,l
 ld l,(hl)
 push af
 ld c,a
 push hl
 inc l
 push de
 dec c
 push bc
 jp po,0xc334
 inc h
 and b
 inc d
 add a,c
 inc b
 ld h,(hl)
 ld (hl),h
 ld b,a
 ld h,h
 inc h
 ld d,h
 dec b
 ld b,h
 in a,(0xa7)
 jp m,0x99b7
 add a,a
 cp b
 sub a
 ld e,a
 rst 0x20
 ld a,(hl)
 rst 0x30
 dec e
 rst 0x00
 inc a
 rst 0x10
 out (0x26),a
 jp p,0x9136
 ld b,0xb0
 ld d,0x57
 ld h,(hl)
 halt
 halt
 dec d
 ld b,(hl)
 inc (hl)
 ld d,(hl)
 ld c,h
 exx
 ld l,l
 ret
 ld c,0xf9
 cpl
 jp (hl)
 ret z
 sbc a,c
 jp (hl)
 adc a,c
 adc a,d
 cp c
 xor e
 xor c
 ld b,h
 ld e,b
 ld h,l
 ld c,b
 ld b,0x78
 daa
 ld l,b
 ret nz
 jr 0x0cf0
 ex af,af'
 add a,d
 jr c,0x0cb6
 jr z,0x0d92
 bit 3,h
 in a,(0x3f)
 ex de,hl
 ld e,0xfb
 ld sp,hl
 adc a,e
 ret c
 sbc a,e
 cp e
 xor e
 sbc a,d
 cp e
 ld (hl),l
 ld c,d
 ld d,h
 ld e,d
 scf
 ld l,d
 ld d,0x7a
 pop af
 ld a,(bc)
 ret nc
 ld a,(de)
 or e
 ld hl,(0x3a92)
 ld l,0xfd
 rrca
 defb 0xed, 0x6c
 ld c,ixl
 call 0xbdaa
 adc a,e
 xor l
 ret pe
 sbc a,l
 ret
 adc a,l
 ld h,0x7c
 rlca
 ld l,h
 ld h,h
 ld e,h
 ld b,l
 ld c,h
 and d
 inc a
 add a,e
 inc l
 ret po
 inc e
 pop bc
 inc c
 rra
 rst 0x28
 ld a,0xff
 ld e,l
 rst 0x08
 ld a,h
 rst 0x18
 sbc a,e
 xor a
 cp d
 cp a
 exx
 adc a,a
 ret m
 sbc a,a
 rla
 ld l,(hl)
 ld (hl),0x7e
 ld d,l
 ld c,(hl)
 ld (hl),h
 ld e,(hl)
 sub e
 ld l,0xb2
 ld a,0xd1
 ld c,0xf0
 ld e,0x00
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 dec bc
 inc d
 jr nc,0x1034
 rst 0x08
 dec sp
