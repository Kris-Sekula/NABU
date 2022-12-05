; z80dasm 1.1.5
; command line: z80dasm -l -g 0x0000 -o nabu_4k.asm rom4k.bin

	org	00000h

l0000h:
	ld a,002h
	ld (0ffeeh),a
	out (000h),a
	ld sp,0ffeeh
	ld hl,l06c9h
	ld b,008h
l000fh:
	ld c,0a1h
l0011h:
	outi
l0013h:
	ld a,b	
	or 080h
	out (0a1h),a
	and 07fh
	jr nz,l0011h
	ld hl,0ffefh
	ld de,0fff0h
	ld bc,00009h
	xor a	
	ld (hl),a	
	ldir
	call sub_0521h
	xor a	
	call sub_052ah
	call sub_052ah
	call sub_052ah
	call sub_052ah
	call sub_052ah
	ld a,040h
	call sub_052ah
	ld a,04eh
	call sub_052ah
	ld a,004h
	call sub_052ah
	call 004e3h
	call sub_0532h
	jp z,l01cah
	ld a,03ah
	out (000h),a
	ld h,00ah
	ld c,020h
	ld de,0e000h
	ld b,001h
l0061h:
	call sub_0363h
	jr z,l006ah
	djnz l006ah
	jr l008ch
l006ah:
	call sub_064dh
	jr z,l0061h
	in a,(090h)
	cp 031h
	jr z,l0082h
	cp 03dh
	jr nz,l0061h
	bit 0,h
	jr z,l0061h
l007dh:
	dec h	
	jr z,l0088h
	jr l0061h
l0082h:
	bit 0,h
	jr nz,l0061h
	jr l007dh
l0088h:
	ld hl,0ffefh
	inc (hl)	
l008ch:
	ld a,(0fff6h)
	bit 0,a
	jr nz,l0098h
	call sub_04d1h
	out (000h),a
l0098h:
	xor a	
	ld (0ffffh),a
	ld ix,l0ffch+1
	ld de,0ffffh
	xor a	
	ld h,a	
	ld l,a	
	ld b,a	
l00a7h:
	ld c,(ix+000h)
	add hl,bc	
	add ix,de
	jr c,l00a7h
	ld a,(l0ffeh)
	cp l	
	jr nz,l00bbh
	ld a,(l0fffh)
	sub h	
	jr z,l00beh
l00bbh:
	call sub_04a6h
l00beh:
	call sub_046ah
	xor a	
	out (0a1h),a
	ld a,040h
	out (0a1h),a
	xor a	
	ld de,l0000h+1
	ld ix,0c000h
l00d0h:
	out (0a0h),a
	inc a	
	add ix,de
	jr nc,l00d0h
	ld ix,0c000h
	xor a	
	ld c,a	
	ld b,a	
	ld h,a	
	ld l,a	
l00e0h:
	ld a,l	
	out (0a1h),a
	ld a,h	
	out (0a1h),a
	in a,(0a0h)
	cp c	
	jr nz,l0103h
	ld a,l	
	out (0a1h),a
	ld a,h	
	or 040h
	out (0a1h),a
	ld a,c	
	cpl	
	out (0a0h),a
	ld a,l	
	out (0a1h),a
	ld a,h	
	out (0a1h),a
	in a,(0a0h)
	cpl	
	cp c	
	jr z,l0106h
l0103h:
	call sub_04a6h
l0106h:
	inc c	
	inc hl	
	ld de,l0000h+1
	add ix,de
	jr nc,l00e0h
	call 004e3h
	call sub_053eh
	call sub_046ah
	xor a	
	ld ix,02000h
	ld hl,02100h
	ld de,l0000h+1
l0123h:
	ld (ix+000h),a
	inc a	
	inc ix
	add hl,de	
	jr nc,l0123h
	xor a	
	ld c,a	
	ld hl,02100h
	ld ix,02000h
	ld b,a	
l0136h:
	ld a,(ix+000h)
	cp c	
	jr nz,l0147h
	cpl	
	ld (ix+000h),a
	ld a,(ix+000h)
	cpl	
	cp c	
	jr z,l014ah
l0147h:
	call sub_04a6h
l014ah:
	inc ix
	inc c	
	add hl,de	
	jr nc,l0136h
	call sub_046ah
	ld b,010h
	ld c,000h
l0157h:
	ld a,b	
	dec a	
	out (041h),a
	ld a,c	
	out (040h),a
	djnz l0157h
	ld c,000h
l0162h:
	ld b,0ffh
l0164h:
	ld a,c	
	out (041h),a
	ld a,b	
	out (040h),a
	in a,(040h)
	call sub_017eh
	call nz,sub_04a6h
	srl b
	jr c,l0164h
	inc c	
	ld a,00eh
	cp c	
	jr nz,l0162h
	jr l0199h
sub_017eh:
	ld hl,l018bh
	ld e,c	
	ld d,000h
	add hl,de	
	and (hl)	
	ld e,a	
	ld a,b	
	and (hl)	
	cp e	
	ret	
l018bh:
	rst 38h	
	rrca	
	rst 38h	
	rrca	
	rst 38h	
	rrca	
	rra	
	rst 38h	
	rra	
	rra	
	rra	
	rst 38h	
	rst 38h	
	rrca	
l0199h:
	call sub_046ah
	call sub_0521h
	ld de,l0000h
	ld b,005h
l01a4h:
	ld c,020h
	call sub_064dh
	jr z,l01c1h
	in a,(090h)
	cp 095h
	jr nc,l01c1h
	cp 091h
	jr c,l01c1h
	cp 094h
	jr z,l01bch
