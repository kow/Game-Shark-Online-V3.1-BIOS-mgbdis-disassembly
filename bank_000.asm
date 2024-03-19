; Disassembly of "gameshark.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_0150


Call_000_0003:
    ld a, b

Call_000_0004:
    jp Jump_000_0700


    nop

RST_08::
    jp Jump_000_1030


Call_000_000b:
    ld l, $55
    jp Jump_000_06e3


RST_10::
    jp Jump_000_1033


Call_000_0013:
    jp Jump_000_0586


    nop
    nop

RST_18::
    jp Jump_000_1036


Call_000_001b:
    jp Jump_000_05a3


    nop
    nop

RST_20::
    jp Jump_000_1039


Call_000_0023:
    jp Jump_000_059b


    nop
    nop

RST_28::
    jp Jump_000_103c


Call_000_002b:
    jp Jump_000_090f


    nop
    nop

RST_30::
    jp Jump_000_103f


Call_000_0033:
    ld l, $ad
    jp Jump_000_06e3


RST_38::
    jp Jump_000_0079


    ld hl, $0954
    nop
    nop

VBlankInterrupt::
    jp $7b00


    nop
    nop
    nop
    nop
    nop

LCDCInterrupt::
    jp Jump_000_10c0


    nop
    nop
    nop
    nop
    nop

TimerOverflowInterrupt::
    jp Jump_000_0894


    nop
    nop
    nop
    nop
    nop

SerialTransferCompleteInterrupt::
    jp Jump_000_10c2


    nop
    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    reti


    ld hl, $00fe
    nop
    nop
    nop
    nop

Call_000_0068:
    push af
    ldh a, [rLCDC]
    and $7e
    ldh [rLCDC], a
    pop af
    ret


Call_000_0071:
    push af
    ldh a, [rLCDC]
    or $81
    ldh [rLCDC], a
    pop af

Jump_000_0079:
    ret


Call_000_007a:
Jump_000_007a:
    push af
    push bc
    push de
    push hl

jr_000_007e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_007e

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_008b:
    push af
    push bc
    push hl

jr_000_008e:
    ld a, e
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_008e

    pop hl
    pop bc
    pop af
    ret


Call_000_0099:
    push bc
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    and $0f
    swap a
    ld b, a
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and $0f
    or b
    cpl
    ld b, a
    ld a, [$7a6a]
    ld [$7a6b], a
    ld c, a
    ld a, b

Call_000_00c4:
    ld [$7a6a], a
    xor c
    and b
    ld [$7a6c], a
    pop bc
    ret


Call_000_00ce:
    push af
    push bc
    push hl
    ld c, l
    ld a, h
    add $c0
    ld l, a
    ld h, $04
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl

Call_000_00dc:
    add hl, hl
    ld a, l
    or c
    ld l, a

jr_000_00e0:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_00e0

    ld a, [de]
    inc de
    and a
    jr z, jr_000_00ee

    ld [hl+], a
    jr jr_000_00e0

jr_000_00ee:
    pop hl
    pop bc
    pop af
    ret


Call_000_00f2:
    xor a
    call Call_000_0700
    ld c, a
    ret


Call_000_00f8:
    ld hl, $00af
    jp Jump_000_06e3


    nop
    nop

Boot::
    nop

Jump_000_0101:
    jp Jump_000_0150


HeaderLogo::
    db $44, $55, $70, $6c, $6f, $61, $64, $20, $53, $6e, $61, $70, $73, $68, $6f, $74
    db $3a, $20, $00, $44, $6f, $77, $6e, $6c, $6f, $61, $64, $20, $53, $6e, $61, $70
    db $73, $68, $6f, $74, $3a, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

HeaderTitle::
    db "Action Replay V4"

HeaderNewLicenseeCode::
    db $2e, $30

HeaderSGBFlag::
    db $31

HeaderCartridgeType::
    db $00

HeaderROMSize::
    db $00

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $00

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $00

HeaderGlobalChecksum::
    db $00, $00

Jump_000_0150:
    di
    ld sp, $fffe
    push af
    xor a
    ld [$7fe5], a
    ld [$7fe2], a
    ld [$7fe3], a
    ld a, $01
    ld [$7fe0], a
    ld a, $02
    ld [$7fe1], a
    pop af
    ld [$7a20], a
    xor a
    ldh [rIE], a
    call Call_000_1006
    ld sp, $7fc0
    ld hl, $055d
    ld de, $ff80
    ld bc, $0029
    call Call_000_007a
    call $ff80
    ld a, $09
    rst $18
    ld a, $09
    ld [$7fe1], a
    call $4100
    call Call_000_0071
    ld a, $01
    ld [$7fe0], a
    inc a
    ld [$7fe1], a
    ld a, $c0
    ld [$7a9d], a
    ld hl, $7a00
    ld bc, $0020
    ld e, b
    call Call_000_008b
    ld hl, $070f
    ld de, $ff80
    ld bc, $0024
    call Call_000_007a
    call $ff80
    ld hl, $ffc0
    ld de, $7a00
    ld bc, $001c
    call Call_000_007a
    ld a, $01
    ld [$7a67], a
    xor a
    ld [$7a21], a
    ld c, a
    ld a, [$7a0f]
    add a
    jr nc, jr_000_01e4

    ld a, $01
    ld [$7a21], a
    ld a, [$7a20]
    cp $11
    jr nz, jr_000_01e4

    ld c, $11

jr_000_01e4:
    ld a, c
    ld [$7a22], a
    ld a, [$7a15]
    cp $03
    jr c, jr_000_01f1

    ld a, $04

jr_000_01f1:
    ld [$7a51], a
    ld a, $06
    ld [$7a23], a
    ld a, $d9
    ld [$7b00], a
    xor a
    ld [$7a24], a
    ld [$7a25], a
    ld [$7a32], a
    call Call_000_03fa
    call Call_000_046f
    ld a, [$7fee]
    bit 0, a
    jp nz, Jump_000_0337

    ld a, $ce
    ld [$7a32], a
    call Call_000_001b
    ld hl, $0803
    ld de, $09c4
    call Call_000_00ce
    xor a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_022e:
    call Call_000_0023
    call z, Call_000_0733
    jr jr_000_022e

Jump_000_0236:
    ld a, $09
    rst $18
    jp $4100


Jump_000_023c:
    push hl
    ld a, [$d309]
    rra
    rra
    rra
    rra
    and $0f
    ld l, a
    ld a, [$7a9d]
    cp $a0
    jr z, jr_000_0261

    ld a, [$75b0]
    add l
    ld c, a
    ld [$7a4f], a
    ld de, $c000
    call Call_000_09d6
    ld a, $02
    ld [$7fe1], a

jr_000_0261:
    pop hl
    ret


Call_000_0263:
    call Call_000_0274
    ld a, $02
    ld [$7fe1], a
    call Call_000_101e
    call Call_000_1021
    jp Jump_000_1024


Call_000_0274:
    push hl
    push de
    push bc
    ld a, b
    and $1f
    ld b, a
    add hl, bc
    ld a, d
    and $7f
    ld d, a
    ld bc, $d208

jr_000_0283:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    jr nz, jr_000_0283

    pop bc
    pop de
    pop hl
    ret


Call_000_028f:
    ld hl, $c000
    ld bc, $0005

jr_000_0295:
    push bc
    push hl
    call Call_000_100f
    call Call_000_1018
    jr nz, jr_000_02bd

    call Call_000_101b
    jr nz, jr_000_02bd

    pop de
    push de
    call Call_000_02c7
    call Call_000_02f6
    call Call_000_00f8
    ld hl, $d30b
    ld a, [hl]
    pop hl
    pop bc
    ld c, $05
    and $80
    jr z, jr_000_0295

    cp a
    ret


jr_000_02bd:
    call Call_000_000b
    pop hl
    pop bc
    dec c
    jr nz, jr_000_0295

    inc c
    ret


Call_000_02c7:
    ld hl, $d309
    ld a, [hl+]
    ld d, $c0
    ld e, a
    and $f0
    jr z, jr_000_02d4

    ld d, $60

jr_000_02d4:
    and $f0
    rra
    rra
    rra
    rra
    ld [$7fe0], a
    ld a, e
    and $0f
    add d
    ld d, a
    ld e, $00
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    and $7f
    ld b, a
    ld hl, $d310

jr_000_02ed:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_02ed

    ret


Call_000_02f6:
    push af
    push hl
    ld hl, $09c0
    ld a, [$d309]
    and $03
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld l, [hl]

jr_000_0306:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_0306

    ld a, l
    ld [$9930], a
    pop hl
    pop af
    ret


Jump_000_0313:
    ld de, $06bb
    ld hl, $0801
    call Call_000_00ce
    inc h
    call Call_000_00ce

jr_000_0320:
    call Call_000_0099
    ld a, [$7a6a]
    or a
    jr nz, jr_000_0320

jr_000_0329:
    call Call_000_0099
    ld a, [$7a6a]
    or a
    jr z, jr_000_0329

    ld a, $80
    ldh [rSC], a
    ret


Jump_000_0337:
    ld a, $ff
    ld [$7a63], a
    ld hl, $7900
    ld bc, $0100
    ld e, c
    call Call_000_008b
    ld a, $08
    ld [$7fe1], a
    ld hl, $4040
    ld a, [hl+]
    cp $14
    jr nz, jr_000_0358

    ld a, [hl]
    cp $12
    jr z, jr_000_036e

jr_000_0358:
    ld a, $03
    ld [$7fe1], a
    ld hl, $62bc
    ld de, $c000
    ld bc, $1000
    call Call_000_007a
    ld c, $10
    call Call_000_09d6

jr_000_036e:
    ld a, $02
    ld [$7fe1], a
    ld a, $80
    ldh [rSC], a
    ld a, [$7fee]
    bit 4, a
    jr nz, jr_000_0388

    ld sp, $7fc0
    ld a, $01
    call Call_000_1000
    jr jr_000_038b

jr_000_0388:
    call Call_000_107b

jr_000_038b:
    ld a, $02
    ld [$7fe1], a
    ld hl, $7a33
    ld e, $00
    ld bc, $0027
    call Call_000_008b
    ld a, $01
    ld [$7a3d], a
    call Call_000_1075
    xor a
    ld [$7a63], a
    ld sp, $7fc0
    ld a, $02
    ld [$7fe1], a
    call Call_000_1042
    di
    call Call_000_03fa
    call Call_000_046f
    call Call_000_049c
    call Call_000_0469
    ld a, $03
    ld [$7fe1], a
    xor a
    call $40a7
    call $40c9
    ld a, $02
    ld [$7fe1], a
    ld hl, $0834
    ld de, $ff80
    ld bc, $004b
    call Call_000_007a
    ld a, [$7a61]
    cp $01
    jr nz, jr_000_03f4

    ld a, $13
    ld [$ff81], a
    ld a, [$7a5f]
    ld [$ff86], a
    ld a, [$7a60]
    ld [$ff8b], a

jr_000_03f4:
    call Call_000_102d
    jp $ff80


Call_000_03fa:
    call Call_000_0068
    xor a
    ldh [rIE], a
    ldh [rIF], a
    ldh [rP1], a
    ldh [rSC], a
    ldh [rTAC], a
    ldh [rIF], a
    ldh [rNR50], a
    ldh [rNR51], a
    ldh [rSTAT], a
    ldh [rSCY], a
    ldh [rSCX], a
    ld a, $01
    ldh [rTIMA], a
    ldh [rTMA], a
    ld a, $80
    ldh [rNR52], a
    xor a
    ldh [rNR51], a
    ld a, $e4
    ldh [rBGP], a
    call Call_000_0013
    ld a, $00
    ldh [rLCDC], a
    ld hl, $8000
    ld bc, $2000
    ld e, $00
    call Call_000_008b
    ld a, [$7a22]
    cp $11
    jr nz, jr_000_0468

    xor a
    ldh [rHDMA1], a
    ldh [rHDMA2], a
    ldh [rHDMA3], a
    ldh [rHDMA4], a
    ldh [rHDMA5], a
    ldh [rRP], a
    ldh [rKEY1], a
    ldh [rBCPS], a
    ldh [rBCPD], a
    ldh [rOCPS], a
    ldh [rOCPD], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $2000
    ld e, $00
    call Call_000_008b
    ld a, $00
    ldh [rVBK], a

jr_000_0468:
    ret


Call_000_0469:
    call Call_000_1045
    jp Jump_000_1078


Call_000_046f:
    ld hl, $c000
    ld bc, $2000
    ld e, $00
    call Call_000_008b
    ld a, [$7a22]
    cp $11
    jr nz, jr_000_049b

    ld d, $02

jr_000_0483:
    ld a, d
    ldh [rSVBK], a
    ld hl, $d000
    ld bc, $1000
    ld e, $00
    call Call_000_008b
    inc d
    ld a, d
    cp $08
    jr nz, jr_000_0483

    ld a, $01
    ldh [rSVBK], a

jr_000_049b:
    ret


Call_000_049c:
    ld hl, $04a8
    ld de, $7b00
    ld bc, $0061
    jp Jump_000_007a


    push hl
    ld [$7a26], sp
    ld sp, $7fc0
    push af
    ld a, [$7fee]
    bit 0, a
    jr nz, jr_000_0503

    push de
    push bc
    ld a, $d9
    ld [$7b00], a
    xor a
    ld [$7fe2], a
    ld hl, $0509
    ld de, $7b00
    ld bc, $0018
    call Call_000_007a
    call Call_000_105d
    call Call_000_0521
    call Call_000_1003

jr_000_04d7:
    call Call_000_0099
    and a
    jr nz, jr_000_04d7

    call Call_000_1060
    ld a, $03
    ld [$7fe2], a
    ld hl, $04a8
    ld de, $7b00
    ld bc, $005b
    call Call_000_007a
    pop bc
    pop de

jr_000_04f3:
    ldh a, [rLY]
    cp $8f
    jr nz, jr_000_04f3

    pop af
    ld sp, $7a26
    pop hl
    ld sp, hl
    pop hl
    jp VBlankInterrupt


jr_000_0503:
    jp $7b5e


    jp $7b51


    push af
    push bc
    push de
    push hl
    ld hl, $051c
    push hl
    ld hl, $7a24
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_000_051b

    jp hl


jr_000_051b:
    pop hl
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_0521:
    push af
    push bc
    push de
    push hl
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld a, $80
    ldh [rNR52], a
    xor a
    ldh [rNR51], a
    ld a, $e4
    ldh [rBGP], a
    ld a, [$7a22]
    cp $11
    jr nz, jr_000_0558

    ld a, $01
    ldh [rVBK], a
    call Call_000_0013
    call Call_000_0068
    ld hl, $9800
    ld bc, $02e0
    ld e, $00
    call Call_000_008b
    ld a, $00
    ldh [rVBK], a
    call Call_000_0071

jr_000_0558:
    pop hl
    pop de
    pop bc
    pop af
    ret


    di
    xor a
    ldh [rIE], a
    ld a, $10
    ld [$7fe5], a
    ld a, $03
    ld [$7fe2], a
    ld a, [$0040]
    nop
    ld a, $10
    ld [$7fe4], a
    ld a, [HeaderLogo]
    cp $44
    jr z, jr_000_057f

    ld a, [$0040]
    nop

jr_000_057f:
    ld a, $00
    ld [$7fe5], a
    ret


    nop

Jump_000_0586:
    push af
    ldh a, [rLCDC]
    or $81
    ldh [rLCDC], a

jr_000_058d:
    ldh a, [rLY]
    cp $90
    jr nz, jr_000_058d

jr_000_0593:
    ldh a, [rLY]
    cp $90
    jr z, jr_000_0593

    pop af
    ret


Jump_000_059b:
    ldh a, [rSC]
    and $80
    ret nz

    ldh a, [rSB]
    ret


Jump_000_05a3:
    call Call_000_0013
    xor a
    ldh [rLCDC], a
    ldh [rSCY], a
    ldh [rSCX], a
    ld [$7a66], a
    ld a, [$7a22]
    cp $11
    jr nz, jr_000_05c9

    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld e, $00
    ld bc, $02e0
    call Call_000_008b
    xor a
    ldh [rVBK], a

jr_000_05c9:
    ld hl, $9800
    ld e, $20
    ld bc, $02e0
    call Call_000_008b
    ld a, $03
    ld [$7fe1], a
    ld hl, $0a00
    ld de, $9200
    ld bc, $0600
    call Call_000_007a
    call Call_000_1009
    ld a, [$7a32]
    cp $c5
    jr z, jr_000_05f2

    call Call_000_100c

jr_000_05f2:
    ld a, $1b
    ldh [rBGP], a
    ld a, [$7a22]
    cp $11
    jr nz, jr_000_0611

    ld a, $03
    ld [$7fe1], a
    ld hl, $423c
    ld c, $80
    ld a, $80
    ldh [rBCPS], a

jr_000_060b:
    ld a, [hl+]
    ldh [rBCPD], a
    dec c
    jr nz, jr_000_060b

jr_000_0611:
    ld a, $02
    ld [$7fe1], a
    call Call_000_0013
    call Call_000_0071
    ret


Call_000_061d:
    ld a, [$7a67]
    call Call_000_0700
    ld c, a
    ret


Jump_000_0625:
    ld a, c
    srl a
    ld [$7fe1], a
    ld hl, $4000
    jr nc, jr_000_0632

    ld h, $50

jr_000_0632:
    ld bc, $1000

jr_000_0635:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_000_0635

    ret


Jump_000_063e:
    ld a, [$7a22]
    cp $11
    ret nz

    ldh a, [rKEY1]
    and $80
    ret z

    xor a
    ldh [rIE], a
    ldh [rIF], a
    ld a, $30
    ldh [rP1], a
    ld a, $01
    ldh [rKEY1], a
    stop
    nop
    nop
    ret


Jump_000_065b:
    ld a, [$7a22]
    cp $11
    ret nz

    ldh a, [rKEY1]
    and $80
    ret nz

    ld a, $00
    ldh [rIE], a
    ldh [rIF], a
    ld a, $30
    ldh [rP1], a
    ld a, $01
    ldh [rKEY1], a
    stop

Jump_000_0676:
    nop
    nop
    ret


    ld d, l
    ld [hl], b
    ld h, a
    ld [hl], d
    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_000_06c5

    ld h, c
    ld [hl], d
    ld [hl], h
    ld [hl], d
    ld l, c
    ld h, h
    ld h, a
    ld h, l
    ld a, [hl-]
    nop
    ld b, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld a, [hl-]
    jr nz, @+$7e

    nop
    ld b, [hl]
    ld l, h
    ld h, c
    ld [hl], e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld a, [hl-]
    jr nz, jr_000_06fd

    ld h, c
    ld l, c
    ld [hl], h
    nop
    ld d, h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_000_06ff

    ld h, [hl]
    ld h, [hl]
    jr nz, jr_000_06fb

    ld h, c
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld a, c
    nop
    jr nz, jr_000_06dd

    ld b, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, c
    ld h, h

jr_000_06c5:
    jr nz, jr_000_070c

    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], d
    nop
    ld d, b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_000_071e

    ld h, l
    ld a, c
    jr nz, @+$48

    ld l, a
    ld [hl], d
    jr nz, @+$4f

    ld h, l
    ld l, [hl]

jr_000_06dd:
    ld [hl], l
    nop
    ld l, $ce
    jr jr_000_06e3

Call_000_06e3:
Jump_000_06e3:
jr_000_06e3:
    ld a, l
    ld [$7a67], a
    jp Jump_000_0700


Call_000_06ea:
Jump_000_06ea:
jr_000_06ea:
    call Call_000_061d
    ld a, e
    cp c
    ret z

    jr jr_000_06ea

Call_000_06f2:
jr_000_06f2:
    call Call_000_00f2
    ld a, c
    cp $ce
    ret z

    cp $fa

jr_000_06fb:
    jr nz, jr_000_06f2

jr_000_06fd:
    cp $ce

jr_000_06ff:
    ret


Call_000_0700:
Jump_000_0700:
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0706:
    ldh a, [rSC]
    and $80
    jr nz, jr_000_0706

jr_000_070c:
    ldh a, [rSB]
    ret


    xor a
    ldh [rIE], a
    ld a, $10
    ld [$7fe5], a
    ld a, [$0040]
    nop
    ld hl, HeaderTitle

jr_000_071e:
    ld de, $ffc0
    ld c, $1c

jr_000_0723:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0723

    ld a, [$0040]
    nop
    ld a, $00
    ld [$7fe5], a
    ret


Call_000_0733:
    cp $3a
    jr z, jr_000_073c

    ld a, $80
    ldh [rSC], a
    ret


Jump_000_073c:
jr_000_073c:
    call Call_000_001b
    ld hl, $0801
    ld de, $0679
    call Call_000_00ce
    ld hl, $0903
    call Call_000_00ce
    ld a, $c5
    call Call_000_0700
    call Call_000_028f
    jp nz, Jump_000_0313

    ld hl, $0903
    ld de, $069b
    call Call_000_00ce
    call Call_000_1006
    ld hl, $0786
    ld de, $d000
    ld bc, $00ae
    call Call_000_007a
    ld c, $07

jr_000_0773:
    push bc
    call $d000
    pop bc
    dec c
    jr nz, jr_000_0773

    ld hl, $0902
    ld de, $06aa
    call Call_000_00ce

jr_000_0784:
    jr jr_000_0784

    ld a, c
    or a
    ret z

    ld [$7fe0], a
    ld de, $6000

Jump_000_078f:
    push de
    ld a, c
    srl a
    ld [$7a55], a
    ld hl, $4000
    jr nc, jr_000_079d

    ld h, $50

jr_000_079d:
    push hl
    ld a, [$7aa3]
    cp $bf
    jr nz, jr_000_07b6

    ld hl, $07cc
    ld de, $ff80
    ld bc, $0068
    call Call_000_007a
    pop hl
    pop de
    jp $ff80


jr_000_07b6:
    ld a, $03
    ld [$7fe1], a
    ld hl, $4000
    ld de, $7800
    ld bc, $0077
    call Call_000_007a
    pop hl
    pop de
    jp $7800


    ld a, $02
    ld [$7fe1], a
    ld bc, $5555
    ld a, $aa
    ld [bc], a
    ld a, c
    ld [$2aaa], a
    ld a, $80
    ld [bc], a
    ld a, $aa
    ld [bc], a
    ld a, c
    ld [$2aaa], a
    ld a, [$7a55]
    ld [$7fe1], a
    ld [hl], $30
    ld a, [$0000]
    and $40

jr_000_07f2:
    ld c, a
    ld a, [$0000]
    and $40
    cp c
    jr nz, jr_000_07f2

    ld bc, $1000

jr_000_07fe:
    push bc
    ld bc, $5555
    ld a, $02
    ld [$7fe1], a
    ld a, $aa
    ld [bc], a
    ld a, c
    ld [$2aaa], a
    ld a, $a0
    ld [bc], a
    ld a, [$7a55]
    ld [$7fe1], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [$0000]
    and $40