l01b9h:
	call sub_04a6h
l01bch:
	call sub_046ah
	jr l01cah
l01c1h:
	dec de	
	ld a,d	
	or e	
	jr nz,l01a4h
	djnz l01a4h
	jr l01b9h
l01cah:
	in a,(080h)
	call sub_0386h
	jr z,l01e3h
	call sub_04a6h
	jr l0206h
l01d6h:
	ld a,005h
	ld (0fff7h),a
	ld (0fffeh),a
	call sub_04a6h
	jr l01cah
l01e3h:
	ld c,082h
	call sub_0379h
	jr nz,l01d6h
	ld a,001h
	out (080h),a
	call sub_067ah
	in a,(080h)
	jr nz,l01d6h
	ld (0fff8h),a
	ld c,010h
	call sub_036ch
	jr nz,l01d6h
	ld c,0e1h
	call sub_036ch
	jr nz,l01d6h
l0206h:
	call sub_0532h
	call nz,sub_046ah
	ld a,(0ffefh)
	or a	
	jp nz,l008ch
	ld a,(0fff6h)
	bit 0,a
	jr nz,l0221h
	ld a,002h
	ld (0ffeeh),a
	out (000h),a
l0221h:
	ld hl,0fff8h
	bit 7,(hl)
	jr z,l029fh
	ld hl,l06d1h
	call sub_056bh
l022eh:
	ld hl,0fff9h
	ld de,002c7h
	call sub_057ch
	ld hl,0fff9h
	xor a	
	ld c,a	
	ld b,004h
l023eh:
	ld a,(hl)	
	bit 0,b
	jr z,l024ch
	sla a
	bit 4,a
	jr z,l024ch
	res 4,a
	inc a	
l024ch:
	add a,c	
	ld c,a	
	inc hl	
	djnz l023eh
	and 00fh
	cp (hl)	
	jr z,l0266h
	ld hl,007ach
	call sub_056bh
	ld c,090h
	ld de,0e000h
	call sub_06a2h
	jr l022eh
l0266h:
	ld hl,0fff9h
	ld b,004h
	ld de,l0000h
l026eh:
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
	djnz l026eh
	push de	
	ld c,085h
	call sub_0379h
	jp nz,l01d6h
	pop de	
	ld a,d	
	out (080h),a
	ld c,040h
	call sub_064dh
	ld a,e	
	out (080h),a
	call sub_05eeh
	jp nz,l01d6h
l029fh:
	ld c,081h
	call sub_0379h
	jp nz,l01d6h
	ld a,08fh
	out (080h),a
l02abh:
	ld c,040h
	call sub_064dh
	ld a,005h
	out (080h),a
	call sub_05eeh
	jp nz,l01d6h
	ld a,005h
	ld (0fff8h),a
	ld hl,l0000h
	ld de,l0000h
	ld bc,01000h
	ldir
	ld a,(0ffeeh)
	set 0,a
	out (000h),a
	ld hl,l072ch
	call sub_056bh
l02d7h:
	xor a	
	ld (01000h),a
	ld (01001h),a
	ld (01003h),a
	inc a	
	ld (01002h),a
	ld bc,0100bh
	ld (01004h),bc
	ld bc,0140dh
	ld (01008h),bc
	xor a	
	ld (0140bh),a
	ld (0140ch),a
	xor a	
	out (041h),a
	out (040h),a
	call sub_068ah
l0302h:
	call sub_03b0h
	jp nz,l01d6h
	xor a	
	out (041h),a
	ld a,(01003h)
	sla a
	sla a
	cpl	
	out (040h),a
	ld hl,(01004h)
	ld bc,0000bh
	add hl,bc	
	ld a,(hl)	
	ld (0100ah),a
	ld hl,(01006h)
	ld bc,0ffeeh
	add hl,bc	
	push hl	
	pop bc	
	ld hl,(0140bh)
l032ch:
	add hl,bc	
	ld (0140bh),hl
	ld hl,(01004h)
	ld de,l000fh+1
	add hl,de	
	ld de,(01008h)
	ldir
	ld (01008h),de
	ld a,(0100ah)
	bit 4,a
	jr nz,l034eh
	ld hl,01003h
	inc (hl)	
	jr l0302h
l034eh:
	ld a,0a5h
	ld (0fffeh),a
	ld a,05ah
	ld (0ffffh),a
	ld a,007h
	out (041h),a
	ld a,07fh
	out (040h),a
	jp 0140fh
sub_0363h:
	dec de	
	ld a,d	
	or e	
	jr z,l036ah
	xor a	
	dec a	
l036ah:
	inc a	
	ret	
sub_036ch:
	push bc	
	call sub_067ah
	pop bc	
	ret nz	
	in a,(080h)
	sub c	
	ret z	
	ld a,002h
	ret	
sub_0379h:
	ld a,c	
	out (080h),a
	ld c,010h
	call sub_036ch
	ret nz	
	ld c,006h
	jr sub_036ch
sub_0386h:
	ld b,004h
l0388h:
	ld a,083h
	push af	
	out (080h),a
l038dh:
	pop af	
	ld c,010h
	ld hl,l03a4h
l0393h:
	push hl	
	call sub_036ch
	cp 002h
	jr z,l038dh
	cp 000h
	ret z	
	pop af	
	djnz l0388h
	xor a	
	inc a	
	ret	
l03a4h:
	ld c,006h
	ld hl,l03abh
	jr l0393h
l03abh:
	ld c,0e4h
	pop hl	
	jr l0393h
sub_03b0h:
	exx	
	xor a	
	dec a	
	ld d,a	
	ld e,a	
	exx	
	ld c,084h
	call sub_0379h
	ret nz	
	ld b,004h
	ld hl,01003h
l03c1h:
	ld c,040h
	call sub_064dh
	jr z,l03c1h
	ld a,(hl)	
	out (080h),a
	dec l	
	djnz l03c1h
	ld c,0e4h
	call sub_036ch
	ret nz	
	ld b,018h
	ld de,l0000h+1
	ld hl,l0000h
l03dch:
	add hl,de	
	jr nc,l03ebh
	djnz l03ebh
	ld hl,l06f5h
	call sub_056bh
	pop bc	
	jp l02d7h
l03ebh:
	ld c,080h
	call sub_064dh
	jr z,l03dch
	in a,(080h)
	sub 091h
	ret nz	
	ld a,010h
	out (080h),a
l03fbh:
	ld c,040h
	call sub_064dh
	jr z,l03fbh
	ld c,080h
	call sub_064dh
	ld hl,(01004h)
	ld bc,l0000h
	res 0,e
	ld a,006h
	out (080h),a
l0413h:
	push de	
	ld de,0ffffh
l0417h:
	ld a,00fh
	out (041h),a
	in a,(040h)
	bit 0,a
	jr nz,l0428h
	call sub_0363h
	jr nz,l0465h
	jr l0417h
l0428h:
	pop de	
	in a,(080h)
	cp 010h
	jr nz,l0441h
	bit 0,e
	jr z,l043dh
	res 0,e
	ld (hl),a	
	call sub_065dh
	inc hl	
	inc bc	
	jr l0413h
l043dh:
	set 0,e
	jr l0413h
l0441h:
	bit 0,e
	jr nz,l044dh
	ld (hl),a	
	call sub_065dh
	inc hl	
	inc bc	
	jr l0413h
l044dh:
	ld (01006h),bc
	cp 0e1h
	jp nz,sub_03b0h
	exx	
	ld a,e	
	cp 00fh
	jp nz,sub_03b0h
	ld a,d	
	cp 01dh
	jp nz,sub_03b0h
	xor a	
	ret	
l0465h:
	pop de	
	pop de	
	jp l01d6h
sub_046ah:
	ld c,050h
	ld hl,0fff6h
	bit 1,(hl)
	jr z,l0475h
	ld c,090h
l0475h:
	ld de,0cc00h
	call sub_06a2h
	res 1,(hl)
	ld hl,08000h
	ld de,l0000h+1
l0483h:
	add hl,de	
	jr nc,l0483h
	ld a,(0fff7h)
	ld c,a	
	sub 005h
	jr z,l0490h
	add a,006h
l0490h:
	ld (0fff7h),a
	ld a,(0fff6h)
	bit 0,a
	jp nz,l05f3h
	call sub_04d1h
	out (000h),a
	ld (0ffeeh),a
	jp l05f3h
sub_04a6h:
	push af	
	push de	
	push hl	
	ld a,(0fff6h)
	bit 0,a
	jr nz,l04bah
	call sub_04d1h
	or 010h
	out (000h),a
	ld (0ffeeh),a
l04bah:
	ld a,003h
	ld (0fff6h),a
	ld hl,0fff0h
	ld d,000h
	ld a,(0fff7h)
	ld e,a	
	add hl,de	
	inc (hl)	
	jr nz,l04cdh
	dec (hl)	
l04cdh:
	pop hl	
	pop de	
	pop af	
	ret	
sub_04d1h:
	ld hl,l04ddh
	ld a,(0fff7h)
	ld e,a	
	ld d,000h
	add hl,de	
	ld a,(hl)	
	ret	
l04ddh:
	ld hl,(02a0ah)
	ld a,(bc)	
	ld (0af02h),hl
	out (0a1h),a
	ld a,041h
	out (0a1h),a
	ld c,0a0h
	ld d,004h
	ld hl,l083ch
l04f1h:
	ld b,0ffh
	otir
	dec d	
	jr nz,l04f1h
	xor a	
	out (0a1h),a
	ld a,048h
	out (0a1h),a
	ld a,020h
	ld hl,0fc40h
	ld de,l0000h+1
l0507h:
	out (0a0h),a
	add hl,de	
	jr nc,l0507h
	ld b,007h
	ld hl,l07d3h
	ld de,l000fh
l0514h:
	push bc	
	push hl	
	push de	
	call sub_056bh
	pop de	
	pop hl	
	pop bc	
	add hl,de	
	djnz l0514h
	ret	
sub_0521h:
	ld a,007h
	out (041h),a
	ld a,07fh
	out (040h),a
	ret	
sub_052ah:
	out (091h),a
	nop	
	nop	
	nop	
	nop	
	nop	
	ret	
sub_0532h:
	ld hl,0fffeh
	ld a,(hl)	
	sub 0a5h
	ret nz	
	inc hl	
	ld a,(hl)	
	sub 05ah
	ret	
sub_053eh:
	ld c,005h
	push bc	
l0541h:
	call l05f3h
	pop bc	
	dec c	
	jp m,l054ch
	push bc	
	jr l0541h
l054ch:
	ld a,(0ffefh)
	or a	
	ret z	
	ld hl,(007d0h)
	ld (0fff9h),hl
	ld a,(l07d2h)
	ld (0fffbh),a
	ld de,(l0ffch)
	ld (0fffch),de
	ld hl,0fff9h
	jp sub_056bh