jr_000_081f:
    ld c, a
    ld a, [$0000]
    and $40
    cp c
    jr nz, jr_000_081f

    pop bc
    dec bc
    ld a, c
    or b
    jr nz, jr_000_07fe

    ld a, $02
    ld [$7fe1], a
    ret


    ld a, $03
    ld [$7fe2], a
    ld a, $02
    ld [$7fe7], a
    ld a, $07
    ld [$7fe6], a
    xor a
    ld [$7fe5], a
    ldh [rIE], a
    ldh [rP1], a
    ldh [rIE], a
    ldh [rSB], a
    ldh [rIF], a
    ldh [rSTAT], a
    ldh [rLY], a
    ld a, $01
    ldh [rTIMA], a
    ldh [rTMA], a
    ld a, $7e
    ldh [rSC], a
    ld a, $f8
    ldh [rTAC], a
    ld a, $81
    ldh [rLCDC], a
    ld b, $00
    ld c, $00
    ld d, $00
    ld e, $00
    ld h, $00
    ld l, $00
    ld a, [$7a20]
    ld [$0040], a
    ld sp, $fffe
    jp Jump_000_0101


Jump_000_087f:
    ld hl, $9190
    xor a
    ld a, $80
    ld b, $07

jr_000_0887:
    ld c, $10

jr_000_0889:
    ld [hl+], a
    dec c
    jr nz, jr_000_0889

    rra
    or $80
    dec b
    jr nz, jr_000_0887

    ret


Jump_000_0894:
    reti


Jump_000_0895:
    xor a
    ld [$7a9b], a
    ld a, $03
    ld hl, $1084
    jp Jump_000_1063


Jump_000_08a1:
    call Call_000_001b
    ld a, $09
    ld [$7fe1], a
    ld a, [$5832]
    cp $55
    jr z, jr_000_08d3

    ld de, $10d4
    ld hl, $0803
    call Call_000_00ce
    ld hl, $0901
    call Call_000_00ce
    ld a, $ee
    call Call_000_0700

jr_000_08c4:
    call Call_000_0013
    call Call_000_0099
    ld a, [$7a6a]
    or a
    jr z, jr_000_08c4

    jp Jump_000_1174


jr_000_08d3:
    xor a
    ld [$7a9b], a
    ld a, $03
    ld hl, $1087
    call Call_000_1063
    jp Jump_000_1171


Jump_000_08e2:
    call Call_000_102d
    xor a
    ld [$7a4e], a
    ld a, $10
    ld [$75b0], a
    call Call_000_001b
    ld de, $10c4
    ld hl, $0802
    call Call_000_00ce
    ld a, $99
    ld [$7a9f], a
    call Call_000_0700
    ld hl, $c000
    ld a, h
    ld [$7a9d], a
    call Call_000_1015
    jp Jump_000_1171


Jump_000_090f:
    cp $64
    jp z, Jump_000_1054

    cp $65
    jp z, Jump_000_1051

    cp $3a
    jp z, Jump_000_073c

    cp $5a
    jp z, Jump_000_1081

    cp $56
    jp z, Jump_000_107e

    cp $66
    jp z, Jump_000_08e2

    ld a, $c0
    ld [$7a9d], a
    ld a, $80
    ldh [rSC], a
    ret


Jump_000_0937:
    ld a, $03
    ld [$7fe1], a
    ld hl, $4077
    ld de, $7800
    ld bc, $0022
    call Call_000_007a
    call $7800
    ld a, l
    ld [$7aa3], a
    ld a, h
    ld [$7aa4], a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    dec l
    ld e, h
    ld a, h
    ld c, l
    ld h, c
    ld l, [hl]
    ld [hl], l
    ld h, c
    ld l, h
    jr nz, @+$57

    ld [hl], b
    ld h, a
    ld [hl], d
    ld h, c
    ld h, h
    ld h, l
    nop

Call_000_09d3:
Jump_000_09d3:
    jp Jump_000_0625


Call_000_09d6:
Jump_000_09d6:
    jp Jump_000_078f


Call_000_09d9:
    jp Jump_000_023c


Call_000_09dc:
    jp Jump_000_119d


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_000_0a2a

    jr jr_000_0a2c

    jr jr_000_0a2e

    jr jr_000_0a30

    nop
    nop
    jr jr_000_0a34

    jr jr_000_0a36

    nop
    nop
    call z, $cccc
    call z, $8888
    nop
    nop
    nop
    nop

jr_000_0a2a:
    nop
    nop

jr_000_0a2c:
    nop
    nop

jr_000_0a2e:
    nop
    nop

jr_000_0a30:
    ld l, h
    ld l, h
    ld l, h
    ld l, h

jr_000_0a34:
    cp $fe

jr_000_0a36:
    ld l, h
    ld l, h
    cp $fe
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    nop
    nop
    db $10
    db $10
    inc a
    inc a
    ld d, b
    ld d, b
    jr c, jr_000_0a80

    inc d
    inc d
    ld a, b
    ld a, b
    db $10
    stop
    nop
    ld b, d
    ld b, d
    and [hl]
    and [hl]
    ld c, h
    ld c, h
    jr jr_000_0a70

    inc [hl]
    inc [hl]
    ld l, d
    ld l, d
    call nz, Call_000_00c4
    nop
    jr nc, jr_000_0a92

    ld c, b
    ld c, b
    jr nc, jr_000_0a96

    ld d, d
    ld d, d
    adc h
    adc h
    add h
    add h
    ld a, d
    ld a, d
    nop
    nop

jr_000_0a70:
    jr jr_000_0a8a

    jr jr_000_0a8c

    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_0a80:
    jr jr_000_0a9a

    jr nc, jr_000_0ab4

    jr nc, jr_000_0ab6

    jr nc, jr_000_0ab8

    jr nc, jr_000_0aba

jr_000_0a8a:
    jr nc, jr_000_0abc

jr_000_0a8c:
    jr jr_000_0aa6

    nop
    nop
    jr nc, jr_000_0ac2

jr_000_0a92:
    jr jr_000_0aac

    jr jr_000_0aae

jr_000_0a96:
    jr jr_000_0ab0

    jr jr_000_0ab2

jr_000_0a9a:
    jr jr_000_0ab4

    jr nc, jr_000_0ace

    nop
    nop
    db $10
    db $10
    jr c, jr_000_0adc

    cp $fe

jr_000_0aa6:
    ld a, h
    ld a, h
    jr c, jr_000_0ae2

    ld a, h
    ld a, h

jr_000_0aac:
    add $c6

jr_000_0aae:
    nop
    nop

jr_000_0ab0:
    nop
    nop

jr_000_0ab2:
    nop
    nop

jr_000_0ab4:
    jr nz, jr_000_0ad6

jr_000_0ab6:
    jr nz, jr_000_0ad8

jr_000_0ab8:
    ld hl, sp-$08

jr_000_0aba:
    jr nz, jr_000_0adc

jr_000_0abc:
    jr nz, jr_000_0ade

    nop
    nop
    nop
    nop

jr_000_0ac2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_000_0afc

    jr nc, jr_000_0afe

jr_000_0ace:
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_0ad6:
    ld a, h
    ld a, h

jr_000_0ad8:
    nop
    nop
    nop
    nop

jr_000_0adc:
    nop
    nop

jr_000_0ade:
    nop
    nop
    nop
    nop

jr_000_0ae2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_000_0b1c

    jr nc, jr_000_0b1e

    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc c
    inc c
    jr jr_000_0b10

    jr nc, jr_000_0b2a

    ld h, b
    ld h, b

jr_000_0afc:
    ret nz

    ret nz

jr_000_0afe:
    nop
    nop
    jr c, jr_000_0b3a

    ld l, h
    ld l, h
    adc $ce
    sub $d6
    and $e6
    ld l, h
    ld l, h
    jr c, jr_000_0b46

    nop
    nop

jr_000_0b10:
    jr jr_000_0b2a

    jr c, jr_000_0b4c

    jr jr_000_0b2e

    jr jr_000_0b30

    jr jr_000_0b32

    jr jr_000_0b34

jr_000_0b1c:
    ld a, [hl]
    ld a, [hl]

jr_000_0b1e:
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    ld b, $06
    inc e
    inc e
    jr nc, jr_000_0b5a

jr_000_0b2a:
    ld h, [hl]
    ld h, [hl]
    cp $fe

jr_000_0b2e:
    nop
    nop

jr_000_0b30:
    ld a, h
    ld a, h

jr_000_0b32:
    add $c6

jr_000_0b34:
    ld b, $06
    inc a
    inc a
    ld b, $06

jr_000_0b3a:
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    inc e
    inc e
    inc a
    inc a
    ld l, h
    ld l, h

jr_000_0b46:
    call z, $fecc
    cp $0c
    inc c

jr_000_0b4c:
    ld e, $1e
    nop
    nop
    cp $fe
    ret nz

    ret nz

    ret nz

    ret nz

    db $fc
    db $fc
    ld b, $06

jr_000_0b5a:
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    ld h, b
    ld h, b
    ret nz

    ret nz

    db $fc
    db $fc
    add $c6
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
    add $c6
    inc c
    inc c
    jr jr_000_0b90

    jr nc, jr_000_0baa

    jr nc, jr_000_0bac

    jr nc, jr_000_0bae

    nop
    nop
    ld a, h
    ld a, h
    add $c6
    add $c6
    ld a, h
    ld a, h
    add $c6
    add $c6
    ld a, h
    ld a, h
    nop
    nop

jr_000_0b90:
    ld a, h
    ld a, h
    add $c6
    add $c6
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    inc c
    inc c
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    jr nc, jr_000_0bd4

    jr nc, jr_000_0bd6

    nop
    nop
    nop
    nop

jr_000_0baa:
    jr nc, jr_000_0bdc

jr_000_0bac:
    jr nc, jr_000_0bde

jr_000_0bae:
    nop
    nop
    nop
    nop
    jr nc, jr_000_0be4

    jr nc, jr_000_0be6

    nop
    nop
    nop
    nop
    jr nc, jr_000_0bec

    jr nc, jr_000_0bee

    ld h, b
    ld h, b
    inc c
    inc c
    jr jr_000_0bdc

    jr nc, jr_000_0bf6

    ld h, b
    ld h, b
    jr nc, jr_000_0bfa

    jr jr_000_0be4

    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_0bd4:
    db $fc
    db $fc

jr_000_0bd6:
    nop
    nop
    nop
    nop
    db $fc
    db $fc

jr_000_0bdc:
    nop
    nop

jr_000_0bde:
    nop
    nop
    ret nz

    ret nz

    ld h, b
    ld h, b

jr_000_0be4:
    jr nc, jr_000_0c16

jr_000_0be6:
    jr jr_000_0c00

    jr nc, jr_000_0c1a

    ld h, b
    ld h, b

jr_000_0bec:
    ret nz

    ret nz

jr_000_0bee:
    nop
    nop
    ld a, b
    ld a, b
    call z, Call_000_0ccc
    inc c

jr_000_0bf6:
    jr c, jr_000_0c30

    jr nc, jr_000_0c2a

jr_000_0bfa:
    nop
    nop
    jr nc, jr_000_0c2e

    nop
    nop

jr_000_0c00:
    inc a
    inc a
    ld b, d
    ld b, d
    sbc d
    sbc d
    xor d
    xor d
    sbc h
    sbc h
    ld b, b
    ld b, b
    inc a
    inc a
    nop
    nop
    jr c, jr_000_0c4a

    ld l, h
    ld l, h
    add $c6

jr_000_0c16:
    cp $fe
    add $c6

jr_000_0c1a:
    add $c6
    add $c6
    nop
    nop
    db $fc
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]

jr_000_0c2a:
    ld h, [hl]
    ld h, [hl]
    db $fc
    db $fc

jr_000_0c2e:
    nop
    nop

jr_000_0c30:
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    ld hl, sp-$08
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_000_0c4a:
    ld l, h
    ld l, h
    ld hl, sp-$08
    nop
    nop
    cp $fe
    ld h, d
    ld h, d
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    ld l, b
    ld l, b
    ld h, d
    ld h, d
    cp $fe
    nop
    nop
    cp $fe
    ld h, d
    ld h, d
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    ld l, b
    ld l, b
    ld h, b
    ld h, b
    ldh a, [$f0]
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ret nz

    ret nz

    ret nz

    ret nz

    adc $ce
    ld h, [hl]
    ld h, [hl]
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    add $c6
    add $c6
    add $c6
    cp $fe
    add $c6
    add $c6
    add $c6
    nop
    nop
    inc a
    inc a
    jr @+$1a

    jr jr_000_0cae

    jr jr_000_0cb0

    jr jr_000_0cb2

    jr jr_000_0cb4

    inc a
    inc a
    nop
    nop
    ld e, $1e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    call z, $cccc
    call z, $7878

jr_000_0cae:
    nop
    nop

jr_000_0cb0:
    and $e6

jr_000_0cb2:
    ld h, [hl]
    ld h, [hl]

jr_000_0cb4:
    ld l, h
    ld l, h
    ld a, b
    ld a, b
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    and $e6
    nop
    nop
    ldh a, [$f0]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, d
    ld h, d
    ld h, [hl]
    ld h, [hl]

Call_000_0ccc:
    cp $fe
    nop
    nop
    add $c6
    xor $ee
    cp $fe
    cp $fe
    sub $d6
    add $c6
    add $c6
    nop
    nop
    add $c6
    and $e6
    or $f6
    sbc $de
    adc $ce
    add $c6
    add $c6
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    add $c6
    add $c6
    add $c6
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ldh a, [$f0]
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    add $c6
    add $c6
    jp z, $ccca

    call z, $7676
    nop
    nop
    db $fc
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    and $e6
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    jr nc, jr_000_0d66

    jr jr_000_0d50

    inc c
    inc c
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld e, d
    ld e, d
    jr jr_000_0d60

    jr jr_000_0d62

    jr jr_000_0d64

    inc a
    inc a
    nop
    nop

jr_000_0d50:
    add $c6
    add $c6
    add $c6
    add $c6
    add $c6
    add $c6
    ld a, h
    ld a, h
    nop
    nop

jr_000_0d60:
    add $c6

jr_000_0d62:
    add $c6

jr_000_0d64:
    add $c6

jr_000_0d66:
    add $c6
    add $c6
    ld l, h
    ld l, h
    jr c, jr_000_0da6

    nop
    nop
    add $c6
    add $c6
    add $c6
    sub $d6
    sub $d6
    cp $fe
    ld l, h
    ld l, h
    nop
    nop
    add $c6
    add $c6
    ld l, h
    ld l, h
    jr c, jr_000_0dc0

    ld l, h
    ld l, h
    add $c6
    add $c6
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    jr jr_000_0db2

    jr jr_000_0db4

    inc a
    inc a
    nop
    nop
    cp $fe
    add $c6
    adc h
    adc h

jr_000_0da6:
    jr jr_000_0dc0

    ld [hl-], a
    ld [hl-], a
    ld h, [hl]
    ld h, [hl]
    cp $fe
    nop
    nop
    jr c, jr_000_0dea

jr_000_0db2:
    jr nc, jr_000_0de4

jr_000_0db4:
    jr nc, jr_000_0de6

    jr nc, jr_000_0de8

    jr nc, jr_000_0dea

    jr nc, jr_000_0dec

    jr c, jr_000_0df6

    nop
    nop

jr_000_0dc0:
    ret nz

    ret nz

    ld h, b
    ld h, b
    jr nc, jr_000_0df6

    jr jr_000_0de0

    inc c
    inc c
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    jr c, jr_000_0e0a

    jr jr_000_0dec

    jr jr_000_0dee

    jr jr_000_0df0

    jr jr_000_0df2

    jr jr_000_0df4

    jr c, jr_000_0e16

    nop
    nop

jr_000_0de0:
    jr nz, jr_000_0e02

    ld d, b
    ld d, b

jr_000_0de4:
    adc b
    adc b

jr_000_0de6:
    nop
    nop

jr_000_0de8:
    nop
    nop

jr_000_0dea:
    nop
    nop

jr_000_0dec:
    nop
    nop

jr_000_0dee:
    nop
    nop

jr_000_0df0:
    nop
    nop

jr_000_0df2:
    nop
    nop

jr_000_0df4:
    nop
    nop

jr_000_0df6:
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    nop
    nop
    db $10
    db $10

jr_000_0e02:
    jr nc, jr_000_0e34

    jr nc, jr_000_0e36

    nop
    nop
    nop
    nop

jr_000_0e0a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b

jr_000_0e16:
    inc c
    inc c
    ld a, h
    ld a, h
    call z, $76cc
    halt
    nop
    ldh [$e0], a
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    call c, Call_000_00dc
    nop
    nop
    nop
    nop
    nop

jr_000_0e34:
    ld a, h
    ld a, h

jr_000_0e36:
    add $c6
    ret nz

    ret nz

    add $c6
    ld a, h
    ld a, h
    nop
    nop
    inc e
    inc e
    inc c
    inc c
    ld a, h
    ld a, h
    call z, $cccc
    call z, $cccc
    db $76
    halt
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    cp $fe
    ret nz

    ret nz

    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld hl, sp-$08
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    call z, $cccc
    call z, $7c7c
    inc c
    inc c
    ld hl, sp-$08
    ldh [$e0], a
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    and $e6
    nop
    nop
    jr jr_000_0eaa

    nop
    nop
    jr c, jr_000_0ece

    jr jr_000_0eb0

    jr jr_000_0eb2

    jr jr_000_0eb4

    inc a
    inc a
    nop
    nop
    ld b, $06
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06

jr_000_0eaa:
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a

jr_000_0eb0:
    ldh [$e0], a

jr_000_0eb2:
    ld h, b
    ld h, b

jr_000_0eb4:
    ld h, [hl]
    ld h, [hl]
    ld l, h
    ld l, h
    ld a, b
    ld a, b
    ld l, h
    ld l, h
    and $e6
    nop
    nop
    jr c, jr_000_0efa

    jr jr_000_0edc

    jr jr_000_0ede

    jr jr_000_0ee0

    jr jr_000_0ee2

    jr jr_000_0ee4

    inc a
    inc a

jr_000_0ece:
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    db $ec
    cp $fe
    sub $d6
    sub $d6

jr_000_0edc:
    sub $d6

jr_000_0ede:
    nop
    nop

jr_000_0ee0:
    nop
    nop

jr_000_0ee2:
    nop
    nop

jr_000_0ee4:
    call c, $66dc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    add $c6

jr_000_0efa:
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    call z, $cccc
    call z, $7c7c
    inc c
    inc c
    ld e, $1e
    nop
    nop
    nop
    nop
    call c, $76dc
    db $76
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ret nz

    ret nz

    ld a, h
    ld a, h
    ld b, $06
    db $fc
    db $fc
    nop
    nop
    jr nc, jr_000_0f72

    jr nc, jr_000_0f74

    db $fc
    db $fc
    jr nc, jr_000_0f78

    jr nc, jr_000_0f7a

    ld [hl], $36
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $cccc
    call z, $cccc
    call z, $76cc
    halt
    nop
    nop
    nop
    nop
    nop
    add $c6
    add $c6
    add $c6
    ld l, h
    ld l, h
    jr c, jr_000_0fa6

    nop
    nop
    nop
    nop

jr_000_0f72:
    nop
    nop

jr_000_0f74:
    add $c6
    sub $d6

jr_000_0f78:
    sub $d6

jr_000_0f7a:
    cp $fe
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    add $c6
    ld l, h
    ld l, h
    jr c, jr_000_0fc2

    ld l, h
    ld l, h
    add $c6
    nop
    nop
    nop
    nop
    nop
    nop
    add $c6
    add $c6
    add $c6
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]

jr_000_0fa6:
    ld c, h
    ld c, h
    jr jr_000_0fc2

    ld [hl-], a
    ld [hl-], a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld [$1008], sp
    db $10
    db $10
    db $10
    jr nz, @+$22

    db $10
    db $10
    db $10
    db $10
    ld [$0008], sp
    nop
    db $10
    db $10

jr_000_0fc2:
    db $10
    db $10
    db $10
    stop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    jr nz, @+$22

    db $10
    db $10
    db $10
    db $10
    ld [$1008], sp
    db $10
    db $10
    db $10
    jr nz, jr_000_0ffe

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, h
    sbc b
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld b, $06
    inc c

Jump_000_0ff7:
    inc c
    jr jr_000_1012

    or b
    or b
    ldh [$e0], a

jr_000_0ffe:
    ld b, b
    ld b, b

Call_000_1000:
    jp Jump_000_1892


Call_000_1003:
    jp Jump_000_1360


Call_000_1006:
    jp Jump_000_0937


Call_000_1009:
    jp Jump_000_087f


Call_000_100c:
    jp Jump_000_12be


Call_000_100f:
    jp $40f5


Call_000_1012:
jr_000_1012:
    jp $413f


Call_000_1015:
    jp $40a4


Call_000_1018:
    jp $41a4


Call_000_101b:
    jp $41be


Call_000_101e:
    jp $416c


Call_000_1021:
    jp $417f


Jump_000_1024:
    jp $4155


Call_000_1027:
    jp $4038


Call_000_102a:
    jp Jump_000_065b


Call_000_102d:
    jp Jump_000_063e


Jump_000_1030:
    jp Jump_000_3c63


Jump_000_1033:
    jp Jump_000_3cda


Jump_000_1036:
    jp Jump_000_3cd6


Jump_000_1039:
    jp Jump_000_3c8d


Jump_000_103c:
    jp Jump_000_3cf2


Jump_000_103f:
    jp Jump_000_3c70


Call_000_1042:
    jp $44a3


Call_000_1045:
    jp $5cda


Call_000_1048:
    jp Jump_000_21ad


Call_000_104b:
    jp Jump_000_3c01


Call_000_104e:
    jp Jump_000_2251


Jump_000_1051:
    jp Jump_000_112e


Jump_000_1054:
    jp Jump_000_1151


    jp Jump_000_10f6


Call_000_105a:
Jump_000_105a:
    jp Jump_000_1211


Call_000_105d:
    jp Jump_000_1233


Call_000_1060:
    jp Jump_000_1270


Call_000_1063:
Jump_000_1063:
    jp Jump_000_12a6


    jp Jump_000_132a


    jp Jump_000_1500


Call_000_106c:
    jp Jump_000_15cd


Call_000_106f:
    jp Jump_000_16b6


Call_000_1072:
Jump_000_1072:
    jp Jump_000_17e7


Call_000_1075:
    jp Jump_000_17bd


Jump_000_1078:
    jp $5c8a


Call_000_107b:
    jp Jump_000_1316


Jump_000_107e:
    jp Jump_000_0895


Jump_000_1081:
    jp Jump_000_08a1


    jp $40d8


    jp $4180


    jp Jump_000_1299


    jp Jump_000_0236


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_109d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_10c0:
    reti


    nop

Jump_000_10c2:
    reti


    nop
    ld b, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    jr nz, @+$55

    ld l, e
    ld l, c
    ld l, [hl]
    ld a, [hl-]
    jr nz, jr_000_10d4