sub_056bh:
	ld b,(hl)	
	inc hl	
	ld a,(hl)	
	out (0a1h),a
	inc hl	
	ld a,(hl)	
	add a,048h
	out (0a1h),a
	inc hl	
	ld c,0a0h
	otir
	ret	
sub_057ch:
	ld b,005h
l057eh:
	in a,(091h)
	bit 1,a
	jr z,l057eh
	in a,(090h)
	push af	
	sub 030h
	jr c,l05c2h
	cp 00ah
	jr c,l05a3h
	sub 007h
	cp 00ah
	jr c,l05c2h
	cp 010h
	jr c,l05a3h
	sub 020h
	cp 00ah
	jr c,l05c2h
	cp 010h
	jr nc,l05c2h
l05a3h:
	ld c,a	
	ld a,b	
	or a	
	jr nz,l05abh
	pop af	
	jr l057eh
l05abh:
	ld a,e	
	out (0a1h),a
	ld a,d	
	or 048h
	out (0a1h),a
	pop af	
	cp 05bh
	jr c,l05bah
	sub 020h
l05bah:
	out (0a0h),a
	ld (hl),c	
	inc hl	
	inc de	
	dec b	
	jr l057eh
l05c2h:
	pop af	
	cp 00dh
	jr z,l05cbh
	cp 0e7h
	jr nz,l05d0h
l05cbh:
	ld a,b	
	or a	
	jr nz,l057eh
	ret	
l05d0h:
	cp 07fh
	jr z,l05d8h
	cp 0e1h
	jr nz,l057eh
l05d8h:
	ld a,b	
	cp 005h
	jr z,l057eh
	dec de	
	dec hl	
	inc b	
	ld a,e	
	out (0a1h),a
	ld a,d	
	or 048h
	out (0a1h),a
	ld a,020h
	out (0a0h),a
	jr l057eh
sub_05eeh:
	ld c,0e4h
	jp sub_036ch
l05f3h:
	ld a,(0ffefh)
	or a	
	jr z,l061ch
	ld a,002h
	ld (0fff9h),a
	ld de,00028h
	ld b,c	
	inc b	
	ld hl,0012bh
l0606h:
	add hl,de	
	djnz l0606h
	ld (0fffah),hl
	ld hl,0fff0h
	add hl,bc	
	ld de,0fffch
	call sub_0633h
	ld hl,0fff9h
	jp sub_056bh
l061ch:
	ld hl,0fff0h
	ld b,000h
	add hl,bc	
	ld a,(hl)	
	or a	
	ret z	
	ld hl,l073ah
	ld de,l0013h
	inc c	
l062ch:
	dec c	
	jp z,sub_056bh
	add hl,de	
	jr l062ch
sub_0633h:
	ld a,(hl)	
	srl a
	srl a
	srl a
	srl a
	call sub_0643h
	inc de	
	ld a,(hl)	
	and 00fh
sub_0643h:
	add a,030h
	cp 03ah
	jr c,l064bh
	add a,007h
l064bh:
	ld (de),a	
	ret	
sub_064dh:
	ld a,00eh
	out (041h),a
	ld a,c	
	out (040h),a
	ld a,00fh
	out (041h),a
	in a,(040h)
	bit 0,a
	ret	
sub_065dh:
	push af	
	exx	
	xor d	
	ld c,a	
	ld b,000h
	sla c
	rl b
	ld d,e	
	ld iy,l0b74h
	add iy,bc
	ld a,(iy+000h)
	ld e,a	
	ld a,(iy+001h)
	xor d	
	ld d,a	
	exx	
	pop af	
	ret	
sub_067ah:
	ld de,0ffffh
l067dh:
	call sub_0363h
	ret nz	
	ld c,080h
	call sub_064dh
	jr z,l067dh
	xor a	
	ret	
sub_068ah:
	ld a,007h
	out (041h),a
	ld a,07eh
	out (040h),a
	ld a,008h
	out (041h),a
	ld a,006h
	out (040h),a
	ld a,001h
	out (041h),a
	dec a	
	out (040h),a
	ret	
sub_06a2h:
	push af	
	push hl	
	push bc	
	push de	
	call sub_068ah
	xor a	
	out (041h),a
	ld a,c	
	out (040h),a
	ld hl,l0000h+1
	ld b,004h
	ex de,hl	
l06b5h:
	add hl,de	
	jr nc,l06b5h
	pop hl	
	push hl	
	djnz l06b5h
	ld a,007h
	out (041h),a
	ld a,07fh
	out (040h),a
	pop de	
	pop bc	
	pop hl	
	pop af	
	ret	
l06c9h:
	push af	
	nop	
	nop	
	nop	
	nop	
	ld (bc),a	
	ret nc	
	nop	
l06d1h:
	ld hl,l02abh
	ld d,b	
	ld c,h	
	ld b,l	
	ld b,c	
	ld d,e	
	ld b,l	
	jr nz,l0730h
	ld e,c	
	ld d,b	
	ld b,l	
	jr nz,l072ah
	ld c,(hl)	
	jr nz,$+69
	ld c,b	
	ld b,c	
	ld c,(hl)	
	ld c,(hl)	
	ld b,l	
	ld c,h	
	jr nz,$+69
	ld c,a	
	ld b,h	
	ld b,l	
	jr nz,l0711h
	jr nz,l0713h
	jr nz,$+34
l06f5h:
	inc (hl)	
	ld hl,05303h
	ld b,l	
	ld b,l	
	jr nz,$+36
	ld c,c	
	ld b,(hl)	
	jr nz,l0754h
	ld c,a	
	ld c,l	
	ld b,l	
	ld d,h	
	ld c,b	
	ld c,c	
	ld c,(hl)	
	ld b,a	
	jr nz,l0752h
	ld c,a	
	ld b,l	
	ld d,e	
	jr nz,$+89
	ld d,d	
l0711h:
	ld c,a	
	ld c,(hl)	
l0713h:
	ld b,a	
	ld (04920h),hl
	ld c,(hl)	
	jr nz,l073ah
	jr nz,l073ch
	jr nz,$+34
	jr nz,l0740h
	ld c,a	
	ld d,a	
	ld c,(hl)	
	ld b,l	
	ld d,d	
	ld d,e	
	jr nz,$+73
	ld d,l	
	ld c,c	
l072ah:
	ld b,h	
	ld b,l	
l072ch:
	dec bc	
	ld hl,05003h
l0730h:
	ld c,h	
	ld b,l	
	ld b,c	
	ld d,e	
	ld b,l	
	jr nz,l078eh
	ld b,c	
	ld c,c	
	ld d,h	
l073ah:
	djnz l0785h
l073ch:
	ld bc,04f52h
	ld c,l	
l0740h:
	jr nz,l0788h
	ld b,c	
	ld c,c	
	ld c,h	
	ld d,l	
	ld d,d	
	ld b,l	
	jr nz,l076ah
	jr nz,l076ch
	jr nz,$+18
	ld (hl),c	
	ld bc,04956h
l0752h:
	ld b,h	
	ld b,l	
l0754h:
	ld c,a	
	jr nz,l079dh
	ld b,c	
	ld c,c	
	ld c,h	
	ld d,l	
	ld d,d	
	ld b,l	
	jr nz,l077fh
	jr nz,$+18
	sbc a,c	
	ld bc,04152h
	ld c,l	
	jr nz,l07aeh
	ld b,c	
	ld c,c	
l076ah:
	ld c,h	
	ld d,l	
l076ch:
	ld d,d	
	ld b,l	
	jr nz,l0790h
	jr nz,$+34
	jr nz,$+18
	pop bc	
	ld bc,04f53h
	ld d,l	
	ld c,(hl)	
	ld b,h	
	jr nz,l07c3h
	ld b,c	
	ld c,c	
l077fh:
	ld c,h	
	ld d,l	
	ld d,d	
	ld b,l	
	jr nz,l07a5h
l0785h:
	jr nz,l0797h
	jp (hl)	
l0788h:
	ld bc,0454bh
	ld e,c	
	ld b,d	
	ld c,a	
l078eh:
	ld b,c	
	ld d,d	
l0790h:
	ld b,h	
	jr nz,l07d9h
	ld b,c	
	ld c,c	
	ld c,h	
	ld d,l	
l0797h:
	ld d,d	
	ld b,l	
	djnz $+19
	ld (bc),a	
	ld b,c	
l079dh:
	ld b,h	
	ld b,c	
	ld d,b	
	ld d,h	
	ld c,a	
	ld d,d	
	jr nz,l07ebh
l07a5h:
	ld b,c	
	ld c,c	
	ld c,h	
	ld d,l	
	ld d,d	
	ld b,l	
	jr nz,$+35
	xor e	
l07aeh:
	ld (bc),a	
	ld d,d	
	ld b,l	
	dec l	
	ld d,h	
	ld e,c	
	ld d,b	
	ld b,l	
	jr nz,l07fbh
	ld c,b	
	ld b,c	
	ld c,(hl)	
	ld c,(hl)	
	ld b,l	
	ld c,h	
	jr nz,l0803h
	ld c,a	
	ld b,h	
	ld b,l	
l07c3h:
	jr nz,l07e5h
	jr nz,l07e7h
	jr nz,l07e9h
	jr nz,l07ebh
	jr nz,l07edh
	jr nz,l07efh
	jr nz,l07d3h
	ld e,d	
l07d2h:
	inc bc	
l07d3h:
	inc c	
	dec c	
	nop	
	ld e,e	
	ld e,h	
	ld e,h	
l07d9h:
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
l07e5h:
	ld e,(hl)	
	ld e,(hl)	
l07e7h:
	ld e,(hl)	
	ld e,(hl)	
l07e9h:
	ld e,(hl)	
	ld e,(hl)	
l07ebh:
	ld e,(hl)	
	ld e,(hl)	
l07edh:
	ld e,(hl)	
	ld e,(hl)	
l07efh:
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
l07fbh:
	ld h,(hl)	
	ld h,a	
	ld l,b	
	ld l,c	
	ld l,d	
	inc c	
	add a,l	
	nop	
l0803h:
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
	defb 0fdh,000h,084h	;illegal sequence
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
l083ch:
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	djnz l0856h
	djnz $+18
	djnz l084ah
l084ah:
	djnz l084ch
l084ch:
	jr z,l0876h
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	jr z,l087eh
l0856h:
	ld a,h	
	jr z,$+126
	jr z,l0883h
	nop	
	jr c,$+86
	ld d,b	
	jr c,$+22
	ld d,h	
	jr c,l0864h
l0864h:
	ld h,b	
	ld h,h	
	ex af,af'	
	djnz l0889h
	ld l,h	
	inc c	
	nop	
	djnz l0896h
	jr z,l08a0h
	ld d,b	
	ld c,h	
	ld a,h	
	nop	
	jr nc,l08a6h