jr_000_10d4:
    ld c, [hl]
    ld l, a
    jr nz, jr_000_112b

    ld l, [hl]
    ld h, c
    ld [hl], b
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_000_1135

    ld l, a
    nop
    ld d, l
    ld [hl], b
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    inc l
    jr nz, @+$4a

    ld l, c
    ld [hl], h
    jr nz, jr_000_1132

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, [hl]
    nop

Jump_000_10f6:
    push af
    push bc
    push hl
    ld b, l
    ld a, h
    add $c0
    ld l, a
    ld h, $04
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    or b
    ld l, a

jr_000_1108:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1108

    ld a, [$7a22]
    or a
    jr z, jr_000_111e

    ld a, $01
    ldh [rVBK], a
    ld a, $07
    ld [hl], a
    xor a
    ldh [rVBK], a

jr_000_111e:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_111e

    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_1108

    pop hl

jr_000_112b:
    pop bc
    pop af
    ret


Jump_000_112e:
    call Call_000_102d
    xor a

jr_000_1132:
    ld [$7a4e], a

jr_000_1135:
    ld a, $08
    ld [$75b0], a
    call Call_000_001b
    call $4026
    ld a, $9a
    ld [$7a9f], a
    call Call_000_0004
    ld hl, $c000
    call Call_000_1015
    jp Jump_000_1171


Jump_000_1151:
    call Call_000_001b
    ld a, $04
    ld [$75b0], a
    call Call_000_102d
    ld a, $9b
    ld [$7a9f], a
    call Call_000_0004
    call $4014
    ld hl, $4000
    ld de, $8000
    ld b, l
    call Call_000_09dc

Jump_000_1171:
    call Call_000_102a

Jump_000_1174:
    ld a, $02
    ld [$7fe1], a
    ld a, $80
    ldh [rSC], a
    ld a, [$7a63]
    cp $ff
    jr nz, jr_000_119c

    ld a, $0c
    ldh [rSCY], a
    call Call_000_0068
    call Call_000_1048
    call Call_000_104b
    call Call_000_104e
    call Call_000_0071
    ld a, $01
    ld [$75be], a

jr_000_119c:
    ret


Jump_000_119d:
    ld a, e
    add $ff
    ld a, d
    adc $00
    ld [$7a52], a
    ld c, $00

jr_000_11a8:
    ld a, b
    rra
    rra
    rra
    rra
    rra
    and $07
    push bc
    ld c, a
    ld a, [$75b0]
    add c
    pop bc
    ld [$7fe1], a
    ld a, d
    or a
    jr z, jr_000_11e0

    dec de
    ld a, d
    inc de
    or a
    jr nz, jr_000_11c8

    set 7, d
    jr jr_000_11e4

jr_000_11c8:
    ld a, d
    cp $80
    jr c, jr_000_11d7

    push de
    ld de, $0100
    call Call_000_11e4
    pop de
    jr jr_000_11da

jr_000_11d7:
    call Call_000_11e4

jr_000_11da:
    ld c, $00
    inc b
    dec d
    jr jr_000_11a8

jr_000_11e0:
    or e
    ret z

    ld d, $80

Call_000_11e4:
jr_000_11e4:
    push hl
    push de
    push bc
    ld a, b
    ld [$d309], a
    ld c, $00
    ld a, d
    and $80
    jr nz, jr_000_11f5

    ld de, $0100

jr_000_11f5:
    call Call_000_0263
    call Call_000_1027
    call Call_000_1012
    call Call_000_06f2
    pop bc
    pop de
    pop hl
    jr z, jr_000_120f

    inc c
    ld a, c
    cp $05
    or a
    jr nz, jr_000_11e4

    or a
    ret


jr_000_120f:
    xor a
    ret


Jump_000_1211:
    push af
    push bc
    push de
    ld c, a
    swap a
    and $0f
    cp $0a
    jr c, jr_000_121f

    add $07

jr_000_121f:
    add $30
    ld [de], a
    inc de
    ld a, c
    and $0f
    cp $0a
    jr c, jr_000_122c

    add $07

jr_000_122c:
    add $30
    ld [de], a
    pop de
    pop bc
    pop af
    ret


Jump_000_1233:
    push af
    push bc
    push de
    push hl
    call Call_000_0013
    call Call_000_0068
    ld a, [$7a22]
    cp $11
    jr nz, jr_000_124c

    ldh a, [rVBK]
    push af
    ld a, $02
    ld [$7fe1], a

jr_000_124c:
    call $4298
    call $421e
    call $4246
    call $4255
    call $427b
    call $4287
    ld a, [$7a22]
    cp $11
    jr nz, jr_000_1268

    pop af
    ldh [rVBK], a

jr_000_1268:
    call Call_000_0071
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_000_1270:
    push af
    push bc
    push de
    push hl
    call Call_000_0013
    call Call_000_0068
    ld a, $02
    ld [$7fe1], a
    call $436c
    call $435b
    call $4335
    call $4326
    call $42fe
    call $437d
    call Call_000_0071
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_000_1299:
    ld a, $91
    ldh [rLCDC], a
    dec a
    ldh [rLY], a
    ld a, $81
    ldh [rSTAT], a
    xor a
    ret


Jump_000_12a6:
    ld [$7fe1], a
    call Call_000_12b2
    ld a, $02
    ld [$7fe1], a
    ret


Call_000_12b2:
    jp hl


Call_000_12b3:
    push af

jr_000_12b4:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_12b4

    pop af
    ret


Jump_000_12be:
    ld hl, $0a00
    ld de, $8a00
    ld bc, $0600

jr_000_12c7:
    ld a, [hl+]
    cpl
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_12c7

    ld hl, $5960
    ld a, [$7a22]
    or a
    jr nz, jr_000_12dc

    ld hl, $5972

jr_000_12dc:
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    ld de, $9000
    ld bc, $0110
    call Call_000_12b3
    pop hl
    inc hl
    ld b, $08

Call_000_12ed:
jr_000_12ed:
    push bc
    ld a, [hl+]
    ld c, [hl]
    inc hl
    push hl
    ld h, c
    ld l, a
    ld bc, $0010
    call Call_000_12b3
    pop hl
    pop bc
    dec b
    jr nz, jr_000_12ed

    ld a, $03
    ld [$7fe1], a
    ld hl, $45e6
    ld de, $8800
    ld bc, $0200
    call Call_000_007a
    ld a, $02
    ld [$7fe1], a
    ret


Jump_000_1316:
    ret


    ld d, a
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_000_1371

    ld l, [hl]
    ld h, c
    ld [hl], b
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, @+$48

    ld l, a
    ld [hl], d
    nop

Jump_000_132a:
    ld a, $05
    ld [$7fe0], a
    ld a, $09
    ld [$7fe1], a
    ld hl, $4000
    ld de, $6000
    ld bc, $1000
    call Call_000_007a
    ld hl, $7900
    ld de, $6000
    ld bc, $00a0
    call Call_000_007a
    call Call_000_1006
    ld c, $12
    ld de, $6000
    call Call_000_09d6
    ld a, $02
    ld [$7fe0], a
    ld [$7fe1], a
    ret


Jump_000_1360:
    ld a, $02
    ld [$7fe1], a
    call Call_000_001b

Jump_000_1368:
    call Call_000_187a
    ld hl, $0100
    ld de, $5e62

jr_000_1371:
    call Call_000_1072
    inc h
    ld de, $5e77
    call Call_000_1072
    ld hl, $7a6e
    ld [hl], $c1
    inc l
    ld [hl], $98
    ld b, $00
    ld a, [$7a22]
    or a
    jr z, jr_000_1393

    inc b
    ld a, [$7a15]
    or a
    jr z, jr_000_1393

    inc b

jr_000_1393:
    ld a, b
    ld [$7a69], a
    ld a, $80
    ldh [rSC], a

Jump_000_139b:
jr_000_139b:
    call Call_000_0013
    call Call_000_0099
    ld a, [$7a6a]
    or a
    jr nz, jr_000_139b

    ld a, [$7a63]
    add a
    add $23
    ld l, a
    adc $56
    sub l
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    xor a
    ld [$7a64], a
    ld a, [de]
    inc de
    ld [$7a65], a
    ld c, a
    push de
    ld a, $95
    ld [$7a93], a
    ld a, $7a
    ld [$7a94], a
    ld hl, $0500
    ld de, $5f88
    call Call_000_1072
    inc h
    pop de
    call Call_000_1072
    inc h
    push de
    ld de, $5fb2
    call Call_000_1072
    inc h
    pop de

jr_000_13e2:
    call Call_000_1072
    inc h
    push hl
    ld a, [$7a93]
    ld l, a
    ld a, [$7a94]
    ld h, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, l
    ld [$7a93], a
    ld a, h
    ld [$7a94], a
    pop hl
    dec c
    jr nz, jr_000_13e2

    ld de, $5f9d
    call Call_000_1072
    inc h
    ld a, [$7a63]
    cp $03
    jr nz, jr_000_1436

    ld de, $1850
    call Call_000_1072
    inc h
    ld a, $09
    ld [$7fe1], a
    ld de, $5800
    push hl
    call Call_000_1790
    pop af
    ld h, a
    call Call_000_1072
    inc h
    ld l, $00
    ld a, $01
    ld [$7a66], a
    ld a, $02
    ld [$7fe1], a
    jr jr_000_144b

jr_000_1436:
    or a
    jr nz, jr_000_144b

    ld a, [$7a70]
    or a
    jr nz, jr_000_144b

    ld de, $1865
    call Call_000_1072
    inc h
    ld a, $01
    ld [$7a66], a

jr_000_144b:
    call Call_000_187a
    ld a, [$7a66]
    or a
    jr nz, jr_000_1460

jr_000_1454:
    ld de, $5fc7
    call Call_000_1072
    inc h
    ld a, h
    cp $12
    jr c, jr_000_1454

jr_000_1460:
    ld a, [$7a63]
    cp $06
    jr c, jr_000_1473

    call Call_000_0013
    call Call_000_150e
    call $479b
    call $555d

jr_000_1473:
    call Call_000_0013
    call Call_000_150e

jr_000_1479:
    call Call_000_0023
    jr nz, jr_000_1488

    cp $5a
    jp z, $445e

    cp $56
    jp z, $4483

jr_000_1488:
    ldh a, [rLY]
    cp $8f
    jr nz, jr_000_1479

    call Call_000_0099
    ld b, a
    bit 2, b
    jr z, jr_000_14a2

    ld a, [$7a64]
    or a
    jr z, jr_000_14a2

    dec a
    ld [$7a64], a
    jr jr_000_1473

jr_000_14a2:
    bit 3, b
    jr z, jr_000_14b7

    ld a, [$7a65]
    dec a
    ld c, a
    ld a, [$7a64]
    cp c
    jr z, jr_000_14b7

    inc a
    ld [$7a64], a
    jr jr_000_1473

jr_000_14b7:
    bit 4, b
    jr z, jr_000_1479

    ld a, $01
    ld [$7a68], a
    ld a, [$7a64]
    add a
    ld e, a
    ld d, $00
    ld hl, $7a95
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or a
    jr nz, jr_000_14eb

    ld a, l
    cp $03
    jr nz, jr_000_14de

    ld a, [$7a70]
    or a
    ld a, l
    jr z, jr_000_14e1

jr_000_14de:
    ld [$7a63], a

jr_000_14e1:
    call Call_000_14f3
    xor a
    ld [$7a66], a
    jp Jump_000_139b


jr_000_14eb:
    ld de, $139b
    push de
    call Call_000_14f3
    jp hl


Call_000_14f3:
jr_000_14f3:
    call Call_000_0013
    call Call_000_0099
    ld a, [$7a6a]
    or a
    jr nz, jr_000_14f3

    ret


Jump_000_1500:
    ld a, [$7a63]
    cp $08
    jr c, jr_000_150c

    sub $02
    ld [$7a63], a

jr_000_150c:
    pop hl
    ret


Call_000_150e:
    ld b, $08
    ld c, $0b

jr_000_1512:
    call Call_000_151b
    ret c

    inc b
    dec c
    jr nz, jr_000_1512

    ret


Call_000_151b:
    push bc
    ld a, [$7a64]
    add $08
    ld de, $1200
    cp b
    jr nz, jr_000_1529

    ld e, $03

jr_000_1529:
    ld a, b
    add $c0
    ld l, a
    ld h, $04
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    inc l
    ld a, [$7a22]
    cp $11
    jr nz, jr_000_155e

    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a

jr_000_1543:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1543

    ld a, [hl]
    cp $02
    jr z, jr_000_1555

    ld a, e
    ld [hl+], a
    dec d
    jr nz, jr_000_1543

    ld a, $40

jr_000_1555:
    ld c, a
    pop af
    ldh [rVBK], a
    ld a, c
    cp $20
    pop bc
    ret


jr_000_155e:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_155e

    ld a, [hl]
    and $7f
    cp $20
    jr c, jr_000_1575

    bit 0, e
    jr z, jr_000_1571

    or $80

jr_000_1571:
    ld [hl+], a
    dec d
    jr nz, jr_000_155e

jr_000_1575:
    pop bc
    ret


Call_000_1577:
    push af
    push bc
    push de
    push hl
    ld a, l
    ld l, e
    ld e, a
    ld a, h
    ld h, d
    ld d, a
    ld b, $13

jr_000_1583:
    ld c, $14

jr_000_1585:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1585

    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_1585

    ld a, e
    add $0c
    ld e, a
    adc d
    sub e
    ld d, a
    ld a, l
    add $0c
    ld l, a
    adc h
    sub l
    ld h, a
    dec b
    jr nz, jr_000_1583

    pop hl
    pop de
    pop bc
    pop af

Call_000_15a6:
    push af
    push bc
    push de
    push hl

jr_000_15aa:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_15aa

    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_15aa

    pop hl
    pop de
    pop bc
    pop af
    ret


    ld d, h
    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_000_1618

    ld l, [hl]
    ld h, c
    ld [hl], b
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    nop

Jump_000_15cd:
    ld a, [$7a22]
    cp $11
    jr nz, jr_000_15d8

    ld a, $01
    ldh [rVBK], a

jr_000_15d8:
    ld a, $05
    ld [$7fe0], a
    ld a, $55
    ld [$7a70], a
    ld hl, $c000
    ld de, $6000
    ld bc, $1000
    call Call_000_007a
    ld c, $1e
    ld de, $c000
    call Call_000_09d6
    ld c, $1f
    ld de, $d000
    call Call_000_09d6
    ld a, $06
    ld [$7fe0], a
    ld c, $1c
    ld de, $6000
    call Call_000_09d6
    ld a, $07
    ld [$7fe0], a
    ld c, $1d
    ld de, $6000
    call Call_000_09d6

jr_000_1618:
    ld a, [$7a22]
    cp $11
    jp nz, Jump_000_166b

    ldh a, [rSVBK]
    push af
    ld b, $02
    ld a, b

jr_000_1626:
    ldh [rSVBK], a
    add $14
    ld c, a
    ld de, $d000
    push bc
    call Call_000_09d6
    pop bc
    inc b
    ld a, b
    cp $08
    jr c, jr_000_1626

    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $8000
    ld de, $c000
    ld bc, $1000
    call Call_000_15a6
    ld c, $15
    ld de, $c000
    call Call_000_09d6
    ld hl, $9000
    ld de, $c000
    ld bc, $1000
    call Call_000_15a6
    ld c, $14
    ld de, $c000
    call Call_000_09d6
    xor a
    ldh [rVBK], a

Jump_000_166b:
    ld hl, $9800
    ld de, $c000
    ld bc, $0800
    call Call_000_15a6
    ld hl, $7a00
    ld d, $c8
    ld bc, $0033
    ld a, $55
    ld [$7a32], a
    call Call_000_007a
    xor a
    ld [$7a32], a
    ld c, $13
    ld de, $c000
    call Call_000_09d6
    ld a, $05
    ld [$7fe0], a
    ld hl, $6000
    ld de, $c000
    ld bc, $1000
    call Call_000_007a

Jump_000_16a4:
    call Call_000_0071
    ld a, $02
    ld [$7fe1], a
    ld a, $01
    ld [$7fe0], a
    xor a
    ld [$7a63], a
    ret


Jump_000_16b6:
    call Call_000_175d
    jp nz, Jump_000_16a4

    call Call_000_0068
    ld a, [$7a22]
    cp $11
    jr nz, jr_000_1711

    ld a, $01
    ldh [rVBK], a
    ld c, $15
    ld de, $c000
    call Call_000_09d3
    ld de, $8000
    ld hl, $c000
    ld bc, $1000
    call Call_000_15a6
    ld c, $14
    ld de, $c000
    call Call_000_09d3
    ld de, $9000
    ld hl, $c000
    ld bc, $1000
    call Call_000_15a6
    xor a
    ldh [rVBK], a
    ldh a, [rSVBK]
    push af
    ld b, $02
    ld a, b

jr_000_16fb:
    ldh [rSVBK], a
    add $14
    ld c, a
    ld de, $d000
    push bc
    call Call_000_09d3
    pop bc
    inc b
    ld a, b
    cp $08
    jr c, jr_000_16fb

    pop af
    ldh [rSVBK], a

jr_000_1711:
    ld c, $13
    ld de, $c000
    call Call_000_09d3
    ld de, $9800
    ld hl, $c000
    ld bc, $0800
    call Call_000_1577
    ld de, $7a00
    ld h, $c8
    ld bc, $0033
    call Call_000_007a
    ld a, $06
    ld [$7fe0], a
    ld c, $1c
    ld de, $6000
    call Call_000_09d3
    ld a, $07
    ld [$7fe0], a
    ld c, $1d
    ld de, $6000
    call Call_000_09d3
    ld c, $1e
    ld de, $c000
    call Call_000_09d3
    ld c, $1f
    ld de, $d000
    call Call_000_09d3
    jp Jump_000_16a4


Call_000_175d:
    ld a, $09
    ld [$7fe1], a
    ld hl, $7a00
    ld de, $5800
    ld c, $20

jr_000_176a:
    ld a, [de]
    inc e
    cp [hl]
    jp nz, Jump_000_1775

    inc l
    dec c
    jr nz, jr_000_176a

    ret


Jump_000_1775:
    ld de, $1317
    ld hl, $0d01
    call Call_000_1072
    ld de, $7a00
    call Call_000_1790
    ld h, $0e
    call Call_000_1072
    ld a, d
    ld [$7a66], a
    inc a
    cp d
    ret


Call_000_1790:
    ld hl, $7a71
    ld [hl], $22
    inc l
    ld c, $0f

jr_000_1798:
    ld a, [de]
    ld [hl+], a
    or a
    jr z, jr_000_17a1

    inc e
    dec c
    jr nz, jr_000_1798

jr_000_17a1:
    dec l
    ld a, [hl]
    cp $20
    jr z, jr_000_17a1

    or a
    jr z, jr_000_17a1

    inc l
    ld a, $22
    ld [hl+], a
    ld [hl], $00
    ld a, l
    sub $71
    rra
    ld l, a
    ld a, $0a
    sub l
    ld l, a
    ld de, $7a71
    ret


Jump_000_17bd:
    xor a
    ld hl, $7a33
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [$7fe1], a
    ld a, $01
    ld [$7a63], a
    call $473e
    ld hl, $0300
    ld de, $5fc7
    call Call_000_1072
    inc h
    ld de, $5fc7
    call Call_000_1072
    jp $479b


Jump_000_17e7:
    push af
    push bc
    push hl
    ld c, l
    ld a, h
    add $c0
    ld l, a
    ld h, $04
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    or c
    ld l, a
    ld a, [$7a22]
    cp $11
    jr nz, jr_000_183b

    ldh a, [rVBK]
    push af

jr_000_1803:
    ld a, $00
    ldh [rVBK], a

jr_000_1807:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1807

    ld a, [de]
    inc de
    and a
    jr z, jr_000_1849

    ld [hl], a
    ld c, $00
    cp $20
    jr nc, jr_000_182d

    ld c, $02
    cp $11
    jr c, jr_000_182d

    ld c, $04
    cp $13
    jr c, jr_000_182d

    ld c, $01
    cp $17
    jr c, jr_000_182d

    ld c, $05

jr_000_182d:
    ld a, $01
    ldh [rVBK], a

jr_000_1831:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1831

    ld a, c
    ld [hl+], a
    jr jr_000_1803

jr_000_183b:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_183b

    ld a, [de]
    inc de
    and a
    jr z, jr_000_184c

    ld [hl+], a
    jr jr_000_183b

jr_000_1849:
    pop af
    ldh [rVBK], a

jr_000_184c:
    pop hl
    pop bc
    pop af
    ret


    jr nz, @+$22

    ld b, e
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_000_18ae

    ld l, [hl]
    ld h, c
    ld [hl], b
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, @+$22

    nop
    jr nz, @+$50

    ld l, a
    jr nz, @+$55

    ld l, [hl]
    ld h, c
    ld [hl], b
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, @+$55

    ld [hl], h
    ld l, a
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_000_187a

Call_000_187a:
jr_000_187a:
    xor a
    ld [$7a70], a
    ld a, $09
    ld [$7fe1], a
    ld a, [$5832]
    cp $55
    ld a, $02
    ld [$7fe1], a
    ret nz

    ld [$7a70], a
    ret


Jump_000_1892:
    ld [$75a0], a
    ld a, [$7a22]
    ld [$75a5], a
    ld a, $01
    ld [$7fe0], a
    rst $10
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a

jr_000_18ae:
    ld a, [$75a5]
    cp $11
    call z, Call_000_102a
    ld a, $03
    rst $18
    call $59bb
    ld hl, $31bd
    call Call_000_196f
    call Call_000_21ad
    call Call_000_3c01
    ld hl, $1978
    ld de, $19e9
    call Call_000_1944
    call Call_000_190f
    rst $10
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld a, [$75a5]
    cp $11
    jr nz, jr_000_18f9

    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    xor a
    ld c, $a0

jr_000_18ee:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_000_18ee

    ld a, $00
    ldh [rVBK], a

jr_000_18f9:
    ld hl, $9800
    xor a
    ld c, $a0

jr_000_18ff:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_000_18ff

    ld a, [$75a5]
    cp $11
    call z, Call_000_102d
    ret


Call_000_190f:
jr_000_190f:
    call Call_000_1934
    call Call_000_3d53
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    call Call_000_1f9c

jr_000_191e:
    call Call_000_193c
    and a
    jr z, jr_000_191e

    ldh a, [rLCDC]
    and $fd
    ldh [rLCDC], a
    call Call_000_3d7f
    ld a, [$75a0]
    and a
    jr nz, jr_000_190f

    ret


Call_000_1934:
    ld hl, $75ac
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    ret


Call_000_193c:
    ld hl, $75ae
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    ret


Call_000_1944:
    ld a, l
    ld [$75ac], a
    ld a, h
    ld [$75ad], a
    ld a, e
    ld [$75ae], a
    ld a, d
    ld [$75af], a
    or $01
    ret