l0876h:
	djnz $+98
	nop	
	nop	
	nop	
	nop	
	djnz l089eh
l087eh:
	ld b,b	
	ld b,b	
	ld b,b	
	jr nz,$+18
l0883h:
	nop	
	ld b,b	
	jr nz,$+18
	djnz l0899h
l0889h:
	jr nz,$+66
	nop	
	nop	
	ld d,h	
	jr c,l090ch
	jr c,l08e6h
	djnz l0894h
l0894h:
	nop	
	nop	
l0896h:
	djnz l08a8h
	ld a,h	
l0899h:
	djnz l08abh
	nop	
	nop	
	nop	
l089eh:
	nop	
	nop	
l08a0h:
	jr nc,$+50
	djnz l0904h
	nop	
	nop	
l08a6h:
	nop	
	nop	
l08a8h:
	jr c,l08aah
l08aah:
	nop	
l08abh:
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	jr $+26
	nop	
	inc b	
	inc b	
	ex af,af'	
	jr l08e9h
	jr nz,l08fbh
	nop	
	jr c,l0902h
	ld c,h	
	ld d,h	
	ld h,h	
	ld b,h	
	jr c,l08c4h
l08c4h:
	djnz l08f6h
	djnz $+18
	djnz l08dah
	jr c,l08cch
l08cch:
	jr nc,l0916h
	ld c,b	
	jr l0901h
	jr nz,l094bh
	nop	
	jr nc,$+74
	ex af,af'	
	djnz l08e1h
	ld c,b	
l08dah:
	jr nc,l08dch
l08dch:
	djnz l090eh
	jr nc,l0930h
	ld d,b	
l08e1h:
	ld a,b	
	djnz l08e4h
l08e4h:
	ld a,b	
	ld b,b	
l08e6h:
	ld d,b	
	ld l,b	
	ex af,af'	
l08e9h:
	ld c,b	
	jr nc,l08ech
l08ech:
	jr nc,l0916h
	ld b,b	
	ld (hl),b	
	ld l,b	
	ld c,b	
	jr nc,l08f4h
l08f4h:
	ld a,b	
	ld c,b	
l08f6h:
	ex af,af'	
	djnz l0929h
	jr nz,l091bh
l08fbh:
	nop	
	jr nc,l0946h
	ld c,b	
	jr nc,l0949h
l0901h:
	ld c,b	
l0902h:
	jr nc,l0904h
l0904h:
	jr nc,l094eh
	ld c,b	
	jr c,l0911h
	ld d,b	
	jr nc,l090ch
l090ch:
	nop	
	nop	
l090eh:
	jr nc,$+50
	nop	
l0911h:
	jr nc,l0943h
	nop	
	nop	
	nop	
l0916h:
	jr nc,l0948h
	nop	
	jr nc,l092bh
l091bh:
	ld b,b	
	ex af,af'	
	djnz l093fh
	ld b,b	
	jr nz,l0932h
	ex af,af'	
	nop	
	nop	
	nop	
	nop	
	ld a,b	
	nop	
l0929h:
	ld a,b	
	nop	
l092bh:
	nop	
	ld b,b	
	jr nz,l093fh
	ex af,af'	
l0930h:
	djnz l0952h
l0932h:
	ld b,b	
	nop	
	jr nc,l097eh
	ld c,b	
	djnz l0959h
	jr nz,l093bh
l093bh:
	jr nz,l097dh
	jr c,l0943h
l093fh:
	jr c,l0949h
	jr c,$+74
l0943h:
	inc (hl)	
	djnz l096eh
l0946h:
	ld b,h	
	ld b,h	
l0948h:
	ld a,h	
l0949h:
	ld b,h	
	ld b,h	
l094bh:
	nop	
	ld a,b	
	ld b,h	
l094eh:
	ld b,h	
	ld a,b	
	ld b,h	
	ld b,h	
l0952h:
	ld a,b	
	nop	
	jr c,l099ah
	ld b,b	
	ld b,b	
	ld b,b	
l0959h:
	ld b,h	
	jr c,l095ch
l095ch:
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
l096eh:
	ld b,b	
	ld (hl),b	
	ld b,b	
	ld b,b	
	ld b,b	
	nop	
	jr c,l09bah
	ld b,h	
	ld b,b	
	ld e,h	
	ld b,h	
	inc a	
	nop	
	ld b,h	
l097dh:
	ld b,h	
l097eh:
	ld b,h	
	ld a,h	
	ld b,h	
	ld b,h	
	ld b,h	
	nop	
	jr c,l0996h
	djnz l0998h
	djnz l099ah
	jr c,l098ch
l098ch:
	inc e	
	ex af,af'	
	ex af,af'	
	ex af,af'	
	ld c,b	
	ld c,b	
	jr nc,l0994h
l0994h:
	ld c,b	
	ld c,b	
l0996h:
	ld d,b	
	ld (hl),b	
l0998h:
	ld d,b	
	ld c,b	
l099ah:
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
	jr c,l09fah
	ld b,h	
	ld b,h	
	ld b,h	
	ld b,h	
l09bah:
	jr c,l09bch
l09bch:
	ld a,b	
	ld b,h	
	ld b,h	
	ld a,b	
	ld b,b	
	ld b,b	
	ld b,b	
	nop	
	jr c,$+70
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
	jr c,l0a1ah
	ld b,b	
	jr c,l09ddh
	ld b,h	
	jr c,l09dch
l09dch:
	ld a,h	