Jump_000_1957:
    xor a
    ld [$75a0], a
    ld a, $01
    ld [$75be], a
    ret


    call Call_000_30de
    xor a
    ld [$75a0], a
    ld a, $01
    ld [$75be], a
    ret


    ret


Call_000_196f:
Jump_000_196f:
    ld a, l
    ld [$75b1], a
    ld a, h
    ld [$75b2], a
    ret


    ld a, $01
    ld [$75bc], a
    xor a
    ld [$75be], a
    xor a
    ld [$75a7], a
    ld [$75c0], a
    ld hl, $75b1
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    push hl
    inc hl
    inc hl
    ld a, [hl]
    ld [$77ed], a
    call Call_000_2315
    call Call_000_21d4
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $19a5
    push de
    jp hl


    ld hl, $0000
    ld a, [$75a5]
    cp $11
    jr z, jr_000_19b0

    inc l

jr_000_19b0:
    ld a, [$77ed]
    and $01
    call nz, Call_000_2437
    call Call_000_1ede
    call Call_000_1cf3
    call Call_000_1c83
    call Call_000_1a20
    call Call_000_1cc8
    xor a
    ld [$75a7], a
    call Call_000_1dda
    call Call_000_3cf2
    ld a, $81
    ldh [rLCDC], a
    ret


    ld h, $00
    ld l, $0e
    ld d, $14
    ld e, $04
    call Call_000_258d
    ld c, $0e
    ld a, $04
    call Call_000_1eef
    ret


jr_000_19e9:
    rst $20
    call Call_000_3cf2
    ld a, $03
    rst $18
    call $47e6
    call Call_000_1cd4
    call Call_000_1ede
    call Call_000_1cf3
    call Call_000_1c83
    call Call_000_1a20
    call Call_000_1cc8
    call Call_000_1dda

jr_000_1a08:
    call Call_000_0023
    call z, Call_000_002b
    ldh a, [rLY]
    cp $8f
    jr nz, jr_000_1a08

    ld a, [$75be]
    and a
    jr z, jr_000_19e9

    call Call_000_1f03
    or $01
    ret


Call_000_1a20:
    ld hl, $75b1
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [bc]
    inc bc
    ld [$75b7], a
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    inc bc
    ld [$75b8], a
    ld h, a
    ld a, [bc]
    inc bc
    ld [$75b9], a
    ld l, a
    ld a, [bc]
    inc bc
    ld [$75ba], a
    ld d, a
    ld a, [bc]
    inc bc
    ld [$75bb], a
    ld e, a
    push bc
    ld a, [$75b7]
    cp $01
    jr z, jr_000_1a54

    cp $02
    jr z, jr_000_1a59

    jr jr_000_1a5c

jr_000_1a54:
    call Call_000_2613
    jr jr_000_1a5c

jr_000_1a59:
    call Call_000_258d

jr_000_1a5c:
    ld a, [$75b9]
    dec a
    ld c, a
    ld a, [$75bb]
    add a
    add $04
    call Call_000_1eef
    pop de
    inc de
    inc de
    xor a
    ld [$766c], a
    ld [$766d], a
    ld a, $01
    ld [$76e6], a
    ld a, [$75b9]
    add a
    add a
    add a
    add $10
    ld b, a

Jump_000_1a82:
    ld a, [$75b8]
    add a
    add a
    add a
    add $08
    ld c, a

Jump_000_1a8b:
    ld a, [de]
    inc de
    and a
    jp z, Jump_000_1c7c

    cp $01
    jp z, Jump_000_1ad9

    cp $02
    jp z, Jump_000_1af7

    cp $03
    jp z, Jump_000_1b51

    cp $04
    jp z, Jump_000_1c7c

    cp $05
    jp z, Jump_000_1b11

    cp $06
    jp z, Jump_000_1b6b

    cp $07
    jp z, Jump_000_1b7d

    cp $08
    jp z, Jump_000_1b92

    cp $09
    jp z, Jump_000_1b99

    cp $0a
    jp z, Jump_000_1bb0

    cp $0b
    jp z, Jump_000_1bdd

    cp $0c
    jp z, Jump_000_1c13

    cp $0d
    jp z, Jump_000_1c47

    cp $0e
    jp z, Jump_000_1c56

jr_000_1ad7:
    jr jr_000_1ad7

Jump_000_1ad9:
    push bc
    ld h, d
    ld l, e
    call Call_000_1d63
    ld a, [$75ba]
    add $04
    sub l
    add a
    add a
    add c
    ld c, a
    dec b
    dec b
    ld a, $01
    ld [$76e6], a
    call Call_000_1d06
    pop bc
    jp Jump_000_1c4f


Jump_000_1af7:
    push bc
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    push de
    ld d, a
    ld e, l
    ld a, $02
    call Call_000_1e8d
    pop de
    ld a, c
    add $18
    ld c, a
    call Call_000_1d06
    pop bc
    jp Jump_000_1c4f


Jump_000_1b11:
    push bc
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    ld a, [de]
    inc de
    push hl
    push de
    ld d, h
    ld e, l
    ld l, a
    ld h, $00
    ld a, $05
    call Call_000_1e8d
    pop de
    ld a, c
    add $18
    ld c, a
    call Call_000_1d06
    pop hl
    ld a, [de]
    inc de
    push de
    ld de, $1b50
    bit 7, a
    jr z, jr_000_1b3c

    ld de, $1b4e

jr_000_1b3c:
    and $7f
    cp [hl]
    jr nz, jr_000_1b44

    ld de, $1b4c

jr_000_1b44:
    call Call_000_1d06
    pop de
    pop bc
    jp Jump_000_1c4f


    ld a, a
    nop
    ld a, b
    nop
    nop

Jump_000_1b51:
    push bc
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    push de
    ld d, a
    ld e, l
    ld a, $03
    call Call_000_1e8d
    pop de
    ld a, c
    add $18
    ld c, a
    call Call_000_1d06
    pop bc
    jp Jump_000_1c4f


Jump_000_1b6b:
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    push bc
    push de
    ld de, $1b78
    push de
    jp hl


    pop de
    pop bc
    jp Jump_000_1a8b


Jump_000_1b7d:
    push bc
    ld h, c
    ld l, b
    srl h
    srl h
    srl h
    srl l
    srl l
    srl l
    inc h
    dec l
    call Call_000_2419
    pop bc

Jump_000_1b92:
    ld a, b
    add $08
    ld b, a
    jp Jump_000_1a8b


Jump_000_1b99:
    push bc
    ld a, [de]
    inc de
    ld h, a
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    push de
    ld d, c
    ld e, a
    call Call_000_258d
    pop de
    pop bc
    jp Jump_000_1a8b


Jump_000_1bb0:
    push bc
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    ld a, [de]
    inc de
    push bc
    push de
    call Call_000_26ec
    pop de
    pop bc
    ld h, d
    ld l, e
    call Call_000_1d63
    dec de
    dec de
    ld a, [de]
    inc de
    add a
    add a
    add a
    add $08
    ld c, a
    ld a, [de]
    inc de
    sub l
    add a
    add a
    add c
    ld c, a
    call Call_000_1d06
    pop bc
    jp Jump_000_1a8b


Jump_000_1bdd:
    push bc
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    ld b, [hl]
    ld a, [de]
    inc de
    ld [$766e], a
    ld h, a
    ld a, [de]
    ld [$766f], a
    inc de
    ld l, a
    ld a, [de]
    ld [$7670], a
    inc de
    ld c, a
    ld a, [de]
    ld [$7671], a
    inc de
    push de
    ld d, c
    ld e, a
    bit 0, b
    jr z, jr_000_1c0b

    call Call_000_2347
    pop de
    pop bc
    jp Jump_000_1a8b


jr_000_1c0b:
    call Call_000_23ac
    pop de
    pop bc
    jp Jump_000_1a8b


Jump_000_1c13:
    push bc
    ld h, c
    ld a, [de]
    inc de
    bit 7, a
    jr nz, jr_000_1c21

    add a
    add a
    add a
    sub $08
    ld h, a

jr_000_1c21:
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    push de
    ld d, a
    ld e, l
    ld l, b
    srl h
    srl h
    srl h
    srl l
    srl l
    srl l
    inc h
    dec l
    call Call_000_20aa
    pop de
    pop bc
    ld a, b
    add $08
    ld b, a
    jp Jump_000_1a8b


Jump_000_1c47:
    ld a, [de]
    inc de
    ld [$75b8], a
    jp Jump_000_1a82


Jump_000_1c4f:
    ld a, b
    add $10
    ld b, a
    jp Jump_000_1a82


Jump_000_1c56:
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    ld a, [hl]
    and a
    jp nz, Jump_000_1af7

    push bc
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    ld a, [de]
    inc de
    push de
    ld d, a
    ld e, h
    ld a, $0e
    call Call_000_1e8d
    pop de
    ld a, c
    add $18
    ld c, a
    call Call_000_1d37
    pop bc
    jp Jump_000_1c4f


Jump_000_1c7c:
    ld a, [$75c2]
    ld [$75c1], a
    ret


Call_000_1c83:
    ld hl, $75c7
    ld de, $75c9
    ld [hl], e
    inc hl
    ld [hl], d
    xor a
    ld [de], a
    ld [$75c2], a
    ret


Call_000_1c92:
    ld b, h
    ld c, l
    push af
    ld a, [$75c7]
    ld l, a
    ld a, [$75c8]
    ld h, a
    pop af
    ld [hl+], a
    ld a, [$75c2]
    ld [hl+], a
    inc a
    ld [$75c2], a
    ld a, [$7670]
    ld [hl+], a
    ld a, [$7671]
    ld [hl+], a
    ld a, [$766e]
    ld [hl+], a
    ld a, [$766f]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, l
    ld [$75c7], a
    ld a, h
    ld [$75c8], a
    ret


Call_000_1cc8:
    ld hl, $75c7
    ld e, [hl]
    inc hl
    ld d, [hl]
    xor a
    ld [de], a
    ld [hl], d
    dec hl
    ld [hl], e
    ret


Call_000_1cd4:
    ld hl, $75c1
    ld de, $75c0
    ld b, $04
    rst $30
    jr z, jr_000_1ce6

    ld a, [de]
    and a
    jr nz, jr_000_1ce4

    ld a, [hl]

jr_000_1ce4:
    dec a
    ld [de], a

jr_000_1ce6:
    ld b, $08
    rst $30
    jr z, jr_000_1cf2

    ld a, [de]
    inc a
    cp [hl]
    jr nz, jr_000_1cf1

    xor a

jr_000_1cf1:
    ld [de], a

jr_000_1cf2:
    ret


Call_000_1cf3:
    ld hl, $7500
    ld a, l
    ld [$75b5], a
    ld a, h
    ld [$75b6], a
    xor a
    ld c, $a0

jr_000_1d01:
    ld [hl+], a
    dec c
    jr nz, jr_000_1d01

    ret


Call_000_1d06:
    ld a, b
    add $04
    ld b, a
    ld a, [$75b5]
    ld l, a
    ld a, [$75b6]
    ld h, a

jr_000_1d12:
    ld a, [de]
    inc de
    and a
    jr z, jr_000_1d2a

    cp $20
    jr z, jr_000_1d24

    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl+], a
    ld a, [$76e6]
    ld [hl+], a

jr_000_1d24:
    ld a, c
    add $08
    ld c, a
    jr jr_000_1d12

jr_000_1d2a:
    ld a, l
    ld [$75b5], a
    ld a, h
    ld [$75b6], a
    ld a, b
    sub $04
    ld b, a
    ret


Call_000_1d37:
    ld a, b
    add $04
    ld b, a
    ld a, [$75b5]
    ld l, a
    ld a, [$75b6]
    ld h, a

jr_000_1d43:
    ld a, [de]
    inc de
    and a
    jr z, jr_000_1d5a

    cp $20
    jr z, jr_000_1d54

    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl+], a
    ld [hl], $12
    inc hl

jr_000_1d54:
    ld a, c
    add $08
    ld c, a
    jr jr_000_1d43

jr_000_1d5a:
    ld a, l
    ld [$75b5], a
    ld a, h
    ld [$75b6], a
    ret


Call_000_1d63:
    push bc
    ld c, $ff

jr_000_1d66:
    ld a, [hl+]
    inc c
    and a
    jr nz, jr_000_1d66

    ld l, c
    pop bc
    ret


    ld de, $ff43
    ld hl, $1db8
    ld b, $00

jr_000_1d76:
    ldh a, [rLY]
    cp $90
    jr nz, jr_000_1d76

    push bc
    push hl
    ld b, [hl]
    ld hl, $fe00
    ld c, $28

jr_000_1d84:
    inc l
    ld a, [hl]
    add b
    ld [hl+], a
    inc l
    inc l
    dec c
    jr nz, jr_000_1d84

    pop hl
    pop bc
    ld a, b
    add [hl]
    cp b
    jr z, jr_000_1db2

    ld b, a
    inc hl

jr_000_1d96:
    ldh a, [rLY]
    cp $00
    jr nz, jr_000_1d96

    ld a, b
    ld [de], a

jr_000_1d9e:
    ldh a, [rLY]
    cp $1c
    jr nz, jr_000_1d9e

    ld a, b
    cpl
    inc a
    ld [de], a

jr_000_1da8:
    ldh a, [rLY]
    cp $6c
    jr nz, jr_000_1da8

    ld a, b
    ld [de], a
    jr jr_000_1d76

jr_000_1db2:
    xor a
    ldh [rSCX], a
    ret


    jr jr_000_1db2

    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0008], sp

Call_000_1dda:
    ld hl, $75c9

jr_000_1ddd:
    ld a, [hl]
    and a
    ret z

    push hl
    cp $02
    jr z, jr_000_1dfe

    cp $03
    jr z, jr_000_1e1c

    cp $05
    jr z, jr_000_1e3f

    cp $0c
    jr z, jr_000_1e64

    cp $0e
    jr z, jr_000_1e66

jr_000_1df5:
    jr jr_000_1df5

Jump_000_1df7:
jr_000_1df7:
    pop hl
    ld bc, $000a
    add hl, bc
    jr jr_000_1ddd

jr_000_1dfe:
    push hl
    call Call_000_1ec7
    pop hl
    inc hl
    ld a, [$75c0]
    cp [hl]
    dec hl
    jr nz, jr_000_1df7

    ld b, $10
    rst $30
    jr z, jr_000_1df7

    ld de, $0006
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $1df7
    push de
    jp hl


jr_000_1e1c:
    push hl
    call Call_000_1ec7
    pop hl
    inc hl
    ld a, [$75c0]
    cp [hl]
    dec hl
    jr nz, jr_000_1df7

    ld b, $10
    rst $30
    jr z, jr_000_1df7

    ld de, $0006
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_196f
    ld a, $01
    ld [$75be], a
    jr jr_000_1df7

jr_000_1e3f:
    push hl
    call Call_000_1ec7
    pop hl
    inc hl
    ld a, [$75c0]
    cp [hl]
    dec hl
    jr nz, jr_000_1df7

    ld b, $10
    rst $30
    jr z, jr_000_1df7

    ld de, $0006
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    bit 7, a
    jr z, jr_000_1e61

    ld a, [de]
    xor $01

jr_000_1e61:
    ld [de], a
    jr jr_000_1df7

jr_000_1e64:
    jr jr_000_1df7

jr_000_1e66:
    push hl
    call Call_000_1ec7
    pop hl
    inc hl
    ld a, [$75c0]
    cp [hl]
    dec hl
    jr nz, jr_000_1df7

    ld de, $0006
    add hl, de
    inc hl
    inc hl
    ld a, [hl-]
    dec hl
    and a
    jp z, Jump_000_1df7

    ld b, $10
    rst $30
    jp z, Jump_000_1df7

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $1df7
    push de
    jp hl


Call_000_1e8d:
    push bc
    push hl
    push af
    ld a, [$75c2]
    ld l, a
    ld a, [$75c0]
    cp l
    ld a, $01
    jr nz, jr_000_1e9d

    xor a

jr_000_1e9d:
    ld [$76e6], a
    pop af
    ld l, a
    ld a, c
    rrca
    rrca
    rrca
    add $01
    ld [$766e], a
    ld a, b
    rrca
    rrca
    rrca
    sub $02
    ld [$766f], a
    ld a, [$75ba]
    ld [$7670], a
    ld a, [$75bb]
    ld [$7671], a
    ld a, l
    pop hl
    call Call_000_1c92
    pop bc
    ret


Call_000_1ec7:
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl+]
    ld d, a
    inc hl
    ld a, [$75c0]
    cp e
    ld a, $07
    jr z, jr_000_1ed7

    ld a, $16

jr_000_1ed7:
    ld e, [hl]
    inc hl
    ld l, [hl]
    ld h, e
    jp Jump_000_249d


Call_000_1ede:
    ld hl, $7673
    xor a
    ld c, $14

jr_000_1ee4:
    ld [hl+], a
    dec c
    jr nz, jr_000_1ee4

    ld [$7672], a
    ld [$7687], a
    ret


Call_000_1eef:
    ld hl, $7673
    ld b, $00
    add hl, bc
    ld c, a
    ld a, [$7672]
    xor $01
    ld [$7672], a

jr_000_1efe:
    ld [hl+], a
    dec c
    jr nz, jr_000_1efe

    ret


Call_000_1f03:
    ld a, [$766b]
    and a
    jp z, Jump_000_20c5

    ld b, $00

Jump_000_1f0c:
    ld a, [$7687]
    ld e, a
    inc a
    ld [$7687], a
    ld d, $00
    ld hl, $2088
    add hl, de
    ld a, [hl]
    ld [$7688], a
    ld hl, $9820
    ld de, $7673
    ld c, $00

jr_000_1f26:
    ldh a, [rLY]
    cp $90
    jr nz, jr_000_1f26

    xor a
    ldh [rSCX], a
    push bc
    push hl
    ld hl, $fe00
    ld a, [$7688]
    ld b, a
    ld c, $28

jr_000_1f3a:
    inc l
    ld a, [hl]
    sub b
    ld [hl+], a
    cp $f0
    jr c, jr_000_1f44

    ld [hl], $00

jr_000_1f44:
    inc l
    inc l
    dec c
    jr nz, jr_000_1f3a

    pop hl
    pop bc

jr_000_1f4b:
    ldh a, [rLY]
    cp c
    jr nz, jr_000_1f4b

    push de
    push hl
    ld a, [de]
    and a
    ld a, b
    jr nz, jr_000_1f59

    cpl
    inc a

jr_000_1f59:
    ldh [rSCX], a
    srl a
    srl a
    srl a
    dec a
    ld e, a
    ld d, $00
    add hl, de
    ld e, a
    ld a, $01
    ldh [rVBK], a

jr_000_1f6b:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1f6b

    ld [hl], d
    ld a, $00
    ldh [rVBK], a

jr_000_1f76:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1f76

    ld [hl], d
    pop hl
    ld de, $0020
    add hl, de
    pop de
    inc de
    ld a, c
    add $08
    ld c, a
    cp $90
    jr nz, jr_000_1f4b

    ld a, [$7688]
    and a
    jr z, jr_000_1f97

    add b
    ld b, a
    jp Jump_000_1f0c


jr_000_1f97:
    ld a, $60
    ldh [rSCX], a
    ret


Call_000_1f9c:
    ld a, [$766b]
    and a
    ret z

    ld hl, $fe00
    xor a
    ld c, $28

jr_000_1fa7:
    inc l
    inc l
    ld [hl+], a
    inc l
    dec c
    jr nz, jr_000_1fa7

    ld b, $00

Jump_000_1fb0:
    ld a, [$7687]
    ld e, a
    inc a
    ld [$7687], a
    ld d, $00
    ld hl, $207c
    add hl, de
    ld a, [hl]
    ld [$7688], a
    ld hl, $7689
    ld de, $7000
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $9820
    ld de, $7673
    ld c, $00

jr_000_1fd3:
    ldh a, [rLY]
    cp $90
    jr nz, jr_000_1fd3

    xor a
    ldh [rSCX], a
    push bc
    push de
    push hl
    ld hl, $fe00
    ld de, $7500
    ld a, [$7688]
    ld b, a
    ld c, $28

jr_000_1feb:
    inc e
    inc e
    inc l
    ld a, [hl]
    add b
    ld [hl+], a
    cp $f0
    jr c, jr_000_1ff7

    ld a, [de]
    ld [hl], a

jr_000_1ff7:
    inc e
    inc e
    inc l
    inc l
    dec c
    jr nz, jr_000_1feb

    pop hl
    pop de
    pop bc

jr_000_2001:
    ldh a, [rLY]
    cp c
    jr nz, jr_000_2001

    push de
    push hl
    ld a, [de]
    and a
    ld a, b
    jr nz, jr_000_200f

    cpl
    inc a

jr_000_200f:
    ldh [rSCX], a
    srl a
    srl a
    srl a
    ld e, a
    ld d, $00
    dec de
    add hl, de
    push hl
    ld a, [$7689]
    ld l, a
    ld a, [$768a]
    ld h, a
    add hl, de
    ld e, [hl]
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    ld d, [hl]
    pop hl
    ld a, $01
    ldh [rVBK], a

jr_000_2033:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2033

    ld [hl], d
    ld a, $00
    ldh [rVBK], a

jr_000_203e:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_203e

    ld [hl], e
    ld a, [$7689]
    ld l, a
    ld a, [$768a]
    ld h, a
    ld de, $0040
    add hl, de
    ld a, l
    ld [$7689], a
    ld a, h
    ld [$768a], a
    pop hl
    ld de, $0020
    add hl, de
    pop de
    inc de
    ld a, c
    add $08
    ld c, a
    cp $90
    jr nz, jr_000_2001

    ld a, [$7688]
    and a
    ret z

    ld c, a
    ld a, b
    sub c
    ld b, a
    jp Jump_000_1fb0


Jump_000_2074:
    ld a, $01
    ld [$75be], a
    jp Jump_000_196f


    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0008], sp

Call_000_20aa:
jr_000_20aa:
    push hl
    call Call_000_219d
    jr jr_000_20b6

jr_000_20b0:
    set 5, l
    ld [hl], c
    res 5, l
    ld [hl+], a

jr_000_20b6:
    ld a, [de]
    inc de
    and a
    jr z, jr_000_20c3

    cp $0a
    jr nz, jr_000_20b0

    pop hl
    inc l
    jr jr_000_20aa

jr_000_20c3:
    pop hl
    ret


Jump_000_20c5:
    call Call_000_231d
    rst $20
    ld a, $03
    rst $18
    call $47e6
    ret


    call Call_000_22b4
    call Call_000_35e1
    ld de, $76c2
    ld hl, $76d1
    xor a
    ld [hl+], a
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, $20
    ld c, $11

jr_000_20e7:
    ld [hl+], a
    dec c
    jr nz, jr_000_20e7

    ld [hl], c
    ret


    call Call_000_22b4
    call Call_000_35e1
    call Call_000_292c
    ld de, $76c2
    ld hl, $76d1
    xor a
    ld [hl+], a
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld de, $768d
    ld c, $10

jr_000_2108:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_2108

    ld [hl], c
    ret


Call_000_2110:
    ld hl, $76c2
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld c, a
    inc de
    ld a, [de]
    dec de
    and a
    ret z

    ld a, c
    ld [de], a
    inc de
    ld a, [de]
    and a
    ret z

    ld [hl], d
    dec hl
    ld [hl], e
    xor a
    ld [$75ab], a
    ret


Call_000_212a:
    ld hl, $76c2
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec de
    ld a, [de]
    and a
    ret z

    ld a, $20
    ld [de], a
    ld [hl], d
    dec hl
    ld [hl], e
    xor a
    ld [$75ab], a
    ret


    ld a, [$75ab]
    inc a
    ld [$75ab], a
    ld hl, $76c2
    ld e, [hl]
    inc hl
    ld d, [hl]
    and $10
    ret nz

    ld a, $5f
    ld [de], a
    ret


    ld hl, $76c2
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld [$76c5], a
    ret


    ld hl, $76c2
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$76c5]
    ld [de], a
    ret


Call_000_2169:
    xor a
    ld [$75c3], a
    ld [$75c4], a
    ld hl, $c000
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl

jr_000_2177:
    ld a, [hl+]
    cp c
    ld a, [hl+]
    jr nz, jr_000_2180

    cp b
    jr nz, jr_000_2180

    ret


jr_000_2180:
    push de
    ld de, $0010
    add hl, de
    ld a, [$75c3]
    ld e, a
    ld a, [$75c4]
    ld d, a
    inc de
    ld a, e
    ld [$75c3], a
    ld a, d
    ld [$75c4], a
    pop de
    dec de
    ld a, e
    or d
    jr nz, jr_000_2177

    ret


Call_000_219d:
    ld a, h
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add l
    ld l, a
    ld a, h
    add $70
    ld h, a
    ret


Call_000_21ad:
Jump_000_21ad:
    call Call_000_3d15
    ld a, $03
    ld [$75aa], a
    ld a, $08
    ldh [rSCY], a
    ld a, $00
    ldh [rSCX], a
    call Call_000_2228
    ld hl, $7500
    xor a
    ld c, $a0

jr_000_21c6:
    ld [hl+], a
    dec c
    jr nz, jr_000_21c6

    call Call_000_2315
    call Call_000_3cf2
    call Call_000_21d4
    ret


Call_000_21d4:
    ld a, $08
    rst $18
    ld hl, $4000
    call Call_000_3d9c
    ld hl, $7480
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$77ed]
    and $02
    jr nz, jr_000_21f8

    ld a, e
    ld [$74a0], a
    ld [$74a8], a
    ld a, d
    ld [$74a1], a
    ld [$74a9], a

jr_000_21f8:
    ld hl, $74c0
    xor a
    ld c, $20

jr_000_21fe:
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    dec c
    jr nz, jr_000_21fe

    ld hl, $74c0
    ld de, $74b0
    call Call_000_2217
    ld de, $7480
    call Call_000_2217
    ld de, $74ba

Call_000_2217:
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    inc hl
    inc hl
    ld [hl], c
    inc hl
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl+], a
    ret


    ret


Call_000_2228:
    ld a, $03
    rst $18
    ld de, $0a00
    ld hl, $9200
    ld bc, $0600

jr_000_2234:
    ld a, [de]
    inc de
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_2234

    ld de, $0a00
    ld hl, $8200
    ld bc, $0300

jr_000_2245:
    ld a, [de]
    inc de
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_2245

    ret


Call_000_2251:
Jump_000_2251:
    ld a, $03
    rst $18
    ld de, $56a0
    ld a, [$75a5]
    cp $11
    jr z, jr_000_2261

    ld de, $51f0

jr_000_2261:
    ld hl, $8800
    ld bc, $0300

jr_000_2267:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2267

    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_000_2267

    ld de, $54b0
    ld a, [$75a5]
    cp $11
    jr z, jr_000_2282

    ld de, $5000

jr_000_2282:
    ld hl, $9000
    ld bc, $0200

jr_000_2288:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2288

    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_000_2288

    ld a, $03
    rst $18
    ld de, $45e6
    ld hl, $8e00
    ld bc, $0200

jr_000_22a2:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_22a2

    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_000_22a2

    ld a, $03
    rst $18
    ret


Call_000_22b4:
    ld a, $03
    rst $18
    ld de, $57a0
    ld a, [$75a5]
    cp $11
    jr z, jr_000_22c4

    ld de, $52f0

jr_000_22c4:
    ld hl, $8800
    ld bc, $0200

jr_000_22ca:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_22ca

    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_000_22ca

    ld de, $0a00
    ld hl, $8a00
    ld bc, $0300

jr_000_22e1:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_22e1

    ld a, [de]
    ld [hl+], a
    ld [hl], $00
    inc de
    inc de
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, jr_000_22e1

    ld de, $54b0
    ld a, [$75a5]
    cp $11
    jr z, jr_000_2300

    ld de, $5000

jr_000_2300:
    ld hl, $9000
    ld bc, $0110

jr_000_2306:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2306

    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_000_2306

    ret


Call_000_2315:
    ld a, [$75a5]
    cp $11
    call nz, Call_000_3d40

Call_000_231d:
    ld hl, $7500
    xor a
    ld c, $a0

jr_000_2323:
    ld [hl+], a
    dec c
    jr nz, jr_000_2323

    ld a, [$75a5]
    cp $11
    jr nz, jr_000_2336

    ld a, [$77ed]
    and $02
    jp nz, Jump_000_3c34

jr_000_2336:
    ld hl, $7000
    xor a
    ld c, $e6

jr_000_233c:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_000_233c

    ld [hl+], a
    ld [hl+], a
    ret


Call_000_2347:
    push hl
    call Call_000_219d
    push de
    push hl
    ld a, $40
    sub d
    ld c, a
    dec d
    dec d
    dec e
    dec e
    ld b, d
    ld a, $01
    ld [hl+], a
    inc a

jr_000_235a:
    ld [hl+], a
    dec b
    jr nz, jr_000_235a

    inc a
    ld [hl+], a
    add hl, bc

jr_000_2361:
    ld a, $04
    ld [hl+], a
    ld a, c
    ld c, d
    add hl, bc
    ld c, a
    ld a, $05
    ld [hl+], a
    add hl, bc
    dec e
    jr nz, jr_000_2361

    ld b, d
    ld a, $06
    ld [hl+], a
    inc a

jr_000_2374:
    ld [hl+], a
    dec b
    jr nz, jr_000_2374

    inc a
    ld [hl+], a
    pop hl
    pop de
    ld a, [$75a5]
    cp $11
    jr nz, jr_000_23aa

    ld bc, $0020
    add hl, bc
    ld a, $40
    sub d
    ld c, a
    dec d
    dec d
    dec e
    dec e
    ld b, d
    xor a
    ld [hl+], a

jr_000_2392:
    ld [hl+], a
    dec b
    jr nz, jr_000_2392

    ld [hl+], a
    add hl, bc

jr_000_2398:
    ld [hl+], a
    ld a, c
    ld c, d
    add hl, bc
    ld c, a
    xor a
    ld [hl+], a
    add hl, bc
    dec e
    jr nz, jr_000_2398

    ld b, d
    ld [hl+], a

jr_000_23a5:
    ld [hl+], a
    dec b
    jr nz, jr_000_23a5

    ld [hl+], a

jr_000_23aa:
    pop hl
    ret


Call_000_23ac:
    push hl
    call Call_000_219d
    push de
    push hl
    ld a, $40
    sub d
    ld c, a
    dec d
    dec d
    dec e
    dec e
    ld b, d
    ld a, $09
    ld [hl+], a
    inc a

jr_000_23bf:
    ld [hl+], a
    dec b
    jr nz, jr_000_23bf

    inc a
    ld [hl+], a
    add hl, bc

jr_000_23c6:
    ld a, $0c
    ld [hl+], a
    ld a, c
    ld c, d
    add hl, bc
    ld c, a
    ld a, $0d
    ld [hl+], a
    add hl, bc
    dec e
    jr nz, jr_000_23c6

    ld b, d
    ld a, $0e
    ld [hl+], a
    inc a

jr_000_23d9:
    ld [hl+], a
    dec b
    jr nz, jr_000_23d9

    inc a
    ld [hl+], a
    pop hl
    pop de
    ld a, [$75a5]
    cp $11
    jr nz, jr_000_2411

    ld bc, $0020
    add hl, bc
    ld a, $40
    sub d
    ld c, a
    dec d
    dec d
    dec e
    dec e
    ld b, d
    ld a, $02
    ld [hl+], a

jr_000_23f8:
    ld [hl+], a
    dec b
    jr nz, jr_000_23f8

    ld [hl+], a
    add hl, bc

jr_000_23fe:
    ld [hl+], a
    ld a, c
    ld c, d
    add hl, bc
    ld c, a
    ld a, $02
    ld [hl+], a
    add hl, bc
    dec e
    jr nz, jr_000_23fe

    ld b, d
    ld [hl+], a

jr_000_240c:
    ld [hl+], a
    dec b
    jr nz, jr_000_240c

    ld [hl+], a

jr_000_2411:
    pop hl
    ret


Call_000_2413:
Jump_000_2413:
    ld a, [de]
    inc de
    ld h, a
    ld a, [de]
    inc de
    ld l, a

Call_000_2419:
jr_000_2419:
    push hl
    call Call_000_219d

jr_000_241d:
    ld a, [de]
    inc de
    and a
    jr z, jr_000_2435

    cp $0a
    jr z, jr_000_2431

    ld c, a

jr_000_2427:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2427

    ld [hl], c
    inc hl
    jr jr_000_241d

jr_000_2431:
    pop hl
    inc l
    jr jr_000_2419

jr_000_2435:
    pop hl
    ret


Call_000_2437:
    call Call_000_219d
    push hl
    ld [hl], $11
    inc hl
    ld [hl], $8a
    inc hl
    ld a, $e0
    ld c, $2c
    ld b, $10

jr_000_2447:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_2447

    ld [hl], $8c
    inc hl
    ld [hl], $15
    inc hl
    add hl, bc
    ld [hl], $1a
    inc hl
    ld [hl], $8d
    inc hl
    ld b, $10

jr_000_245b:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_245b

    ld [hl], $8f
    inc hl
    ld [hl], $1e
    inc hl
    pop hl
    ld a, [$75a5]
    cp $11
    ret nz

    ld bc, $0020
    add hl, bc
    ld c, $2c
    ld a, $04
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld b, $10
    ld a, $06

jr_000_247d:
    ld [hl+], a
    dec b
    jr nz, jr_000_247d

    ld a, $01
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    add hl, bc
    ld a, $04
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld b, $10
    ld a, $06

jr_000_2492:
    ld [hl+], a
    dec b
    jr nz, jr_000_2492

    ld a, $01
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ret


Call_000_249d:
Jump_000_249d:
    push de
    push hl
    cp $07
    ld a, $85
    ld e, $07
    jr nz, jr_000_24ab

    ld a, $80
    ld e, $02

jr_000_24ab:
    push af
    call Call_000_219d
    ld a, $40
    sub d
    ld c, a
    pop af
    push hl
    ld b, a

jr_000_24b6:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_24b6

    ld a, b
    ld b, d
    dec b
    dec b
    ld [hl+], a
    inc a

jr_000_24c2:
    ld [hl+], a
    dec b
    jr nz, jr_000_24c2

    ld [hl+], a
    add hl, bc
    inc a
    ld b, a

jr_000_24ca:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_24ca

    ld a, b
    ld b, d
    dec b
    dec b
    ld [hl+], a
    inc a

jr_000_24d6:
    ld [hl+], a
    dec b
    jr nz, jr_000_24d6

    inc a
    ld [hl+], a
    add hl, bc
    pop hl
    ld a, [$75a5]
    cp $11
    jr nz, jr_000_2507

    ld a, c
    ld bc, $0020
    add hl, bc
    ld c, a
    ld a, e
    ld b, a

jr_000_24ed:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_24ed

    ld a, b
    ld b, d

jr_000_24f5:
    ld [hl+], a
    dec b
    jr nz, jr_000_24f5

    add hl, bc
    ld b, a

jr_000_24fb:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_24fb

    ld a, b
    ld b, d

jr_000_2503:
    ld [hl+], a
    dec b
    jr nz, jr_000_2503

jr_000_2507:
    pop hl
    pop de
    ret


    push hl
    call Call_000_219d
    push hl
    ld a, $40
    sub d
    ld c, a
    dec d
    dec d
    dec d
    dec d
    dec e
    dec e
    ld b, d
    push de
    ld a, $11
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a

jr_000_2521:
    ld [hl+], a
    dec b
    jr nz, jr_000_2521

    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    add hl, bc

jr_000_252a:
    ld a, $16
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, c
    ld c, d
    add hl, bc
    ld c, a
    ld a, $18
    ld [hl+], a
    inc a
    ld [hl+], a
    add hl, bc
    dec e
    jr nz, jr_000_252a

    ld b, d
    ld a, $1a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a

jr_000_2543:
    ld [hl+], a
    dec b
    jr nz, jr_000_2543

    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    pop de
    pop hl
    ld a, [$75a5]
    cp $11
    jr nz, jr_000_258b

    ld a, $01
    ldh [rVBK], a
    ld b, d
    ld a, $04
    ld [hl+], a
    xor a
    ld [hl+], a

jr_000_255e:
    ld [hl+], a
    dec b
    jr nz, jr_000_255e

    ld [hl+], a
    ld a, $05
    ld [hl+], a
    add hl, bc

jr_000_2567:
    ld a, $04
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, c
    ld c, d
    add hl, bc
    ld c, a
    xor a
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    add hl, bc
    dec e
    jr nz, jr_000_2567

    ld b, d
    ld a, $04
    ld [hl+], a
    xor a
    ld [hl+], a

jr_000_257f:
    ld [hl+], a
    dec b
    jr nz, jr_000_257f

    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ld a, $00
    ldh [rVBK], a

jr_000_258b:
    pop hl
    ret


Call_000_258d:
    push hl
    call Call_000_219d
    push hl
    ld a, $40
    sub d
    ld c, a
    dec d
    dec d
    dec d
    dec d
    dec e
    dec e
    ld b, d
    push de
    ld a, $11
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a

jr_000_25a4:
    ld [hl+], a
    dec b
    jr nz, jr_000_25a4

    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    add hl, bc

jr_000_25ad:
    ld a, $16
    ld [hl+], a
    inc a
    ld [hl+], a
    xor a
    ld b, d

jr_000_25b4:
    ld [hl+], a
    dec b
    jr nz, jr_000_25b4

    ld a, $18
    ld [hl+], a
    inc a
    ld [hl+], a
    add hl, bc
    dec e
    jr nz, jr_000_25ad

    ld b, d
    ld a, $1a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a

jr_000_25c8:
    ld [hl+], a
    dec b
    jr nz, jr_000_25c8

    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    pop de
    pop hl
    ld a, [$75a5]
    cp $11
    jr nz, jr_000_2611

    ld a, c
    ld bc, $0020
    add hl, bc
    ld c, a
    ld b, d
    ld a, $04
    ld [hl+], a
    xor a
    ld [hl+], a

jr_000_25e5:
    ld [hl+], a
    dec b
    jr nz, jr_000_25e5

    ld [hl+], a
    ld a, $05
    ld [hl+], a
    add hl, bc

jr_000_25ee:
    ld a, $04
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $02
    ld b, d

jr_000_25f6:
    ld [hl+], a
    dec b
    jr nz, jr_000_25f6

    xor a
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    add hl, bc
    dec e
    jr nz, jr_000_25ee

    ld b, d
    ld a, $04
    ld [hl+], a
    xor a
    ld [hl+], a

jr_000_2609:
    ld [hl+], a
    dec b
    jr nz, jr_000_2609

    ld [hl+], a
    ld a, $05
    ld [hl+], a

jr_000_2611:
    pop hl
    ret


Call_000_2613:
    push de
    push hl
    inc h
    inc h
    inc l
    inc l

jr_000_2619:
    push de
    ld a, $00
    call Call_000_249d
    inc l
    inc l
    pop de
    dec e
    jr nz, jr_000_2619

    pop hl
    pop de
    ld a, e
    add a
    ld e, a
    call Call_000_219d
    push hl
    ld a, $3d
    sub d
    ld c, a
    ld b, d
    dec b
    dec b
    ld [hl], $11
    inc hl
    ld a, $8a
    ld [hl+], a
    inc a
    ld b, d

jr_000_263d:
    ld [hl+], a
    dec b
    jr nz, jr_000_263d

    inc a
    ld [hl+], a
    ld [hl], $15
    add hl, bc
    ld a, $94
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld b, d
    dec b
    dec b

jr_000_2651:
    ld [hl+], a
    dec b
    jr nz, jr_000_2651

    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    add hl, bc
    push de

jr_000_265d:
    ld a, $9b
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, c
    ld c, d
    add hl, bc
    ld c, a
    ld a, $9d
    ld [hl+], a
    inc a
    ld [hl], a
    add hl, bc
    dec e
    jr nz, jr_000_265d

    pop de
    ld a, $1a
    ld [hl+], a
    ld a, $8d
    ld [hl+], a
    ld a, $9f
    ld [hl+], a
    inc a
    ld b, d
    dec b
    dec b

jr_000_267d:
    ld [hl+], a
    dec b
    jr nz, jr_000_267d

    inc a
    ld [hl+], a
    ld a, $8f
    ld [hl+], a
    ld a, $1e
    ld [hl], a
    pop hl
    ld a, [$75a5]
    cp $11
    ret nz

    ld a, c
    ld bc, $0020
    add hl, bc
    ld c, a
    ld b, d
    dec b
    dec b
    ld [hl], $04
    inc hl
    ld a, $01
    ld [hl+], a
    xor a
    ld b, d

jr_000_26a1:
    ld [hl+], a
    dec b
    jr nz, jr_000_26a1

    ld a, $01
    ld [hl+], a
    ld [hl], $05
    add hl, bc
    ld b, d
    dec b
    dec b
    ld [hl], $04
    inc hl
    ld a, $01
    ld [hl+], a
    xor a
    ld b, d

jr_000_26b6:
    ld [hl+], a
    dec b
    jr nz, jr_000_26b6

    ld a, $01
    ld [hl+], a
    ld [hl], $05
    add hl, bc

Call_000_26c0:
Jump_000_26c0:
jr_000_26c0:
    ld a, $04
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, c
    ld c, d
    add hl, bc
    ld c, a
    ld a, $01
    ld [hl+], a
    ld a, $05
    ld [hl], a
    add hl, bc
    dec e
    jr nz, jr_000_26c0

    ld a, $04
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ld b, d
    dec b
    dec b

jr_000_26e0:
    ld [hl+], a
    dec b
    jr nz, jr_000_26e0

    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $05
    ld [hl], a
    ret


Call_000_26ec:
    sub $04
    ld d, a
    call Call_000_219d
    push hl
    ld a, $3d
    sub d
    ld c, a
    ld b, d
    dec b
    dec b
    ld a, $92
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld b, d

jr_000_2701:
    ld [hl+], a
    dec b
    jr nz, jr_000_2701

    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    add hl, bc
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld b, d

jr_000_2710:
    ld [hl+], a
    dec b
    jr nz, jr_000_2710

    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    pop hl
    ld a, [$75a5]
    cp $11
    ret nz

    ld a, c
    ld bc, $0020
    add hl, bc
    ld c, a
    ld b, d
    ld [hl], $04
    inc hl
    xor a
    ld b, d
    inc b
    inc b

jr_000_272d:
    ld [hl+], a
    dec b
    jr nz, jr_000_272d

    ld [hl], $05
    add hl, bc
    ld b, d
    ld [hl], $04
    inc hl
    xor a
    ld b, d
    inc b
    inc b

jr_000_273c:
    ld [hl+], a
    dec b
    jr nz, jr_000_273c

    ld [hl], $05
    ret


Call_000_2743:
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de

Call_000_2753:
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ld a, [hl+]
    or b
    ld [de], a
    inc de
    ret


    ld a, $2f
    ld [hl], a

jr_000_2787:
    inc [hl]
    ld a, c
    sub $e8
    ld c, a
    ld a, b
    sbc $03
    ld b, a
    jr nc, jr_000_2787

    ld a, c
    add $e8
    ld c, a
    ld a, b
    adc $03
    ld b, a
    inc hl

Call_000_279b:
    ld a, $2f
    ld [hl], a

jr_000_279e:
    inc [hl]
    ld a, c
    sub $64
    ld c, a
    ld a, b
    sbc $00
    ld b, a
    jr nc, jr_000_279e

    ld a, c
    add $64
    ld c, a
    ld a, b
    adc $00
    ld b, a
    inc hl

Call_000_27b2:
    ld a, $2f
    ld [hl], a

jr_000_27b5:
    inc [hl]
    ld a, c
    sub $0a
    ld c, a
    jr nc, jr_000_27b5

    ld a, c
    add $0a
    ld c, a
    inc hl
    ld a, c
    add $30
    ld [hl], a
    inc hl
    ld [hl], $00
    inc hl
    ret


    call Call_000_2251
    jp Jump_000_2e2d


    ld b, $10
    rst $30
    ret z

    ld a, [$75c0]
    or a
    jp nz, Jump_000_27e1

    call Call_000_2f16
    call Call_000_2e11

Jump_000_27e1:
    ld hl, $336f
    jp Jump_000_2074


    ld b, $10
    rst $30
    ret z

    ld a, [$75c0]
    or a
    jp nz, Jump_000_2800

    ld c, $10
    call $2e6b
    call Call_000_2acc
    call Call_000_2169
    call Call_000_3dbd

Jump_000_2800:
    ld hl, $336f
    jp Jump_000_2074


    call Call_000_22b4
    call Call_000_3dad
    call Call_000_292c
    xor a
    ld [$75c5], a
    ld [$75c6], a
    call Call_000_2bae
    jp Jump_000_2d3f


    call Call_000_29b0
    ld b, $10
    rst $30
    jp nz, Jump_000_2d9b

    ld b, $20
    rst $30
    jr nz, jr_000_2830

    ld b, $40
    rst $30
    jr nz, jr_000_283f

    ret


jr_000_2830:
    call Call_000_3152
    ld hl, $336f
    jp z, Jump_000_2074

    ld hl, $3e1b
    jp Jump_000_2074


jr_000_283f:
    call Call_000_2fdb
    and a
    jr z, jr_000_2847

    ld a, $01

jr_000_2847:
    ld [$76cf], a
    call Call_000_2b52
    ld a, c
    or b
    jr z, jr_000_2853

    ld a, $01