l09ddh:
	djnz l09efh
	djnz l09f1h
	djnz l09f3h
	nop	
	ld b,h	
	ld b,h	
	ld b,h	
	ld b,h	
	ld b,h	
	ld b,h	
	jr c,l09ech
l09ech:
	ld b,h	
	ld b,h	
	ld b,h	
l09efh:
	jr z,l0a19h
l09f1h:
	jr z,l0a03h
l09f3h:
	nop	
	ld b,h	
	ld b,h	
	ld b,h	
	ld b,h	
	ld d,h	
	ld d,h	
l09fah:
	jr z,l09fch
l09fch:
	ld b,h	
	ld b,h	
	jr z,l0a10h
	jr z,$+70
	ld b,h	
l0a03h:
	nop	
	ld b,h	
	ld b,h	
	ld b,h	
	jr c,l0a19h
	djnz l0a1bh
	nop	
	ld a,h	
	inc c	
	jr $+18
l0a10h:
	jr nz,l0a72h
	ld a,h	
	nop	
	nop	
	nop	
	nop	
	inc a	
	ld a,h	
l0a19h:
	nop	
l0a1ah:
	nop	
l0a1bh:
	call m,000fch
	nop	
	call m,000fch
	nop	
	call m,l0000h
	nop	
	ret p	
	ret m	
	nop	
	nop	
	call m,0fcfch
	nop	
	call m,0fcfch
	call m,0fc00h
	call m,0f0f0h
	ret p	
	ret p	
	ret p	
	ret p	
	call m,sub_0cfch
	inc c	
	inc c	
	inc b	
	inc b	
	inc b	
	call m,0e0fch
	ret po	
	ret po	
	ret po	
	ret po	
	ret po	
	call m,07cfch
	ld a,h	
	ld a,h	
	ld a,h	
	ld a,h	
	ld a,h	
	call m,080fch
	add a,b	
	add a,b	
l0a59h:
	jr l0a73h
	jr l0a59h
	call m,07c7ch
	ld a,h	
	inc a	
	inc a	
	inc a	
	call m,080fch
	add a,b	
	add a,b	
	add a,b	
	add a,b	
	add a,b	
	call m,000fch
	nop	
	nop	
	ld h,b	
l0a72h:
	ld (hl),b	
l0a73h:
	ld (hl),b	
	call m,078fch
	jr c,l0a91h
	ex af,af'	
	ex af,af'	
	ex af,af'	
	call m,004fch
	inc b	
	inc b	
	inc b	
	inc b	
	inc b	
	call m,0c0fch
	ret nz	
	ret nz	
	ret nz	
	ret nz	
	ret nz	
	call m,03cfch
	inc a	
	inc a	
l0a91h:
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
	jr nz,l0ad0h
	jr nc,$+58
	jr c,l0ae0h
	ret po	
	ret po	
	ret po	
	ld h,b	
	ld h,b	
	ld h,b	
	jr nz,l0acch
	ld a,b	
	ld a,b	
	ld a,b	
	ld (hl),b	
	ld (hl),b	
	ld (hl),b	
	ld h,b	
	ld h,b	
	jr l0af2h
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
l0acch:
	ld h,b	
	ld h,b	
	nop	
	inc b	
l0ad0h:
	nop	
	ld h,b	
	ld h,b	
	ld (hl),b	
	jr l0b0eh
	ld a,b	
	ret m	
	ld a,b	
	jr c,l0af3h
	ex af,af'	
	inc b	
	inc b	
	inc b	
	inc b	
l0ae0h:
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
l0af2h:
	inc a	
l0af3h:
	inc a	
	ret p	
	ret p	
	ret p	
	ret p	
	ret p	
	call m,000fch
	inc a	
	inc a	
	inc a	
	inc a	
	inc a	
l0b01h:
	call m,000fch
	nop	
	nop	
	add a,b	
	add a,b	
	add a,b	
	call m,000fch
	ld h,b	
	ld b,b	
l0b0eh:
	ld b,b	
	ld b,b	
	ld b,b	
	call m,000fch
	nop	
	jr l0b2fh
	inc a	
	inc a	
	call m,000fch
	inc b	
	nop	
	nop	
	nop	
	nop	
	call m,000fch
	add a,b	
	add a,b	
	add a,b	
	add a,b	
	add a,b	
	call m,000fch
	ld (hl),b	
	ld h,b	
	nop	
l0b2fh:
	nop	
	nop	
	call m,000fch
	ex af,af'	
	ex af,af'	
	inc e	
	inc a	
	ld a,h	
	call m,000fch
	inc b	
	nop	
	nop	
	add a,b	
	ret nz	
	call m,000fch
	ret nz	
	add a,b	
	nop	
	nop	
	inc b	
	call m,000fch
	inc a	
	inc a	
	ld a,h	
l0b4fh:
	call m,0fcfch
	call m,0fc00h
	call m,0fcfch
	nop	
	call m,0fcfch
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
	call m,000fch
	nop	
	call m,l0000h
	nop	
	ret m	
	ret p	
	nop	
	nop	
	nop	
l0b73h:
	nop	
l0b74h:
	nop	
	nop	
	ld hl,04210h
	jr nz,l0bdeh
	jr nc,l0b01h
	ld b,b	
	and l	
	ld d,b	
	add a,060h
	rst 20h	
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
	adc a,0e1h
	rst 28h	
	pop af	
	ld sp,01012h
	ld (bc),a	
	ld (hl),e	
	ld (02252h),a
	or l	
	ld d,d	
	sub h	
	ld b,d	
	rst 30h	
	ld (hl),d	
	sub 062h
	add hl,sp	
	sub e	
	jr $-123
	ld a,e	
	or e	
	ld e,d	
	and e	
	cp l	
	out (09ch),a
	jp 0f3ffh
	sbc a,0e3h
	ld h,d	
	inc h	
	ld b,e	
	inc (hl)	
	jr nz,l0bbeh
	ld bc,0e614h
	ld h,h	