jr_000_2853:
    ld [$76d0], a
    ld a, [$77ea]
    ld c, a
    ld a, [$76d0]
    and c
    ld [$77eb], a
    ld a, [$76cf]
    and c
    ld [$77ec], a
    ld hl, $3870
    jp Jump_000_2074


    ld hl, $75c3
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$c001]
    and a
    jr nz, jr_000_288b

    ld a, [$c000]
    and a
    jr z, jr_000_28e7

    cp $0a
    jr nc, jr_000_288b

    ld c, e
    ld hl, $0000
    ld b, a
    jr jr_000_28be

jr_000_288b:
    ld c, $04
    ld hl, $fffc
    add hl, de
    jr c, jr_000_2897

    ld c, e
    ld hl, $0000

jr_000_2897:
    ld a, [$c000]
    ld e, a
    ld a, [$c001]
    ld d, a
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld a, l
    sub e
    ld b, a
    ld a, h
    sbc d
    jr c, jr_000_28b5

    ld a, b
    add $04
    ld c, a
    ld h, d
    ld l, e

jr_000_28b5:
    ld b, $09
    ld d, h
    ld e, l
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, hl

jr_000_28be:
    ld de, $c002
    add hl, de
    ld de, $76e7
    xor a

jr_000_28c6:
    push af
    push bc
    inc hl
    inc hl
    ld b, $80
    cp c
    jr nz, jr_000_28d1

    ld b, $00

jr_000_28d1:
    call Call_000_2743
    xor a
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    pop bc
    pop af
    inc a
    cp b
    jr nz, jr_000_28c6

    ld a, $09
    sub b
    ret z

    ld c, a
    jr jr_000_28fa

jr_000_28e7:
    ld hl, $290c
    ld de, $76e7
    ld b, $00
    call Call_000_2743
    xor a
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    ld c, $08

jr_000_28fa:
    ld hl, $291c
    ld b, $00
    call Call_000_2743
    xor a
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_000_28fa

    ret


    inc a
    ld b, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld a, c
    ld a, $20
    jr nz, jr_000_2936

    jr nz, jr_000_2938

    jr nz, @+$22

    jr nz, jr_000_293c

    jr nz, jr_000_293e

    jr nz, @+$22

    jr nz, jr_000_2942

    jr nz, jr_000_2944

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_000_294a

    jr nz, jr_000_294c

Call_000_292c:
    ld hl, $75c3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, hl

jr_000_2936:
    add hl, hl
    add hl, de

jr_000_2938:
    add hl, hl
    ld de, $c002

jr_000_293c:
    add hl, de
    ld a, [hl+]

jr_000_293e:
    ld [$768b], a
    ld a, [hl+]

jr_000_2942:
    and $0f

jr_000_2944:
    ld [$768c], a
    ld de, $768d

jr_000_294a:
    ld c, $10

jr_000_294c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_294c

    xor a
    ld [de], a
    ret


Call_000_2955:
    ld a, [$75a7]
    and a
    jr nz, jr_000_295f

    ld [$75ab], a
    ret


jr_000_295f:
    ld a, [$75ab]
    and a
    jr z, jr_000_296e

    inc a
    cp $14
    jr z, jr_000_2972

    ld [$75ab], a
    ret


jr_000_296e:
    inc a
    ld [$75ab], a

jr_000_2972:
    ld hl, $75c3
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_2b49
    or c
    jr z, jr_000_2992

    dec bc
    push bc
    ld b, $02
    rst $30
    pop bc
    jr z, jr_000_2989

    ld de, $0000

jr_000_2989:
    push bc
    ld b, $01
    rst $30
    pop bc
    jr z, jr_000_2992

    ld d, b
    ld e, c

jr_000_2992:
    ld a, [$75a7]
    cp $04
    jr nz, jr_000_299e

    ld a, e
    or d
    jr z, jr_000_299e

    dec de

jr_000_299e:
    ld a, [$75a7]
    cp $08
    jr nz, jr_000_29ac

    ld a, e
    sub c
    ld a, d
    sbc b
    jr nc, jr_000_29ac

    inc de

jr_000_29ac:
    ld [hl], d
    dec hl
    ld [hl], e
    ret


Call_000_29b0:
    ld a, [$75a7]
    and a
    jr nz, jr_000_29ba

    ld [$75ab], a
    ret


jr_000_29ba:
    ld a, [$75ab]
    and a
    jr z, jr_000_29c9

    inc a
    cp $14
    jr z, jr_000_29cd

    ld [$75ab], a
    ret


jr_000_29c9:
    inc a
    ld [$75ab], a

jr_000_29cd:
    ld hl, $75c5
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_2b52
    or c
    jr z, jr_000_29ed

    dec bc
    push bc
    ld b, $02
    rst $30
    pop bc
    jr z, jr_000_29e4

    ld de, $0000

jr_000_29e4:
    push bc
    ld b, $01
    rst $30
    pop bc
    jr z, jr_000_29ed

    ld d, b
    ld e, c

jr_000_29ed:
    ld a, [$75a7]
    cp $04
    jr nz, jr_000_29f9

    ld a, e
    or d
    jr z, jr_000_29f9

    dec de

jr_000_29f9:
    ld a, [$75a7]
    cp $08
    jr nz, jr_000_2a07

    ld a, e
    sub c
    ld a, d
    sbc b
    jr nc, jr_000_2a07

    inc de

jr_000_2a07:
    ld [hl], d
    dec hl
    ld [hl], e
    ret


Call_000_2a0b:
    ld a, [$c000]
    ld e, a
    ld a, [$c001]
    ld d, a
    ret


Call_000_2a14:
    ld hl, $c000
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec de
    ld [hl], d
    dec hl
    ld [hl], e
    ret


Call_000_2a1f:
    ld hl, $c000
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ret


Call_000_2a2a:
    ld a, e
    or d
    ret z

    ld b, h
    ld c, l
    push de
    ld de, $0012
    add hl, de
    pop de

jr_000_2a35:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    jr nz, jr_000_2a35

    ld h, b
    ld l, c
    ld [hl+], a
    ld [hl+], a
    ld a, $20
    ld c, $10

jr_000_2a78:
    ld [hl+], a
    dec c
    jr nz, jr_000_2a78

    ret


Call_000_2a7d:
    ld hl, $dfff
    ld bc, $dfed

jr_000_2a83:
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    dec de
    ld a, e
    or d
    jr nz, jr_000_2a83

    inc hl
    inc bc
    ret


Call_000_2ac1:
    ld hl, $c000
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $fe39
    add hl, de
    ret


Call_000_2acc:
    call Call_000_3dad
    call Call_000_2a0b
    call Call_000_2ac1
    ret c

    ld hl, $c002
    ld de, $01c7
    ld bc, $76d1

jr_000_2adf:
    push bc
    push de
    push hl
    ld a, [hl+]
    or [hl]
    inc hl
    jr z, jr_000_2b44

    ld a, [hl]
    cp $41
    jr c, jr_000_2af2

    cp $5b
    jr nc, jr_000_2af2

    or $20

jr_000_2af2:
    ld e, a
    ld a, [bc]
    cp $41
    jr c, jr_000_2afe

    cp $5b
    jr nc, jr_000_2afe

    or $20

jr_000_2afe:
    cp e
    jr z, jr_000_2b05

    jr nc, jr_000_2b37

    jr jr_000_2b14

jr_000_2b05:
    ld a, [bc]
    cp [hl]
    jr c, jr_000_2b14

    inc bc
    inc hl
    ld a, [bc]
    and a
    jr z, jr_000_2b14

    cp [hl]
    jr z, jr_000_2b05

    jr nc, jr_000_2b37

jr_000_2b14:
    pop hl
    pop de
    pop bc
    call Call_000_2a7d

jr_000_2b1a:
    push hl
    call Call_000_2e79
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    push bc
    ld de, $76d1
    ld c, $10

jr_000_2b29:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_2b29

    call Call_000_2a1f
    call Call_000_2b5b
    pop bc
    ret


jr_000_2b37:
    pop hl
    ld de, $0012
    add hl, de
    pop de
    pop bc
    dec de
    ld a, e
    or d
    jr nz, jr_000_2adf

    ret


jr_000_2b44:
    pop hl
    pop de
    pop bc
    jr jr_000_2b1a

Call_000_2b49:
    ld a, [$c000]
    ld c, a
    ld a, [$c001]
    ld b, a
    ret


Call_000_2b52:
    ld a, [$77f0]
    ld c, a
    ld a, [$77f1]
    ld b, a
    ret


Call_000_2b5b:
    call Call_000_2b49
    ld hl, $769e
    call Call_000_279b
    dec hl
    ld de, $2b6f

jr_000_2b68:
    ld a, [de]
    inc de
    ld [hl+], a
    and a
    jr nz, jr_000_2b68

    ret


    jr nz, jr_000_2bb8

    ld h, c
    ld l, l
    ld h, l
    ld [hl], e
    jr nz, @+$48

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop

Call_000_2b7c:
    ld d, h
    ld e, l
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, hl
    ld de, $c002
    add hl, de
    ld c, [hl]
    inc hl
    ld a, [hl]
    and $0f
    ld b, a
    ret


Call_000_2b8e:
    push de
    ld a, [$7669]
    ld e, a
    ld a, [$766a]
    ld d, a
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    ld a, [de]
    inc de
    ld c, a
    and $0f
    ld a, a
    rst $18
    ld a, e
    ld [$7669], a
    ld a, d
    ld [$766a], a
    pop de
    ret


Call_000_2bae:
    ld hl, $75c3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2b7c
    xor a

jr_000_2bb8:
    ld [$77f0], a
    ld [$77f1], a
    ld de, $6000
    ld a, $05
    rst $18
    ld hl, $4002

jr_000_2bc7:
    ld a, [hl+]
    cp c
    ld a, [hl]
    jr nz, jr_000_2bd6

    and $0f
    cp b
    jr nz, jr_000_2bd6

    ld a, $05
    call Call_000_2c22

jr_000_2bd6:
    push de
    ld de, $0011
    add hl, de
    pop de
    ld a, h
    cp $60
    jr nz, jr_000_2bc7

    ld a, $06
    rst $18
    ld hl, $4002

jr_000_2be7:
    ld a, [hl+]
    cp c
    ld a, [hl]
    jr nz, jr_000_2bf6

    and $0f
    cp b
    jr nz, jr_000_2bf6

    ld a, $06
    call Call_000_2c22

jr_000_2bf6:
    push de
    ld de, $0011
    add hl, de
    pop de
    ld a, h
    cp $60
    jr nz, jr_000_2be7

    ld a, $07
    rst $18
    ld hl, $4002

jr_000_2c07:
    ld a, [hl+]
    cp c
    ld a, [hl]
    jr nz, jr_000_2c16

    and $0f
    cp b
    jr nz, jr_000_2c16

    ld a, $07
    call Call_000_2c22

jr_000_2c16:
    push de
    ld de, $0011
    add hl, de
    pop de
    ld a, h
    cp $60
    jr nz, jr_000_2c07

    ret


Call_000_2c22:
    push de
    push hl
    ld hl, $77f0
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    pop hl
    pop de
    push bc
    ld c, a
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld a, [hl]
    and $10
    or c
    ld [de], a
    inc de
    pop bc
    ret


    ld hl, $75c5
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$77f1]
    and a
    jr nz, jr_000_2c5e

    ld a, [$77f0]
    and a
    jp z, Jump_000_2cd8

    cp $0a
    jr nc, jr_000_2c5e

    ld c, e
    ld hl, $0000
    ld b, a
    jr jr_000_2c8e

jr_000_2c5e:
    ld c, $04
    ld hl, $fffc
    add hl, de
    jr c, jr_000_2c6a

    ld c, e
    ld hl, $0000

jr_000_2c6a:
    ld a, [$77f0]
    ld e, a
    ld a, [$77f1]
    ld d, a
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld a, l
    sub e
    ld b, a
    ld a, h
    sbc d
    jr c, jr_000_2c88

    ld a, b
    add $04
    ld c, a
    ld h, d
    ld l, e

jr_000_2c88:
    ld b, $09
    ld d, h
    ld e, l
    add hl, hl
    add hl, de

jr_000_2c8e:
    ld de, $6000
    add hl, de
    ld a, l
    ld [$7669], a
    ld a, h
    ld [$766a], a
    ld de, $76e7
    xor a

jr_000_2c9e:
    push af
    push bc
    ld b, $80
    cp c
    jr nz, jr_000_2ca7

    ld b, $00

jr_000_2ca7:
    call Call_000_2b8e
    inc hl
    call Call_000_2753
    ld hl, $2d39
    bit 4, c
    jr z, jr_000_2cb8

    ld hl, $2d3c

jr_000_2cb8:
    ld a, $20
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    pop bc
    pop af
    inc a
    cp b
    jr nz, jr_000_2c9e

    ld a, $09
    sub b
    ret z

    ld c, a
    jr jr_000_2cf9

Jump_000_2cd8:
    ld hl, $2d19
    ld de, $76e7
    ld b, $00
    call Call_000_2753
    ld a, $20
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc hl
    inc hl
    inc hl
    inc hl
    xor a
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    ld c, $08

jr_000_2cf9:
    ld hl, $2d29
    ld b, $00
    call Call_000_2753
    ld a, $20
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc hl
    inc hl
    inc hl
    inc hl
    xor a
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_000_2cf9

    ret


    inc a
    ld b, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld a, c
    ld a, $20
    jr nz, jr_000_2d43

    jr nz, jr_000_2d45

    jr nz, @+$22

    jr nz, jr_000_2d49

    jr nz, @+$22

    jr nz, jr_000_2d4d

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_000_2d55

    jr nz, @+$22

    jr nz, jr_000_2d59

    rst $08
    and $e6
    jr nz, jr_000_2d8d

    ld l, [hl]

Call_000_2d3f:
Jump_000_2d3f:
    call Call_000_2d7e
    push bc

jr_000_2d43:
    ld h, b
    ld l, c

jr_000_2d45:
    ld bc, $ffe6
    add hl, bc

jr_000_2d49:
    ld hl, $769e
    pop bc

jr_000_2d4d:
    ld de, $2d6e
    jr c, jr_000_2d59

    call Call_000_27b2

jr_000_2d55:
    dec hl
    ld de, $2d60

jr_000_2d59:
    ld a, [de]
    inc de
    ld [hl+], a
    and a
    jr nz, jr_000_2d59

    ret


    jr nz, jr_000_2da5

    ld l, a
    ld h, h
    ld h, l
    ld [hl], e
    jr nz, jr_000_2da9

    ld [hl], d
    ld h, l
    jr nz, @+$51

    ld l, [hl]
    nop
    jr nz, @+$56

    ld l, a
    ld l, a
    jr nz, jr_000_2dc1

    ld h, c
    ld l, [hl]
    ld a, c
    jr nz, jr_000_2dbc

    ld l, a
    ld h, h
    ld h, l
    ld [hl], e
    nop

Call_000_2d7e:
    ld hl, $77f0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $6000
    ld bc, $0000
    ld a, d
    or e
    ret z

jr_000_2d8d:
    inc hl
    inc hl
    ld a, [hl+]
    and $10
    jr z, jr_000_2d95

    inc bc

jr_000_2d95:
    dec de
    ld a, e
    or d
    jr nz, jr_000_2d8d

    ret


Jump_000_2d9b:
    ld hl, $75c5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, de

jr_000_2da5:
    ld de, $6002
    add hl, de

jr_000_2da9:
    ld a, [hl]
    and $0f
    ld a, a
    rst $18
    ld a, [hl]
    xor $10
    ld [hl], a
    call Call_000_2d3f
    ret


    ld h, $00
    ld l, $0e
    ld d, $14

jr_000_2dbc:
    ld e, $04
    call Call_000_258d

jr_000_2dc1:
    ld c, $0e
    ld a, $04
    call Call_000_1eef
    ld de, $2dce
    jp Jump_000_2413


    ld [bc], a
    rrca
    jr nz, @+$59

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, @+$6e

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_000_2deb

    ld [hl], h
    ld l, a
    jr nz, jr_000_2e58

    ld h, c
    db $76
    ld h, l
    jr nz, jr_000_2e4d

    ld l, b

jr_000_2deb:
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], e
    ccf
    nop

Call_000_2df2:
    ld bc, $0011
    ld hl, $c000
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl

jr_000_2dfc:
    inc hl
    ld a, [hl]
    and $df
    ld [hl], a
    add hl, bc
    ld a, e
    or d
    dec de
    jr nz, jr_000_2dfc

    ret


    call Call_000_2e11
    ld hl, $336f
    jp Jump_000_2074


Call_000_2e11:
    call Call_000_3dad
    call Call_000_2df2
    ld hl, $75c3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, hl
    ld de, $c003
    add hl, de
    set 5, [hl]
    jp Jump_000_3dbd


Jump_000_2e2d:
    call Call_000_3dad
    ld bc, $0010
    ld hl, $c000
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl

jr_000_2e3a:
    inc hl
    ld a, [hl+]
    and $20
    jr nz, jr_000_2e4a

    add hl, bc
    ld a, e
    or d
    dec de
    jr nz, jr_000_2e3a

    ld hl, $2e5b
    xor a

jr_000_2e4a:
    ld [$76cc], a

jr_000_2e4d:
    ld de, $768d
    ld c, $10

jr_000_2e52:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_2e52

jr_000_2e58:
    xor a
    ld [de], a
    ret


    jr nz, jr_000_2eab

    ld l, a
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_000_2ea6

    ld h, e
    ld [hl], h
    ld l, c
    db $76
    ld h, l
    jr nz, jr_000_2e8d

    pop de
    db $76
    ld de, $76d2

jr_000_2e71:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_2e71

    ld [hl], c
    ret


Call_000_2e79:
    ld bc, $0200

jr_000_2e7c:
    ld hl, $c000
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl

jr_000_2e83:
    ld a, [hl+]
    cp c
    jr nz, jr_000_2e90

    ld a, [hl]
    and $0f
    cp b
    jr nz, jr_000_2e90

jr_000_2e8d:
    inc bc
    jr jr_000_2e7c

jr_000_2e90:
    push de
    ld de, $0011
    add hl, de
    pop de
    ld a, e
    or d
    dec de
    jr nz, jr_000_2e83

    ret


    call Call_000_3dad
    call Call_000_2b49
    ld a, c
    or b
    jr z, jr_000_2ee0

jr_000_2ea6:
    ld hl, $75c3
    ld a, [hl+]
    ld b, [hl]

jr_000_2eab:
    ld c, a
    cpl
    ld e, a
    ld a, b
    cpl
    ld d, a
    inc de
    ld hl, $01c6
    add hl, de
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, hl
    ld bc, $c002
    add hl, bc
    call Call_000_2a2a
    call Call_000_2a14
    call Call_000_3dbd
    call Call_000_2b5b
    ld hl, $75c3
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, d
    or e
    jr z, jr_000_2edd

    dec de
    ld [hl], d
    dec hl
    ld [hl], e

jr_000_2edd:
    call Call_000_2f77

jr_000_2ee0:
    ld hl, $336f
    jp Jump_000_2074


    ld hl, $75c5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    ld de, $6000
    add hl, de
    ld e, [hl]
    inc hl
    ld a, [hl+]
    add $80
    ld d, a
    ld a, [hl+]
    and $0f
    sub $05
    push af
    push de
    call Call_000_3dd9
    pop de
    xor a
    ld [de], a
    dec de
    ld [de], a
    call Call_000_2a14
    pop af
    call Call_000_3dec
    ld hl, $37e8
    jp Jump_000_2074


Call_000_2f16:
    ld a, $00
    call Call_000_3dd9
    ld b, $05
    call Call_000_2f44
    ld a, $00
    call Call_000_3dec
    ld a, $01
    call Call_000_3dd9
    ld b, $06
    call Call_000_2f44
    ld a, $01
    call Call_000_3dec
    ld a, $02
    call Call_000_3dd9
    ld b, $07
    call Call_000_2f44
    ld a, $02
    call Call_000_3dec
    ret


Call_000_2f44:
    ld hl, $77f0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $6000
    ld a, d
    or e
    ret z

jr_000_2f50:
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, d
    sub $40
    add $c0
    ld d, a
    ld a, [hl+]
    ld c, a
    and $0f
    cp b
    jr nz, jr_000_2f70

    ld a, c
    and $10
    ld c, a
    ld a, [de]
    and $10
    cp c
    jr z, jr_000_2f70

    ld a, [de]
    xor $10
    ld [de], a

jr_000_2f70:
    pop de
    dec de
    ld a, e
    or d
    jr nz, jr_000_2f50

    ret


Call_000_2f77:
    ld a, $00
    call Call_000_3dd9
    call Call_000_2f9f
    ld a, $00
    call Call_000_3dec
    ld a, $01
    call Call_000_3dd9
    call Call_000_2f9f
    ld a, $01
    call Call_000_3dec
    ld a, $02
    call Call_000_3dd9
    call Call_000_2f9f
    ld a, $02
    call Call_000_3dec
    ret


Call_000_2f9f:
    ld hl, $c002
    ld de, $01c7
    ld a, [$768b]
    ld c, a
    ld a, [$768c]
    ld b, a

jr_000_2fad:
    ld a, [hl+]
    cp c
    ld a, [hl-]
    jr nz, jr_000_2fcf

    and $0f
    cp b
    jr nz, jr_000_2fcf

    xor a
    ld [hl+], a
    ld [hl-], a
    push bc
    push de
    push hl
    ld hl, $c000
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec de
    ld [hl], d
    dec hl
    ld [hl], e
    ld a, e
    or d
    call nz, Call_000_3dff
    pop hl
    pop de
    pop bc

jr_000_2fcf:
    push de
    ld de, $0012
    add hl, de
    pop de
    dec de
    ld a, e
    or d
    jr nz, jr_000_2fad

    ret


Call_000_2fdb:
    ld hl, $0000
    ld a, $05
    rst $18
    ld de, $4000
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    dec de
    ld b, a
    add hl, bc
    ld a, $06
    rst $18
    ld de, $4000
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    dec de
    ld b, a
    add hl, bc
    ld a, $07
    rst $18
    ld de, $4000
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    dec de
    ld b, a
    add hl, bc
    ld bc, $faab
    add hl, bc
    ld a, h
    or l
    ret


Call_000_300c:
    ld a, $00
    call Call_000_3dd9
    call Call_000_3033
    ld a, $00
    jp nz, Jump_000_3dec

    ld a, $01
    call Call_000_3dd9
    call Call_000_3033
    ld a, $01
    jp nz, Jump_000_3dec

    ld a, $02
    call Call_000_3dd9
    call Call_000_3033
    ld a, $02
    jp nz, Jump_000_3dec

Call_000_3033:
    ld hl, $c002
    ld de, $01c7
    ld bc, $0012

jr_000_303c:
    ld a, [hl+]
    and a
    ld a, [hl-]
    jr nz, jr_000_3044

    and a
    jr z, jr_000_304b

jr_000_3044:
    add hl, bc
    dec de
    ld a, e
    or d
    jr nz, jr_000_303c

    ret


jr_000_304b:
    ld a, [$768b]
    ld [hl+], a
    ld a, [$768c]
    or $10
    ld [hl+], a
    ld de, $76d2
    ld c, $0c

jr_000_305a:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_305a

    ld de, $76b8
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    call Call_000_2a1f
    or $01
    ret


    ld a, $00
    call Call_000_3dd9
    call Call_000_309c
    ld a, $00
    jp nz, Jump_000_3dec

    ld a, $01
    call Call_000_3dd9
    call Call_000_309c
    ld a, $01
    jp nz, Jump_000_3dec

    ld a, $02
    call Call_000_3dd9
    call Call_000_309c
    ld a, $02
    jp nz, Jump_000_3dec

Call_000_309c:
    ld hl, $c002
    ld de, $01c7
    ld bc, $0012

jr_000_30a5:
    ld a, [hl+]
    and a
    ld a, [hl-]
    jr nz, jr_000_30ad

    and a
    jr z, jr_000_30b4

jr_000_30ad:
    add hl, bc
    dec de
    ld a, e
    or d
    jr nz, jr_000_30a5

    ret


jr_000_30b4:
    ld a, [$768b]
    ld [hl+], a
    ld a, [$768c]
    or $10
    ld [hl+], a
    ld de, $76d2
    ld c, $0c

jr_000_30c3:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_30c3

    ld de, $76b8
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    call Call_000_2a1f
    or $01
    ret


Call_000_30de:
    ld a, $04
    rst $18
    ld hl, $4000
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld bc, $0011

jr_000_30eb:
    inc hl
    ld a, [hl]
    and $20
    jr nz, jr_000_30f8

    add hl, bc
    ld a, e
    or d
    dec de
    jr nz, jr_000_30eb

    ret


jr_000_30f8:
    ld a, [hl-]
    and $0f
    ld b, a
    ld c, [hl]
    ld de, $7900

Jump_000_3100:
    xor a
    ld [$76cb], a
    ld a, $05
    rst $18
    call Call_000_3117
    ld a, $06
    rst $18
    call Call_000_3117
    ld a, $07
    rst $18
    call Call_000_3117
    ret


Call_000_3117:
    ld hl, $4002

jr_000_311a:
    ld a, [hl+]
    cp c
    jr nz, jr_000_3146

    ld a, [hl]
    and $0f
    cp b
    jr nz, jr_000_3146

    bit 4, [hl]
    jr z, jr_000_3146

    push hl
    push de
    ld de, $000d
    add hl, de
    pop de
    ld a, [$76cb]
    cp $19
    ret z

    inc a
    ld [$76cb], a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl

jr_000_3146:
    push de
    ld de, $0011
    add hl, de
    pop de
    ld a, h
    cp $60
    jr nz, jr_000_311a

    ret


Call_000_3152:
    xor a
    ld [$76e5], a
    ld a, $00
    call Call_000_3dd9
    ld b, $05
    call Call_000_3179
    ld a, $01
    call Call_000_3dd9
    ld b, $06
    call Call_000_3179
    ld a, $02
    call Call_000_3dd9
    ld b, $07
    call Call_000_3179
    ld a, [$76e5]
    and a
    ret


Call_000_3179:
    ld hl, $77f0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $6000
    ld a, e
    or d
    ret z

jr_000_3185:
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, d
    sub $40
    add $c0
    ld d, a
    ld a, [hl+]
    ld c, a
    and $0f
    cp b
    jr nz, jr_000_31a6

    ld a, c
    and $10
    ld c, a
    ld a, [de]
    and $10
    cp c
    jr z, jr_000_31a6

    ld a, $01
    ld [$76e5], a

jr_000_31a6:
    pop de
    dec de
    ld a, e
    or d
    jr nz, jr_000_3185

    ret


    ld hl, $3240
    ld a, [$75a5]
    cp $11
    jr z, jr_000_31ba

    ld hl, $3203

jr_000_31ba:
    jp Jump_000_2074


    ld bc, $27ca
    inc bc
    ld [bc], a
    inc b
    inc c
    inc bc
    cp a
    ld [hl], l
    ld bc, $614d
    ld l, c
    ld l, [hl]
    jr nz, jr_000_321b

    ld h, l
    ld l, [hl]
    ld [hl], l
    nop
    inc bc
    ccf
    ld a, $53
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    nop
    inc bc
    ld l, a
    inc sp
    ld b, e
    ld l, a
    ld h, h
    ld h, l
    ld [hl], e
    nop
    ld [bc], a
    xor l
    ld sp, $704f
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    nop
    add hl, bc
    nop
    ld c, $14
    inc b
    ld [$0d08], sp
    nop
    inc c
    rst $38
    ld [bc], a
    adc l
    halt
    ld bc, $2251
    ld [bc], a
    ld [bc], a
    dec b
    inc c
    inc bc
    ret nz

    ld [hl], l
    ld bc, $704f
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    nop
    dec b
    ld l, e
    db $76
    add c
    ld d, e

jr_000_321b:
    ld h, e
    ld [hl], d
    ld l, a
    ld l, h
    ld l, h
    jr nz, @+$22

    jr nz, jr_000_3224

jr_000_3224:
    add c
    dec b
    ld l, l
    ld a, d
    add c
    ld d, e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_000_3250

    jr nz, jr_000_3252

    nop
    add c
    inc bc
    cp l
    ld sp, $7845
    ld l, c
    ld [hl], h
    nop
    ld b, $85
    ld a, $00
    ld bc, $2251
    ld [bc], a
    ld [bc], a
    ld b, $0c
    ld [bc], a
    ret nz

    ld [hl], l
    ld bc, $704f
    ld [hl], h
    ld l, c
    ld l, a

jr_000_3250:
    ld l, [hl]
    ld [hl], e

jr_000_3252:
    nop
    dec b
    ld l, l
    ld a, d
    add c
    ld d, e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_000_327e

    jr nz, @+$22

    nop
    add c
    inc bc
    cp l
    ld sp, $7845
    ld l, c
    ld [hl], h
    nop
    ld b, $85
    ld a, $00
    ld a, [$76cc]
    and a
    jp z, Jump_000_1957

    ld hl, $3e3f
    jp Jump_000_2074


    call Call_000_3dad

jr_000_327e:
    call Call_000_2b5b
    call Call_000_22b4
    ld hl, $c000
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $75c3
    ld a, [hl+]
    sub e
    ld a, [hl-]
    sbc d
    jr c, jr_000_3296

    xor a
    ld [hl+], a
    ld [hl+], a

jr_000_3296:
    jp Jump_000_2e2d


Call_000_3299:
    ld de, $35ec
    ld a, [$75a7]
    and $40
    jr nz, jr_000_32a6

    ld de, $361c

jr_000_32a6:
    ld hl, $76e7
    ld b, $04

jr_000_32ab:
    ld c, $10

jr_000_32ad:
    ld a, [de]
    inc de
    or $80
    ld [hl+], a
    dec c
    jr nz, jr_000_32ad

    ld [hl], c
    inc hl
    dec b
    jr nz, jr_000_32ab

    ld hl, $76c0
    ld b, $02
    rst $30
    jr z, jr_000_32c9

    ld a, [hl]
    and a
    jr nz, jr_000_32c8

    ld [hl], $10

jr_000_32c8:
    dec [hl]

jr_000_32c9:
    ld b, $01
    rst $30
    jr z, jr_000_32d6

    ld a, [hl]
    cp $0f
    jr nz, jr_000_32d5

    ld [hl], $ff

jr_000_32d5:
    inc [hl]

jr_000_32d6:
    ld hl, $76c1
    ld b, $04
    rst $30
    jr z, jr_000_32e5

    ld a, [hl]
    and a
    jr nz, jr_000_32e4

    ld [hl], $03

jr_000_32e4:
    dec [hl]

jr_000_32e5:
    ld hl, $76c1
    ld b, $08
    rst $30
    jr z, jr_000_32f5

    ld a, [hl]
    cp $02
    jr nz, jr_000_32f4

    ld [hl], $ff

jr_000_32f4:
    inc [hl]

jr_000_32f5:
    ld a, [hl-]
    ld c, a
    add a
    add a
    add a
    add a
    add c
    add [hl]
    ld c, a
    ld b, $00
    ld hl, $76e7
    add hl, bc
    res 7, [hl]
    ld b, $10
    rst $30
    jr z, jr_000_330f

    ld a, [hl]
    call Call_000_2110

jr_000_330f:
    ld b, $20
    rst $30
    jr z, jr_000_3317

    call Call_000_212a

jr_000_3317:
    ld b, $40
    rst $30
    jr z, jr_000_3324

    ld a, [$76c4]
    xor $01
    ld [$76c4], a

jr_000_3324:
    ret


    call Call_000_2955
    ld b, $10
    rst $30
    jr nz, jr_000_333e

    ld b, $20
    rst $30
    jr nz, jr_000_3338

    ld b, $40
    rst $30
    jr nz, jr_000_334a

    ret


jr_000_3338:
    ld hl, $31bd
    jp Jump_000_2074


jr_000_333e:
    call Call_000_2b49
    ld a, c
    or b
    ret z

    ld hl, $37e8
    jp Jump_000_2074


jr_000_334a:
    call Call_000_2b49
    ld hl, $fe39
    add hl, bc
    ld a, h
    or l
    jr z, jr_000_3357

    ld a, $01

jr_000_3357:
    ld [$76cd], a
    ld e, a
    ld a, c
    or b
    and a
    jr z, jr_000_3362

    ld a, $01

jr_000_3362:
    ld [$76ce], a
    and e
    ld [$77f2], a
    ld hl, $34bb
    jp Jump_000_2074


    nop
    ld a, e
    ld [hl-], a
    nop
    nop
    ld bc, $0710
    nop
    nop
    add hl, bc
    nop
    inc bc
    inc d
    dec bc
    ld a, [bc]
    ld bc, $1400
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    ld [hl], e
    nop
    ld [$0608], sp
    ld l, [hl]
    jr z, jr_000_339a

    rst $38
    nop
    rst $20
    db $76
    inc c
    rst $38
    nop
    ei
    db $76
    inc c
    rst $38
    nop

jr_000_339a:
    rrca
    ld [hl], a
    inc c
    rst $38
    nop
    inc hl
    ld [hl], a
    inc c
    rst $38
    nop
    scf
    ld [hl], a
    inc c
    rst $38
    nop
    ld c, e
    ld [hl], a
    inc c
    rst $38
    nop
    ld e, a
    ld [hl], a
    inc c
    rst $38
    nop
    ld [hl], e
    ld [hl], a
    inc c
    rst $38
    nop
    add a
    ld [hl], a
    add hl, bc
    nop
    ld c, $14
    inc b
    ld [$0c08], sp
    rst $38
    ld [bc], a
    adc l
    db $76
    inc c
    rst $38
    ld [bc], a
    sbc [hl]
    db $76
    ld b, $25
    inc sp
    nop
    ld bc, $2251
    ld [bc], a
    inc bc
    dec b
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld bc, $6153
    db $76
    ld h, l
    nop
    ld [bc], a
    ld l, [hl]
    add hl, de
    ld c, a
    ld c, e
    nop
    ld [bc], a
    ld l, [hl]
    add hl, de
    ld b, l
    ld a, b
    ld l, c
    ld [hl], h
    nop
    ld b, $e7
    daa
    ld b, $b6
    dec l
    nop
    ld bc, $2251
    ld [bc], a
    inc bc
    dec b
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld bc, $6544
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    nop
    ld [bc], a
    sbc h
    ld l, $4f
    ld c, e
    nop
    inc bc
    ld l, a
    inc sp
    ld b, l
    ld a, b
    ld l, c
    ld [hl], h
    nop
    ld b, $b6
    dec l
    nop
    nop
    ret nc

    jr nz, jr_000_341c

jr_000_341c:
    nop
    ld bc, $030e
    nop
    nop
    ld a, [bc]
    ld bc, $1400
    ld c, [hl]
    ld h, l
    ld [hl], a
    jr nz, jr_000_3472

    ld h, c
    ld l, l
    ld h, l
    nop
    dec bc
    ld h, e
    add hl, sp
    nop
    inc b
    inc d
    inc bc
    dec bc
    ld h, h
    add hl, sp
    ld bc, $120d
    dec b
    ld [$0808], sp
    ld b, $53
    ld hl, $3f06
    ld hl, $ff0c
    nop
    jp nc, Jump_000_0676

    ld e, [hl]
    ld hl, $4c06
    ld [hl], $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$ff0c], sp
    nop
    rst $20
    db $76
    inc c
    rst $38
    nop
    ld hl, sp+$76
    inc c
    rst $38
    nop
    add hl, bc
    ld [hl], a
    nop
    nop
    db $ed
    jr nz, jr_000_346d

jr_000_346d:
    nop
    ld bc, $030e
    nop

jr_000_3472:
    nop
    ld a, [bc]
    ld bc, $1400
    ld b, l
    ld h, h
    ld l, c
    ld [hl], h
    jr nz, jr_000_34c4

    ld h, c
    ld l, l
    ld h, l
    nop
    dec bc
    ld h, e
    add hl, sp
    nop
    inc b
    inc d
    inc bc
    dec bc
    ld h, h
    add hl, sp
    ld bc, $120d
    dec b
    ld [$0808], sp
    ld b, $53
    ld hl, $3f06
    ld hl, $ff0c
    nop
    jp nc, Jump_000_0676

    ld e, [hl]
    ld hl, $4c06
    ld [hl], $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$ff0c], sp
    nop
    rst $20
    db $76
    inc c
    rst $38
    nop
    ld hl, sp+$76
    inc c
    rst $38
    nop
    add hl, bc
    ld [hl], a
    nop
    ld bc, $2251
    ld [bc], a
    ld bc, $0e03
    dec b
    ret nz

jr_000_34c4:
    ld [hl], l
    ld bc, $6147
    ld l, l
    ld h, l
    nop
    ld c, $ce
    db $76
    rlca
    dec [hl]
    ld b, h
    ld h, l
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    nop
    ld c, $cd
    db $76
    dec c
    dec [hl]
    ld b, c
    ld h, h
    ld h, h
    nop
    ld c, $f2
    ld [hl], a
    inc de
    dec [hl]
    ld b, l
    ld h, h
    ld l, c
    ld [hl], h
    nop
    ld c, $ce
    db $76
    ld [$452e], sp
    ld l, [hl]
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    nop
    inc bc
    ld l, a
    inc sp
    ld b, l
    ld a, b
    ld l, c
    ld [hl], h
    nop
    ld b, $8f
    ld a, $00
    ld hl, $33f4
    jp Jump_000_2074


    ld hl, $3418
    jp Jump_000_2074


    ld hl, $3469
    jp Jump_000_2074


    call Call_000_22b4
    call Call_000_35e1
    xor a
    ld [$76c7], a
    inc a
    ld [$76c8], a
    xor a
    ld [$76c6], a
    xor a
    ld [$76c9], a
    ld [$76ca], a
    ld hl, $75c5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    ld de, $6000
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    inc de
    ld a, [hl]
    and $0f
    ld a, a
    rst $18
    ld bc, $76c2
    ld hl, $76d1
    xor a
    ld [hl+], a
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ld c, $0c

jr_000_3559:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_3559

    ld [hl], c
    call Call_000_3564
    ret


Call_000_3564:
    ld hl, $76af
    ld c, $04

jr_000_3569:
    ld a, [de]
    push bc
    push de
    push hl
    call Call_000_357e
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop de
    pop bc
    inc de
    dec c
    jr nz, jr_000_3569

    ld [hl], $00
    ret


Call_000_357e:
    ld d, a
    swap a
    and $0f
    ld c, a
    ld b, $00
    ld hl, $3597
    add hl, bc
    ld e, [hl]
    ld a, d
    and $0f
    ld c, a
    ld b, $00
    ld hl, $3597
    add hl, bc
    ld d, [hl]
    ret


    jr nc, jr_000_35ca

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    call Call_000_22b4
    call Call_000_35e1
    ld de, $76c2
    ld hl, $76d1
    xor a
    ld [hl+], a
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, $20
    ld c, $0d

jr_000_35be:
    ld [hl+], a
    dec c
    jr nz, jr_000_35be

    ld [hl], c
    ld c, $08
    ld hl, $76af
    ld a, $b0

jr_000_35ca:
    ld [hl+], a
    dec c
    jr nz, jr_000_35ca

    ld [hl], c
    xor a
    ld [$76c7], a
    ld [$76c6], a
    ld [$76c9], a
    ld [$76ca], a
    inc a
    ld [$76c8], a
    ret


Call_000_35e1:
    ld a, $07
    ld [$76c0], a
    ld a, $01
    ld [$76c1], a
    ret


    jr nz, @+$31

    inc hl
    jr nc, jr_000_3622

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_000_3632

    inc a
    ld a, $26
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    dec sp
    ld a, [hl-]
    dec hl
    dec l
    ld l, $2c
    jr nz, @+$31

    inc hl
    jr nc, jr_000_3652

    ld [hl-], a

jr_000_3622:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    inc a
    ld a, $26
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_000_3632:
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    dec sp
    ld a, [hl-]
    dec hl
    dec l
    ld l, $2c
    call Call_000_3299
    ld b, $80
    rst $30

jr_000_3652:
    jr z, jr_000_365f

    call Call_000_3bf6
    jr z, jr_000_365f

    ld hl, $33cf
    jp Jump_000_2074


jr_000_365f:
    ret


    call Call_000_36cc
    ld b, $80
    rst $30
    jr z, jr_000_3695

    call Call_000_3bf6
    jr z, jr_000_3695

    ld a, [$76c8]
    xor $01
    ld [$76c8], a
    ld a, [$76c7]
    xor $01
    ld [$76c7], a
    ret nz

    ld hl, $76d1
    ld de, $769e
    ld c, $10

jr_000_3686:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3686

    call $3965
    ld hl, $384b
    jp Jump_000_2074


jr_000_3695:
    ret


    call Call_000_36cc
    ld b, $80
    rst $30
    jr z, jr_000_36cb

    call Call_000_3bf6
    jr z, jr_000_36cb

    ld a, [$76c8]
    xor $01
    ld [$76c8], a
    ld a, [$76c7]
    xor $01
    ld [$76c7], a
    ret nz

    ld hl, $76d1
    ld de, $769e
    ld c, $10

jr_000_36bc:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_36bc

    call $3965
    ld hl, $3a1a
    jp Jump_000_2074


jr_000_36cb:
    ret


Call_000_36cc:
    ld de, $35ec
    ld a, [$76c4]
    and a
    jr nz, jr_000_36d8

    ld de, $361c

jr_000_36d8:
    xor a
    ld [$76c4], a
    ld hl, $76e7
    ld b, $03

jr_000_36e1:
    ld c, $10

jr_000_36e3:
    ld a, [de]
    inc de
    or $80
    ld [hl+], a
    dec c
    jr nz, jr_000_36e3

    ld [hl], c
    inc hl
    dec b
    jr nz, jr_000_36e1

    ld hl, $76af
    ld c, $08

jr_000_36f5:
    ld a, [hl]
    or $80
    ld [hl+], a
    dec c
    jr nz, jr_000_36f5

    ld a, [$76c7]
    and a
    jr z, jr_000_3761

    ld a, $1e
    ld [$75ab], a
    ld b, $40
    rst $30
    jr z, jr_000_371b

    call Call_000_3b38
    ld hl, $76af
    ld c, $08

jr_000_3714:
    set 7, [hl]
    inc hl
    dec c
    jr nz, jr_000_3714

    ret


jr_000_371b:
    ld hl, $76c6
    ld b, $02
    rst $30
    jr z, jr_000_3724

    dec [hl]

jr_000_3724:
    ld b, $01
    rst $30
    jr z, jr_000_372a

    inc [hl]

jr_000_372a:
    ld a, [hl]
    and $07
    ld [hl], a
    ld a, [$76c6]
    ld c, a
    ld b, $00
    ld hl, $76af
    add hl, bc
    res 7, [hl]
    ld b, $08
    rst $30
    jr z, jr_000_374d

    dec [hl]
    ld a, [hl]
    cp $2f
    jr nz, jr_000_3747

    ld [hl], $46

jr_000_3747:
    cp $40
    jr nz, jr_000_374d

    ld [hl], $39

jr_000_374d:
    ld b, $04
    rst $30
    jr z, jr_000_3760

    inc [hl]
    ld a, [hl]
    cp $3a
    jr nz, jr_000_375a

    ld [hl], $41

jr_000_375a:
    cp $47
    jr nz, jr_000_3760

    ld [hl], $30

jr_000_3760:
    ret


jr_000_3761:
    ld hl, $76c0
    ld b, $02
    rst $30
    jr z, jr_000_3770

    ld a, [hl]
    and a
    jr nz, jr_000_376f

    ld [hl], $10

jr_000_376f:
    dec [hl]

jr_000_3770:
    ld b, $01
    rst $30
    jr z, jr_000_377d

    ld a, [hl]
    cp $0f
    jr nz, jr_000_377c

    ld [hl], $ff

jr_000_377c:
    inc [hl]

jr_000_377d:
    ld hl, $76c1
    ld b, $04
    rst $30
    jr z, jr_000_378c

    ld a, [hl]
    and a
    jr nz, jr_000_378b

    ld [hl], $03

jr_000_378b:
    dec [hl]

jr_000_378c:
    ld hl, $76c1
    ld b, $08
    rst $30
    jr z, jr_000_379c

    ld a, [hl]
    cp $02
    jr nz, jr_000_379b

    ld [hl], $ff

jr_000_379b:
    inc [hl]

jr_000_379c:
    ld a, [hl-]
    ld c, a
    add a
    add a
    add a
    add a
    add c
    add [hl]
    ld c, a
    ld b, $00
    ld hl, $76e7
    add hl, bc
    res 7, [hl]
    ld b, $10
    rst $30
    jr z, jr_000_37b6

    ld a, [hl]
    call Call_000_2110

jr_000_37b6:
    ld b, $20
    rst $30
    jr z, jr_000_37be

    call Call_000_212a

jr_000_37be:
    ld a, [$75a7]
    and $40
    jr z, jr_000_37ca

    ld a, $01
    ld [$76c4], a

jr_000_37ca:
    ret


    ld d, h
    ld d, d
    ld b, c
    ld c, c
    ld c, [hl]
    ld b, l
    ld d, d
    ld hl, $1006
    rst $30
    ret z

    ld a, [$75c0]
    cp $00
    jp nz, Jump_000_37e2

    call Call_000_300c