l0bbeh:
	rst 0	
	ld (hl),h	
	and h	
	ld b,h	
	add a,l	
	ld d,h	
	ld l,d	
	and l	
	ld c,e	
	or l	
	jr z,l0b4fh
	add hl,bc	
	sub l	
	xor 0e5h
	rst 8	
	push af	
	xor h	
l0bd1h:
	push bc	
	adc a,l	
	push de	
	ld d,e	
	ld (hl),072h
	ld h,011h
	ld d,030h
	ld b,0d7h
	halt	
l0bdeh:
	or 066h
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
	jr c,l0b73h
	rst 18h	
	rst 30h	
	cp 0e7h
	sbc a,l	
	rst 10h	
	cp h	
	rst 0	
	call nz,0e548h
	ld e,b	
	add a,(hl)	
	ld l,b	
	and a	
	ld a,b	
	ld b,b	
	ex af,af'	
	ld h,c	
	jr l0c03h
	jr z,$+37
l0c03h:
	jr c,l0bd1h
	ret	
	defb 0edh;next byte illegal after ed
	exx	
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
	call nc,0b74ah
	ld a,d	
	sub (hl)	
	ld l,d	
	ld (hl),c	
	ld a,(de)	
	ld d,b	
	ld a,(bc)	
	inc sp	
	ld a,(02a12h)
	defb 0fdh,0dbh,0dch	;illegal sequence
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
	call po,0c54ch
	ld e,h	
	ld (l032ch),hl
	inc a	
	ld h,b	
	inc c	
	ld b,c	
	inc e	
	xor (hl)	
	defb 0edh;next byte illegal after ed
	adc a,a	
	defb 0fdh,0ech,0cdh	;illegal sequence
	call 02addh
	xor l	
	dec bc	
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
	call p,0134eh
	ld a,032h
	ld l,051h
	ld e,070h
	ld c,09fh
	rst 38h	
	cp (hl)	
	rst 28h	
	defb 0ddh,0dfh,0fch	;illegal sequence
	rst 8	
	dec de	
	cp a	
	ld a,(059afh)
	sbc a,a	
	ld a,b	
	adc a,a	
	adc a,b	
	sub c	
	xor c	
	add a,c	
	jp z,0ebb1h
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
	djnz $-93
	nop	
	jp nz,0e330h
	jr nz,l0c91h
	ld d,b	
	dec h	
	ld b,b	
	ld b,(hl)	
l0c91h:
	ld (hl),b	
	ld h,a	
	ld h,b	
	cp c	
	add a,e	
	sbc a,b	
	sub e	
	ei	
	and e	
	jp c,03db3h
	jp 0d31ch
	ld a,a	
	ex (sp),hl	
	ld e,(hl)	
	di	
	or c	
	ld (bc),a	
	sub b	
	ld (de),a	
	di	
	ld (032d2h),hl
	dec (hl)	
	ld b,d	
	inc d	
	ld d,d	
	ld (hl),a	
	ld h,d	
	ld d,(hl)	
	ld (hl),d	
	jp pe,0cbb5h
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
	jp po,0c334h
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
	in a,(0a7h)
	jp m,099b7h
	add a,a	
	cp b	
	sub a	
	ld e,a	
	rst 20h	
	ld a,(hl)	
	rst 30h	
	dec e	
	rst 0	
	inc a	
	rst 10h	
	out (026h),a
	jp p,09136h
	ld b,0b0h
	ld d,057h
	ld h,(hl)	
	halt	
	halt	
l0cf0h:
	dec d	
	ld b,(hl)	
	inc (hl)	
	ld d,(hl)	
	ld c,h	
	exx	
	ld l,l	
	ret	
	ld c,0f9h
	cpl	
	jp (hl)	
sub_0cfch:
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
	ld b,078h
	daa	
	ld l,b	
	ret nz	
	jr l0cf0h
	ex af,af'	
	add a,d	
	jr c,$-91
	jr z,l0d92h
	bit 3,h
	in a,(03fh)
	ex de,hl	
	ld e,0fbh
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
	ld d,07ah
	pop af	
	ld a,(bc)	
	ret nc	
	ld a,(de)	
	or e	
	ld hl,(03a92h)
	ld l,0fdh
	rrca	
	defb 0edh;next byte illegal after ed
	ld l,h	
	defb 0ddh,04dh	;ld c,ixl
	call 0bdaah
	adc a,e	
	xor l	
	ret pe	
	sbc a,l	
	ret	
	adc a,l	
	ld h,07ch
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
	rst 28h	
	ld a,0ffh
	ld e,l	
	rst 8	
	ld a,h	
	rst 18h	
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
	ld (hl),07eh
	ld d,l	
	ld c,(hl)	
	ld (hl),h	
	ld e,(hl)	
	sub e	
	ld l,0b2h
	ld a,0d1h
	ld c,0f0h
	ld e,000h
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
l0d92h:
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	ld a,c
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop
	ld a,c
	nop

	seek 00ffah
	org 00ffah
	
	defb 0bh,14h
l0ffch:
	defb 30h,36h
l0ffeh:
	defb 0cfh
l0fffh:
	defb 03bh