Jump_000_37e2:
    ld hl, $37e8
    jp Jump_000_2074


    nop
    ld b, $28
    nop
    nop
    ld bc, $0710
    nop
    nop
    add hl, bc
    nop
    inc bc
    inc d
    dec bc
    ld a, [bc]
    ld bc, $1400
    ld b, e
    ld l, a
    ld h, h
    ld h, l
    ld [hl], e
    nop
    ld [$0608], sp
    ld b, b
    inc l
    inc c
    rst $38
    nop
    rst $20
    db $76
    inc c
    rst $38
    nop
    ei
    db $76
    inc c
    rst $38
    nop
    rrca
    ld [hl], a
    inc c
    rst $38
    nop
    inc hl
    ld [hl], a
    inc c
    rst $38
    nop
    scf
    ld [hl], a
    inc c
    rst $38
    nop
    ld c, e
    ld [hl], a
    inc c
    rst $38
    nop
    ld e, a
    ld [hl], a
    inc c
    rst $38
    nop
    ld [hl], e
    ld [hl], a
    inc c
    rst $38
    nop
    add a
    ld [hl], a
    add hl, bc
    nop
    ld c, $14
    inc b
    ld [$0608], sp
    inc l
    add hl, hl
    inc c
    rst $38
    ld [bc], a
    adc l
    db $76
    inc c
    rst $38
    ld [bc], a
    sbc [hl]
    db $76
    ld b, $1c
    jr z, jr_000_384b

jr_000_384b:
    ld bc, $2251
    ld [bc], a
    inc bc
    dec b
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld bc, $6153
    db $76
    ld h, l
    nop
    ld [bc], a
    ld l, [hl]
    add hl, de
    ld c, a
    ld c, e
    nop
    ld [bc], a
    ld l, [hl]
    add hl, de
    ld b, l
    ld a, b
    ld l, c
    ld [hl], h
    nop
    ld b, $d3
    scf
    ld b, $b6
    dec l
    nop
    ld bc, $2251
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    ld b, $c0
    ld [hl], l
    ld bc, $6f43
    ld h, h
    ld h, l
    ld [hl], e
    nop
    ld c, $d0
    db $76
    jp $4438


    ld h, l
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    nop
    ld c, $cf
    db $76
    ret


    jr c, @+$43

    ld h, h
    ld h, h
    nop
    ld c, $d0
    db $76
    rst $08
    jr c, @+$47

    ld h, h
    ld l, c
    ld [hl], h
    nop
    ld c, $eb
    ld [hl], a
    sub a
    ld a, [hl-]
    ld d, e
    ld h, l
    ld l, [hl]
    ld h, h
    nop
    ld c, $ec
    ld [hl], a
    cp h
    ld a, [hl-]
    ld d, d
    ld h, l
    ld h, e
    ld h, l
    ld l, c
    db $76
    ld h, l
    nop
    inc bc
    add sp, $37
    ld b, l
    ld a, b
    ld l, c
    ld [hl], h
    nop
    ld b, $99
    ld a, $00
    ld hl, $38d5
    jp Jump_000_2074


    ld hl, $38fc
    jp Jump_000_2074


    ld hl, $39b3
    jp Jump_000_2074


    ld bc, $2251
    ld [bc], a
    inc bc
    dec b
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld bc, $6544
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    nop
    ld [bc], a
    and $2e
    ld c, a
    ld c, e
    nop
    inc bc
    add sp, $37
    ld b, l
    ld a, b
    ld l, c
    ld [hl], h
    nop
    ld b, $b6
    dec l
    ld b, $99
    ld a, $00
    nop
    and a
    dec [hl]
    nop
    nop
    ld bc, $040e
    nop
    nop
    ld a, [bc]
    ld bc, $1400
    ld c, [hl]
    ld h, l
    ld [hl], a
    jr nz, jr_000_3952

    ld l, a
    ld h, h
    ld h, l
    nop
    dec bc
    ld h, h
    add hl, sp
    nop
    inc bc
    inc d
    inc bc
    ld [$0c08], sp
    rst $38
    nop
    adc l
    db $76
    dec bc
    ret z

    halt
    ld b, $14
    inc bc
    ld [$0608], sp
    ld d, e
    ld hl, $3f06
    ld hl, $040c
    nop
    jp nc, Jump_000_0676

    ld e, [hl]
    ld hl, $6006
    ld [hl], $0b
    rst $00
    halt
    add hl, bc
    inc d
    inc bc
    ld [$0c08], sp
    ld b, $00
    xor a
    db $76
    ld [$0808], sp
    dec bc
    ld h, h
    add hl, sp
    ld bc, $120d

jr_000_3952:
    dec b
    inc c
    rst $38
    nop
    rst $20
    db $76
    inc c
    rst $38
    nop
    ld hl, sp+$76
    inc c
    rst $38
    nop
    add hl, bc
    ld [hl], a
    nop
    ld bc, $2100
    xor a
    db $76
    ld de, $76b8
    ld c, $08

jr_000_396d:
    ld a, [hl+]
    and $7f
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_396d

    ld hl, $76b8
    ld b, $08

jr_000_397a:
    ld de, $39a2
    ld c, $00

jr_000_397f:
    ld a, [de]

Jump_000_3980:
    cp [hl]
    jr z, jr_000_3988

    inc de
    inc c
    and a
    jr nz, jr_000_397f

jr_000_3988:
    ld a, c
    and $0f
    ld [hl+], a
    dec b
    jr nz, jr_000_397a

    ld hl, $76b8
    ld de, $76b8
    ld c, $04

jr_000_3997:
    ld a, [hl+]
    swap a
    or [hl]
    inc hl
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3997

    ret


    jr nc, jr_000_39d5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    add hl, de
    dec [hl]
    nop
    nop
    ld bc, $040e
    nop
    nop
    ld a, [bc]
    ld bc, $1400
    ld c, [hl]
    ld h, l
    ld [hl], a
    jr nz, jr_000_3a09

    ld l, a
    ld h, h
    ld h, l
    nop
    dec bc
    ld h, h
    add hl, sp
    nop
    inc bc
    inc d
    inc bc
    ld [$0c08], sp
    rst $38

jr_000_39d5:
    nop
    adc l
    db $76
    dec bc
    ret z

    halt
    ld b, $14
    inc bc
    ld [$0608], sp
    ld d, e
    ld hl, $3f06
    ld hl, $040c
    nop
    jp nc, Jump_000_0676

    ld e, [hl]
    ld hl, $9606
    ld [hl], $0b
    rst $00
    halt
    add hl, bc
    inc d
    inc bc
    ld [$0c08], sp
    ld b, $00
    xor a
    db $76
    ld [$0808], sp
    dec bc
    ld h, h
    add hl, sp
    ld bc, $120d

jr_000_3a09:
    dec b
    inc c
    rst $38
    nop
    rst $20
    db $76
    inc c
    rst $38
    nop
    ld hl, sp+$76
    inc c
    rst $38
    nop
    add hl, bc
    ld [hl], a
    nop
    ld bc, $2251
    ld [bc], a
    inc bc
    dec b
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld bc, $6153
    db $76
    ld h, l
    nop
    ld [bc], a
    ld l, [hl]
    add hl, de
    ld c, a
    ld c, e
    nop
    ld [bc], a
    ld l, [hl]
    add hl, de
    ld b, l
    ld a, b
    ld l, c
    ld [hl], h
    nop
    ld b, $42
    ld a, [hl-]
    ld b, $b6
    dec l
    ld b, $99
    ld a, $00
    ld b, $10
    rst $30
    ret z

    ld a, [$75c0]
    cp $00
    jp nz, Jump_000_3a51

    call Call_000_3a57

Jump_000_3a51:
    ld hl, $37e8
    jp Jump_000_2074


Call_000_3a57:
    ld hl, $75c5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    ld de, $6000
    add hl, de
    ld e, [hl]
    inc hl
    ld a, [hl]
    inc hl
    add $80
    ld d, a
    inc de
    ld a, [hl]
    and $0f
    sub $05
    push af
    push de
    call Call_000_3dd9
    pop de
    ld hl, $76d2
    ld c, $0c

jr_000_3a7d:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3a7d

    ld hl, $76b8
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop af
    call Call_000_3dec
    ret


    ld de, $3bda
    xor a
    call Call_000_3b55
    call Call_000_3b14
    call Call_000_102d
    ld a, $03
    rst $18
    ld hl, $76d1
    ld bc, $0100
    call $59e7
    ld a, $02
    rst $18
    call Call_000_102a
    ld hl, $3870
    jp Jump_000_2074


    ld de, $3b8b
    xor a
    call Call_000_3b55
    ld a, $01
    ldh [rKEY1], a
    stop
    nop
    ld a, $03
    rst $18
    call $5a29
    ld a, $01
    ldh [rKEY1], a
    stop
    nop
    ld a, b
    or c
    jr z, jr_000_3b06

    ld de, $76d2
    ld c, $0c

jr_000_3ae0:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3ae0

    ld de, $76b8
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld de, $3bc3
    ld a, $78
    call Call_000_3b55
    call Call_000_300c
    ld hl, $37e8
    jp Jump_000_2074


jr_000_3b06:
    ld de, $3ba9
    ld a, $78
    call Call_000_3b55
    ld hl, $3870
    jp Jump_000_2074


Call_000_3b14:
    ld hl, $75c5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    ld de, $6000
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    inc de
    ld a, [hl]
    and $0f
    ld a, a
    rst $18
    ld hl, $76d1
    ld c, $10

jr_000_3b31:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_3b31

    ret


Call_000_3b38:
    ld a, $09
    rst $18
    ld hl, $76ca
    ld a, [hl]
    inc [hl]
    ld hl, $4000
    add a
    add a
    ld e, a
    ld d, $00
    add hl, de
    ld d, h
    ld e, l
    call Call_000_3564
    ld a, [de]
    and a
    ret nz

    ld [$76ca], a
    ret


Call_000_3b55:
    push af
    push de
    call Call_000_231d
    ld h, $00
    ld l, $06
    ld d, $14
    ld e, $04
    call Call_000_258d
    pop de
    call Call_000_2413
    rst $20
    ldh a, [rLCDC]
    and $fd
    ldh [rLCDC], a
    ld a, $03
    rst $18
    call $47e6
    pop af
    and a
    ret z

jr_000_3b79:
    push af

jr_000_3b7a:
    ldh a, [rLY]
    cp $90
    jr nz, jr_000_3b7a

jr_000_3b80:
    ldh a, [rLY]
    cp $90
    jr z, jr_000_3b80

    pop af
    dec a
    jr nz, jr_000_3b79

    ret


    ld [bc], a
    rlca
    jr nz, jr_000_3be1

    ld h, l
    ld h, e
    ld h, l
    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2e
    ld l, $0a
    jr nz, jr_000_3bbd

    ld d, b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_000_3bfc

    ld h, c
    ld l, c
    ld [hl], h
    nop
    ld [bc], a
    rlca
    jr nz, jr_000_3bcd

    jr nz, jr_000_3bcf

    ld d, d
    ld h, l
    ld h, e
    ld h, l
    ld l, c
    db $76
    ld h, l
    ld a, [bc]
    jr nz, jr_000_3bd9

    jr nz, jr_000_3bdb

    ld b, [hl]
    ld h, c

jr_000_3bbd:
    ld l, c
    ld l, h
    ld h, l
    ld h, h
    ld hl, $0200
    rlca
    jr nz, @+$22

    jr nz, @+$22

    ld d, d
    ld h, l
    ld h, e
    ld h, l

jr_000_3bcd:
    ld l, c
    db $76

jr_000_3bcf:
    ld h, l
    ld a, [bc]
    jr nz, jr_000_3bf3

    jr nz, jr_000_3bf5

    jr nz, @+$22

    ld c, a
    ld c, e

jr_000_3bd9:
    nop
    ld [bc], a

jr_000_3bdb:
    rlca
    jr nz, jr_000_3c31

    ld h, l
    ld l, [hl]
    ld h, h

jr_000_3be1:
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2e
    ld l, $0a
    jr nz, jr_000_3c0a

    ld d, b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_000_3c49

    ld h, c

jr_000_3bf3:
    ld l, c
    ld [hl], h

jr_000_3bf5:
    nop

Call_000_3bf6:
    ld hl, $76d2

jr_000_3bf9:
    ld a, [hl+]
    and a
    ret z

jr_000_3bfc:
    cp $20
    jr z, jr_000_3bf9

    ret


Call_000_3c01:
Jump_000_3c01:
    ld a, [$75a5]
    cp $11
    ret nz

    ld a, $08
    rst $18

jr_000_3c0a:
    ld de, $41aa
    ld a, $01
    ldh [rVBK], a
    ld hl, $9000
    ld bc, $0800
    call Call_000_3c2b
    ld hl, $8800
    ld bc, $0800
    call Call_000_3c2b
    ld a, $01
    rst $18
    ld a, $00
    ldh [rVBK], a
    ret


Call_000_3c2b:
jr_000_3c2b:
    ld a, [de]
    inc de
    ld [hl+], a
    dec bc
    ld a, c
    or b

jr_000_3c31:
    jr nz, jr_000_3c2b

    ret


Jump_000_3c34:
    ld a, [$75a5]
    cp $11
    ret nz

    ld a, $08
    rst $18
    ld de, $4040
    ld hl, $7000
    inc de
    inc de
    ld c, $12

jr_000_3c47:
    ld b, $14

jr_000_3c49:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_3c49

    ld a, l
    add $0b
    ld l, a
    inc hl
    ld b, $20
    ld a, $0b

jr_000_3c58:
    ld [hl+], a
    dec b
    jr nz, jr_000_3c58

    dec c
    jr nz, jr_000_3c47

    ld a, $01
    rst $18
    ret


Jump_000_3c63:
    or a

jr_000_3c64:
    rra
    jr nc, jr_000_3c68

    add hl, de

jr_000_3c68:
    sla e
    rl d
    or a
    jr nz, jr_000_3c64

    ret


Jump_000_3c70:
    ld a, [$75a8]
    and b
    cp b
    ret z

    ld a, [$75a7]
    and b
    and $0f
    call nz, Call_000_3ea3
    ld a, [$75a7]
    and b
    and $f0
    call nz, Call_000_3ed2
    ld a, [$75a7]
    and b
    ret


Jump_000_3c8d:
    ld a, $03
    rst $18

jr_000_3c90:
    ldh a, [rLY]
    cp $90
    jr nz, jr_000_3c90

    ld a, [$75a7]
    ld [$75a8], a
    ld c, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    and $0f
    swap a
    ld b, a
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and $0f
    or b
    cpl
    ld [$75a7], a
    cp c
    jr z, jr_000_3cc9

    xor a
    ld [$75a9], a
    ret


jr_000_3cc9:
    ld a, [$75aa]
    ld c, a
    ld a, [$75a9]
    dec a
    and c
    ld [$75a9], a
    ret


Jump_000_3cd6:
    ld [$7fe1], a
    ret


Jump_000_3cda:
    ldh a, [rLCDC]
    or $81
    ldh [rLCDC], a

jr_000_3ce0:
    ldh a, [rLY]
    cp $90
    jr nz, jr_000_3ce0

    ldh a, [rLCDC]
    and $7e
    ldh [rLCDC], a
    ret


    ld a, $81
    ldh [rLCDC], a
    ret


Call_000_3cf2:
Jump_000_3cf2:
    ld hl, $ff80
    ld a, $3e
    ld [hl+], a
    ld a, $75
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $46
    ld [hl+], a
    ld a, $3e
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    ld a, $3d
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $fd
    ld [hl+], a
    ld [hl], $c9
    jp $ff80


Call_000_3d15:
    rst $10
    ld a, $01
    rst $18
    call Call_000_3d1f
    jp Jump_000_3d40


Call_000_3d1f:
    ld a, [$75a5]
    cp $11
    ret nz

    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0400

jr_000_3d2f:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3d2f

    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_3d2f

    ld a, $00
    ldh [rVBK], a
    ret


Call_000_3d40:
Jump_000_3d40:
    ld hl, $9800
    ld bc, $0400

jr_000_3d46:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3d46

    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_3d46

    ret


Call_000_3d53:
    ld a, [$75a5]
    cp $11
    jr nz, jr_000_3d64

    rst $20
    ld hl, $7480
    ld a, $03
    rst $18
    call $5984

jr_000_3d64:
    ldh a, [rLCDC]
    or $81
    ldh [rLCDC], a
    ld a, $1b
    ldh [rBGP], a
    ld a, $ff
    ldh [rOBP0], a
    ld a, $04
    ldh [rOBP1], a
    ld a, $0f

jr_000_3d78:
    push af
    rst $20
    pop af
    dec a
    jr nz, jr_000_3d78

    ret


Call_000_3d7f:
    ld a, [$75a5]
    cp $11
    ret nz

    ldh a, [rLCDC]
    or $81
    ldh [rLCDC], a
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld a, $0f

jr_000_3d95:
    push af
    rst $20
    pop af
    dec a
    jr nz, jr_000_3d95

    ret


Call_000_3d9c:
    ld de, $7480
    push hl
    call Call_000_3da4
    pop hl

Call_000_3da4:
    ld c, $40

jr_000_3da6:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3da6

    ret


Call_000_3dad:
    ld de, $c000
    ld c, $08
    call Call_000_09d3
    ld de, $d000
    ld c, $09
    jp Jump_000_09d3


Call_000_3dbd:
Jump_000_3dbd:
    ld de, $c000
    ld c, $08
    call Call_000_09d6
    ld a, [$c000]
    and a
    jr nz, jr_000_3dd1

    ld a, [$c001]
    cp $e3
    ret c

jr_000_3dd1:
    ld de, $d000
    ld c, $09
    jp Jump_000_09d6


Call_000_3dd9:
    add a
    add $0a
    ld c, a
    ld de, $c000
    push bc
    call Call_000_09d3
    pop bc
    inc c
    ld de, $d000
    jp Jump_000_09d3


Call_000_3dec:
Jump_000_3dec:
    add a
    add $0a
    ld c, a
    ld de, $c000
    push bc
    call Call_000_09d6
    pop bc
    inc c
    ld de, $d000
    jp Jump_000_09d6


Call_000_3dff:
    ld d, h
    ld e, l
    ld hl, $e000

jr_000_3e04:
    ld bc, $ffee
    add hl, bc
    ld a, [hl+]
    and a
    ld a, [hl-]
    jr nz, jr_000_3e10

    and a
    jr z, jr_000_3e04

jr_000_3e10:
    ld c, $12

jr_000_3e12:
    ld a, [hl]
    ld [de], a
    inc de
    xor a
    ld [hl+], a
    dec c
    jr nz, jr_000_3e12

    ret


    ld bc, $2251
    ld [bc], a
    inc bc
    dec b
    ld a, [bc]
    ld [bc], a
    cp a
    ld [hl], l
    ld bc, $6153
    db $76
    ld h, l
    nop
    ld [bc], a
    ld l, [hl]
    add hl, de
    ld e, c
    ld h, l
    ld [hl], e
    nop
    ld [bc], a
    ld l, [hl]
    add hl, de
    ld c, [hl]
    ld l, a
    nop
    ld b, $d0
    daa
    ld b, $b6
    dec l
    nop
    ld bc, $2251
    inc bc
    ld bc, $0e04
    inc bc
    cp a
    ld [hl], l
    ld bc, $7453
    ld h, c
    ld [hl], d
    ld [hl], h
    nop
    ld c, $cc
    db $76
    ld h, c
    add hl, de
    ld b, e
    ld l, a
    ld h, h
    ld h, l
    ld [hl], e
    jr nz, jr_000_3eab

    ld l, [hl]
    nop
    ld [bc], a
    ld d, a
    add hl, de
    ld b, e
    ld l, a
    ld h, h
    ld h, l
    ld [hl], e
    jr nz, jr_000_3eb7

    ld h, [hl]
    ld h, [hl]
    nop
    inc bc
    cp l
    ld sp, $7845
    ld l, c
    ld [hl], h
    nop
    add hl, bc
    nop
    ld c, $14
    inc b
    ld [$0d08], sp
    nop
    inc c
    rst $38
    ld [bc], a
    adc l
    db $76
    ld b, $85
    ld a, $00
    ld hl, $31bd
    ld b, $20
    rst $30
    jp nz, Jump_000_2074

    ret


    ld hl, $336f
    ld b, $20
    rst $30
    jp nz, Jump_000_2074

    ret


    ld hl, $37e8
    ld b, $20
    rst $30
    jp nz, Jump_000_2074

    ret


Call_000_3ea3:
    push af
    push bc
    ld a, [$7a6d]
    and a
    jr z, jr_000_3ecf

jr_000_3eab:
    ld a, $80
    ldh [rNR52], a
    ld a, $8f
    ldh [rNR52], a
    ld a, $ff
    ldh [rNR51], a

jr_000_3eb7:
    ld a, $77
    ldh [rNR50], a
    ld a, $14
    ldh [rNR10], a
    ld a, $57
    ldh [rNR11], a
    ld a, $f2
    ldh [rNR12], a
    ld a, $35
    ldh [rNR13], a
    ld a, $85
    ldh [rNR14], a

jr_000_3ecf:
    pop bc
    pop af
    ret


Call_000_3ed2:
    push af
    push bc
    ld a, [$7a6d]
    and a
    jr z, jr_000_3efe

    ld a, $80
    ldh [rNR52], a
    ld a, $8f
    ldh [rNR52], a
    ld a, $ff
    ldh [rNR51], a
    ld a, $77
    ldh [rNR50], a
    ld a, $0a
    ldh [rNR10], a
    ld a, $57
    ldh [rNR11], a
    ld a, $f2
    ldh [rNR12], a
    ld a, $70
    ldh [rNR13], a
    ld a, $87
    ldh [rNR14], a

jr_000_3efe:
    pop bc
    pop af
    ret


    and h
    inc d
    jp $e518


    inc e
    db $e4
    jr nz, jr_000_3f0d

    add hl, hl
    ld b, e
    dec l

jr_000_3f0d:
    ld h, e
    ld sp, $39a4
    call nz, $e541
    ld b, l
    dec b
    ld c, d
    ld h, $52
    ld b, [hl]
    ld d, [hl]
    ld h, a
    ld e, d
    add a
    ld e, [hl]

jr_000_3f1f:
    add a
    ld e, [hl]
    add a
    ld e, [hl]
    ld h, a
    ld e, d
    ld b, [hl]
    ld d, [hl]
    ld h, $52
    dec b
    ld c, d
    push hl
    ld b, l
    call nz, $a441
    add hl, sp
    ld h, e
    ld sp, $2d43
    inc bc
    add hl, hl
    db $e4
    jr nz, jr_000_3f1f

    inc e
    jp $a418


    inc d
    and h
    inc d
    and h
    inc d
    jp $e518


    inc e
    db $e4
    jr nz, jr_000_3f4d

    add hl, hl
    ld b, e
    dec l

jr_000_3f4d:
    ld h, e
    ld sp, $39a4
    call nz, $e541
    ld b, l
    dec b
    ld c, d
    ld h, $52
    ld b, [hl]
    ld d, [hl]
    ld h, a
    ld e, d
    add a
    ld e, [hl]

jr_000_3f5f:
    add a
    ld e, [hl]
    add a
    ld e, [hl]
    ld h, a
    ld e, d
    ld b, [hl]
    ld d, [hl]
    ld h, $52
    dec b
    ld c, d
    push hl
    ld b, l
    call nz, $a441
    add hl, sp
    ld h, e
    ld sp, $2d43
    inc bc
    add hl, hl
    db $e4
    jr nz, jr_000_3f5f

    inc e
    jp $a418


    inc d
    and h
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3fe5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
