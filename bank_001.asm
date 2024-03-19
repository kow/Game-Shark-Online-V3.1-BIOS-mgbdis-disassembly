; Disassembly of "gameshark.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld d, e
    ld h, l
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld a, [hl-]
    jr nz, jr_001_400a

jr_001_400a:
    ld d, d
    ld h, l
    ld h, c
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld a, [hl-]
    jr nz, jr_001_4014

jr_001_4014:
    push af
    push hl
    push de
    push bc
    ld hl, $0805
    ld de, $4000
    call Call_000_00ce
    pop bc
    pop de
    pop hl
    pop af
    ret


    push af
    push hl
    push de
    push bc
    ld hl, $0805
    ld de, $400a
    call Call_000_00ce
    pop bc
    pop de
    pop hl
    pop af
    ret


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

jr_001_4048:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4048

    ld a, [$7a9f]
    cp $a5
    jr z, jr_001_4064

    cp $a9
    jr z, jr_001_406b

    cp $99
    jr z, jr_001_4072

    ld a, l
    ld [$990e], a
    pop hl
    pop af
    ret


jr_001_4064:
    ld a, l
    ld [$9912], a
    pop hl
    pop af
    ret


jr_001_406b:
    ld a, l
    ld [$9913], a
    pop hl
    pop af
    ret


jr_001_4072:
    ld a, l
    ld [$9911], a
    pop hl
    pop af
    ret


Call_001_4079:
    ld hl, $d200
    ld de, $0008
    jr jr_001_408d

Call_001_4081:
    ld hl, $d202
    ld e, [hl]
    inc l
    ld a, [hl]
    and $7f
    ld d, a
    ld hl, $d208

jr_001_408d:
    ld b, [hl]
    push hl
    push de
    call Call_000_0003
    pop de
    pop hl
    inc hl
    dec de
    ld a, e
    or d

Call_001_4099:
    jr nz, jr_001_408d

    ret


    call Call_000_00f2
    ld a, $02
    ret nz

    ld l, c
    ret


    ld bc, $0005

jr_001_40a7:
    push bc
    push hl
    call Call_001_40f5
    call Call_000_1018
    jr nz, jr_001_40e2

    call Call_000_101b
    jr nz, jr_001_40e2

    pop de
    push de
    call Call_001_411c
    call Call_000_1027
    ld a, [$d309]
    and $0f
    cp $0f
    call z, Call_000_09d9
    call Call_000_00f8
    ld a, [$d30b]
    pop hl
    pop bc
    ld c, $05
    and $80
    jr z, jr_001_40a7

    ld a, [$d309]
    and $0f
    cp $0f
    call nz, Call_000_09d9
    cp a
    ret


jr_001_40e2:
    call Call_000_000b
    pop hl
    pop bc
    dec c
    jr nz, jr_001_40a7

    inc c
    ret


Call_001_40ec:
    ld hl, $d308
    ld de, $0008
    jp Jump_001_410d


Call_001_40f5:
    ld de, $0071
    call Call_000_06ea
    call Call_000_0033
    call Call_001_40ec
    ld hl, $d30a
    ld e, [hl]
    inc hl
    ld a, [hl]
    and $7f
    ld d, a
    ld hl, $d310

Jump_001_410d:
jr_001_410d:
    push hl
    push de
    call Call_000_00f2
    pop de
    pop hl
    ld [hl], c
    inc hl
    dec de
    ld a, d
    or e
    jr nz, jr_001_410d

    ret


Call_001_411c:
    ld hl, $d308
    ld a, [hl+]
    ld e, $00
    ld a, [hl+]
    and $0f
    adc d
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    and $7f
    ld b, a
    ld hl, $d310

jr_001_4130:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_001_4130

    ret


Call_001_4139:
    ld de, $00ad
    jp Jump_000_06ea


    push hl
    push de
    push bc
    ld hl, $0071
    call Call_000_06e3
    call Call_001_4139
    pop bc
    pop de
    pop hl
    call Call_001_4079
    call Call_001_4081
    ret


    ld hl, $d200
    ld e, [hl]
    inc l
    ld d, $00
    ld b, $05

jr_001_415e:
    ld a, [hl+]
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    dec b
    jr nz, jr_001_415e

    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ret


    ld hl, $d200
    ld a, [$7a52]
    ld [hl+], a
    ld [hl], b
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


    ld a, d
    and $7f
    ld d, a
    ld hl, $d200
    ld a, e
    add $07
    ld c, a
    adc d
    sub c
    ld b, a
    ld e, [hl]
    inc l
    ld d, $00

jr_001_4191:
    ld a, [hl+]
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_001_4191

    ld hl, $d204
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ret


    ld hl, $d308
    ld d, $00
    ld b, $05
    ld e, [hl]
    inc l

jr_001_41ad:
    ld a, [hl+]
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    dec b
    jr nz, jr_001_41ad

    ld a, [hl+]
    ld h, [hl]
    sub e
    ld l, a
    ld a, h
    sbc d
    or l
    ret


    ld hl, $d30a
    ld a, [hl+]
    add $08
    ld e, a
    ld a, [hl+]
    adc $00
    and $07
    ld d, a
    xor a
    ld c, [hl]
    ld [hl+], a
    ld b, [hl]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    push bc
    ld hl, $d308
    ld bc, $0000
    push de

jr_001_41da:
    ld a, [hl+]
    add c
    ld c, a
    adc b
    sub c
    ld b, a
    dec de
    ld a, e
    or d
    jr nz, jr_001_41da

    pop de
    pop hl
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    or c
    ret


    ret


    ret


    ld a, $05
    ld [$7fe0], a
    ld hl, $c000
    ld de, $6000
    ld bc, $1000
    call Call_001_5c06
    ld a, $01
    ld [$7fe0], a
    ret


    ld a, $05
    ld [$7fe0], a
    ld de, $c000
    ld hl, $6000
    ld bc, $1000
    call Call_001_5c06
    ld a, $01
    ld [$7fe0], a
    ret


    ld a, [$7a22]
    cp $11
    jr z, jr_001_4226

    ret


jr_001_4226:
    ld c, $00
    ld hl, $6080

jr_001_422b:
    ld a, c
    ldh [rBCPS], a
    ldh a, [rBCPD]
    ld [hl+], a
    inc c
    ld a, c
    cp $40
    jr nz, jr_001_422b

    ld c, $00

jr_001_4239:
    ld a, c
    ldh [rOCPS], a
    ldh a, [rOCPD]
    ld [hl+], a
    inc c
    ld a, c
    cp $40
    jr nz, jr_001_4239

    ret


    ld hl, $6100
    ld de, $fe00
    ld c, $a0

jr_001_424e:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_001_424e

    ret


    ld a, [$7a22]
    cp $11
    jr nz, jr_001_426f

    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld de, $6520
    ld bc, $02e0
    call Call_000_007a
    xor a
    ldh [rVBK], a

jr_001_426f:
    ld hl, $9800
    ld de, $6240
    ld bc, $02e0
    jp Jump_000_007a


    ld hl, $8000
    ld de, $6800
    ld bc, $0800
    jp Jump_000_007a


    ld a, $07
    ld [$7fe0], a
    ld hl, $8800
    ld de, $6000
    ld bc, $1000
    jp Jump_000_007a


    ld a, $06
    ld [$7fe0], a
    ld hl, $0000
    add hl, sp
    ld a, h
    ld hl, $61a0
    cp $ff
    jr nz, jr_001_42ad

    ld l, $aa
    jr jr_001_42c7

jr_001_42ad:
    ld de, $7fc0
    ld c, $06

jr_001_42b2:
    dec e
    ld a, [de]
    ld [hl+], a
    dec c
    jr nz, jr_001_42b2

    ld a, [$7a26]
    ld [hl+], a
    ld e, a
    ld a, [$7a27]
    ld [hl+], a
    ld d, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl+], a

jr_001_42c7:
    ld de, $43de

jr_001_42ca:
    ld a, [de]
    inc de
    cp $80
    jr z, jr_001_42d5

    ld c, a
    ld a, [c]
    ld [hl+], a
    jr jr_001_42ca

jr_001_42d5:
    ld a, [$7a22]
    cp $11
    jr nz, jr_001_42ea

    ld de, $4416

jr_001_42df:
    ld a, [de]
    inc de
    cp $80
    jr z, jr_001_42ea

    ld c, a
    ld a, [c]
    ld [hl+], a
    jr jr_001_42df

jr_001_42ea:
    ld a, $06
    ld [$7fe0], a
    ld de, $ff80
    ld hl, $6000
    ld c, $80

jr_001_42f7:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_001_42f7

    ret


    ld a, [$7a22]
    cp $11
    jr z, jr_001_4306

    ret


jr_001_4306:
    ld c, $00
    ld hl, $6080

jr_001_430b:
    ld a, c
    ldh [rBCPS], a
    ld a, [hl+]
    ldh [rBCPD], a
    inc c
    ld a, c
    cp $40
    jr nz, jr_001_430b

    ld c, $00

jr_001_4319:
    ld a, c
    ldh [rOCPS], a
    ld a, [hl+]
    ldh [rOCPD], a
    inc c
    ld a, c
    cp $40
    jr nz, jr_001_4319

    ret


    ld de, $6100
    ld hl, $fe00
    ld c, $a0

jr_001_432e:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_001_432e

    ret


    ld a, [$7a22]
    cp $11
    jr nz, jr_001_434f

    ld a, $01
    ldh [rVBK], a
    ld hl, $6520
    ld de, $9800
    ld bc, $02e0
    call Call_000_007a
    xor a
    ldh [rVBK], a

jr_001_434f:
    ld hl, $6240
    ld de, $9800
    ld bc, $02e0
    jp Jump_000_007a


    ld a, $06
    ld [$7fe0], a
    ld hl, $6800
    ld de, $8000
    ld bc, $0800
    jp Jump_000_007a


    ld a, $07
    ld [$7fe0], a
    ld hl, $6000
    ld de, $8800
    ld bc, $1000
    jp Jump_000_007a


    ld hl, $ff80
    ld de, $6000
    ld c, $80

jr_001_4385:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_001_4385

    ld a, $06
    ld [$7fe0], a
    ld hl, $0000
    add hl, sp
    ld a, h
    ld hl, $61a0
    cp $ff
    jr nz, jr_001_43a0

    ld l, $aa
    jr jr_001_43ba

jr_001_43a0:
    ld de, $7fc0
    ld c, $06

jr_001_43a5:
    dec e
    ld a, [hl+]
    ld [de], a
    dec c
    jr nz, jr_001_43a5

    ld a, [hl+]
    ld [$7a26], a
    ld e, a
    ld a, [hl+]
    ld [$7a27], a
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a

jr_001_43ba:
    ld de, $43de

jr_001_43bd:
    ld a, [de]
    inc de
    cp $80
    jr z, jr_001_43c8

    ld c, a
    ld a, [hl+]
    ld [c], a
    jr jr_001_43bd

jr_001_43c8:
    ld a, [$7a22]
    cp $11
    jr nz, jr_001_43dd

    ld de, $4416

jr_001_43d2:
    ld a, [de]
    inc de
    cp $80
    jr z, jr_001_43dd

    ld c, a
    ld a, [hl+]
    ld [c], a
    jr jr_001_43d2

jr_001_43dd:
    ret


    nop
    ld bc, $0402
    dec b
    ld b, $07
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    db $10
    ld de, $1312
    inc d
    ld d, $17
    jr jr_001_4412

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $20
    ld hl, $2322
    inc h
    dec h
    ld h, $30
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_001_4448

    ld a, [hl-]
    dec sp
    inc a

jr_001_4412:
    dec a
    ld a, $3f
    add b
    ld d, [hl]
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld [hl], b
    ld c, l
    ld c, a
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    add b

Call_001_4424:
    ld de, $7a00
    ld b, $07

jr_001_4429:
    ld a, [de]
    inc de
    cp [hl]
    ret nz

    inc hl
    dec b
    jr nz, jr_001_4429

    ret


Call_001_4432:
    push af
    push bc

jr_001_4434:
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

jr_001_4444:
    ldh a, [rSTAT]
    and $03

jr_001_4448:
    jr nz, jr_001_4444

    ld a, [de]
    inc de
    and a
    jr z, jr_001_445a

    cp $0a
    jr z, jr_001_4456

    ld [hl+], a
    jr jr_001_4444

jr_001_4456:
    pop hl
    inc h
    jr jr_001_4434

jr_001_445a:
    pop hl
    pop bc
    pop af
    ret


    call Call_000_001b
    ld de, $15bd
    ld hl, $0502
    call Call_000_1072
    ld a, [$7a15]
    add $0e
    ld [$7aa2], a
    ld [$7a9b], a
    call Call_000_106c
    ld a, $03
    ld hl, $1087
    call Call_000_1063
    jp Jump_000_1368


    ld a, [$7a15]
    add $0e
    ld [$7aa2], a
    ld [$7a9b], a
    ld a, $03
    ld hl, $1084
    call Call_000_1063
    call Call_000_106f
    jp Jump_000_1368


    ld d, b
    ld c, a
    ld c, e
    ld b, l
    ld d, b
    ld c, c
    ld c, [hl]
    ld a, [$7fee]
    bit 4, a
    ret nz

    ld hl, $44d2
    call Call_001_4424
    jr z, jr_001_44b8

    ld hl, $449c
    call Call_001_4424
    ret nz

jr_001_44b8:
    call Call_000_001b
    ld de, $44d2
    ld hl, $0601
    call Call_001_4432
    ld hl, $0800
    call Call_001_4432

jr_001_44ca:
    ld a, [$7fee]
    bit 4, a
    jr z, jr_001_44ca

    ret


    ld d, b
    ld c, a
    ld c, e
    ld b, l
    ld c, l
    ld c, a
    ld c, [hl]
    jr nz, jr_001_4542

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_4546

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop
    jr nz, jr_001_4537

    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_001_4553

    ld l, [hl]
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    ld a, [bc]
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$75

    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_001_456e

    ld [hl], e
    jr nz, @+$6b

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld a, [bc]
    ld l, a
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_001_4583

    ld l, a
    ld [hl], e
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$64

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    ld a, [bc]
    jr nz, jr_001_4544

    jr nz, jr_001_459f

    ld l, a
    ld [hl], l
    jr nz, @+$65

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld [hl], l
    ld h, l
    ld l, $00
    add b
    ld b, b
    jr nz, @+$12

jr_001_4537:
    ld [$0204], sp
    ld bc, $bf7f
    rst $18
    rst $28
    rst $30
    ei
    db $fd

jr_001_4542:
    cp $f5

jr_001_4544:
    ld a, $01

jr_001_4546:
    ld [$7fe5], a
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a

jr_001_4553:
    pop af
    push af
    ld [$4000], a
    ld a, $00
    ld [$7fe5], a
    pop af
    ret


Call_001_455f:
    ld a, $04
    ld [$7a52], a
    ld [$7fe0], a
    call Call_001_473e
    ld a, [$7a68]
    push af

jr_001_456e:
    ld a, $01
    ld [$7a68], a
    jr jr_001_457d

Call_001_4575:
    ld a, [$7a68]
    push af
    xor a
    ld [$7a68], a

jr_001_457d:
    ld hl, $7a4c
    ld de, $6000

jr_001_4583:
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $02
    ld [$7a55], a
    inc a
    ld [$7a54], a
    ld a, [$7a22]
    or a
    jr z, jr_001_45a1

    ldh a, [rSVBK]
    ld [$7a50], a
    ld a, $01
    ld [$7a4f], a

jr_001_459f:
    ldh [rSVBK], a

jr_001_45a1:
    ld hl, $c000
    ld bc, $0000

jr_001_45a7:
    ld a, $04
    call Call_001_4805
    or a
    jr z, jr_001_45ba

    ld a, [hl]
    call Call_001_4939
    ld a, [$7a55]
    cp $ff
    jr z, jr_001_461d

jr_001_45ba:
    inc bc
    inc hl
    ld a, h
    cp $e0
    jr nz, jr_001_45a7

    ld a, [$7a22]
    or a
    jr z, jr_001_45d9

    ld hl, $d000
    ld a, [$7a4f]
    cp $07
    jr z, jr_001_45d9

    inc a
    ld [$7a4f], a
    ldh [rSVBK], a
    jr jr_001_45a7

jr_001_45d9:
    ld a, [$7a51]
    or a
    jr z, jr_001_461d

    xor a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    ld bc, $0000

jr_001_45ec:
    ld a, $05
    call Call_001_4805
    or a
    jr z, jr_001_45ff

    ld a, [hl]
    call Call_001_4939
    ld a, [$7a55]
    cp $ff
    jr z, jr_001_461d

jr_001_45ff:
    inc bc
    inc hl
    ld a, h
    cp $c0
    jr nz, jr_001_45ec

    ld a, [$7a51]
    dec a
    ld l, a
    ld a, [$7a53]
    cp l
    jr z, jr_001_461d

    inc a
    ld [$7a53], a
    ld hl, $a000
    call $4543
    jr jr_001_45ec

jr_001_461d:
    pop af
    ld [$7a68], a
    ld hl, $9862

jr_001_4624:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4624

    ld a, $20
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_001_4633:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4633

    ld a, $20
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$7a22]
    or a
    ret z

    ld a, [$7a50]
    ldh [rSVBK], a
    ret


Call_001_464f:
    ld hl, $7a4c
    ld de, $6000
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $02
    ld [$7a55], a
    inc a
    ld [$7a54], a
    ld a, [$7a22]
    or a
    jr z, jr_001_4673

    ldh a, [rSVBK]
    ld [$7a50], a
    ld a, $01
    ld [$7a4f], a
    ldh [rSVBK], a

jr_001_4673:
    ld hl, $c000
    ld bc, $0000
    ld a, c
    ld [$7a56], a
    ld a, b
    ld [$7a57], a
    ld a, l
    ld [$7a58], a
    ld a, h
    ld [$7a59], a
    ret


Call_001_468a:
    ld a, [$7a56]
    ld c, a
    ld a, [$7a57]
    ld b, a
    ld a, [$7a58]
    ld l, a
    ld a, [$7a59]
    ld h, a

jr_001_469a:
    ld a, $04
    call Call_001_4805
    or a
    jr z, jr_001_46be

    inc bc
    inc hl
    ld a, c
    ld [$7a56], a
    ld a, b
    ld [$7a57], a
    ld a, l
    ld [$7a58], a
    ld a, h
    ld [$7a59], a
    dec hl
    ld c, [hl]
    ld a, [$7a4f]
    ld b, a
    ld a, h
    cp $01
    ret


jr_001_46be:
    inc bc
    inc hl
    ld a, h
    cp $e0
    jr nz, jr_001_469a

    ld a, [$7a22]
    or a
    jr z, jr_001_46dd

    ld hl, $d000
    ld a, [$7a4f]
    cp $07
    jr z, jr_001_46dd

    inc a
    ld [$7a4f], a
    ldh [rSVBK], a
    jr jr_001_469a

jr_001_46dd:
    ld a, [$7a51]
    or a
    jr z, jr_001_4732

    xor a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    ld bc, $0000

jr_001_46f0:
    ld a, $05
    call Call_001_4805
    or a
    jr z, jr_001_4714

    inc bc
    inc hl
    ld a, c
    ld [$7a56], a
    ld a, b
    ld [$7a57], a
    ld a, l
    ld [$7a58], a
    ld a, h
    ld [$7a59], a
    dec hl
    ld c, [hl]
    ld a, [$7a53]
    ld b, a
    ld a, h
    cp $01
    ret


jr_001_4714:
    inc bc
    inc hl
    ld a, h
    cp $c0
    jr nz, jr_001_46f0

    ld a, [$7a51]
    dec a
    ld l, a
    ld a, [$7a53]
    cp l
    jr z, jr_001_4732

    inc a
    ld [$7a53], a
    ld hl, $a000
    call $4543
    jr jr_001_46f0

Call_001_4732:
jr_001_4732:
    ld a, [$7a22]
    or a
    ret z

    ld a, [$7a50]
    ldh [rSVBK], a
    xor a
    ret


Call_001_473e:
    ld a, $04
    ld [$7fe0], a
    ld bc, $1000
    ld hl, $6000

jr_001_4749:
    ld a, $ff
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_001_4749

    ld a, [$7a22]
    or a
    jr nz, jr_001_4764

    ld bc, $0c00
    ld hl, $6400

jr_001_475d:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_001_475d

jr_001_4764:
    ld a, [$7a51]
    or a
    ret z

    ld a, $05
    ld [$7fe0], a
    ld bc, $1000
    ld hl, $6000

jr_001_4774:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_001_4774

    ld a, [$7a51]
    ld bc, $1000
    cp $04
    jr nc, jr_001_4792

    ld bc, $0800
    cp $02
    jr z, jr_001_4792

    ld bc, $0400
    ld hl, $6000

jr_001_4792:
    ld a, $ff
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_001_4792

    ret


Jump_001_479b:
    ld a, $04
    ld [$7fe0], a
    ld hl, $6000
    ld bc, $1000
    ld de, $0000

jr_001_47a9:
    push bc
    ld a, [hl+]
    ld c, $08

jr_001_47ad:
    sla a
    jr nc, jr_001_47b2

    inc de

jr_001_47b2:
    dec c
    jr nz, jr_001_47ad

    pop bc
    dec bc
    ld a, b
    or c
    jr nz, jr_001_47a9

    ld a, d
    ld [$7a35], a
    ld a, e
    ld [$7a36], a
    ld a, $05
    ld [$7fe0], a
    ld hl, $6000
    ld bc, $1000
    ld de, $0000
    ld a, [$7a51]
    or a
    jr z, jr_001_47ec

    ld bc, $1000

jr_001_47da:
    push bc
    ld a, [hl+]
    ld c, $08

jr_001_47de:
    sla a
    jr nc, jr_001_47e3

    inc de

jr_001_47e3:
    dec c
    jr nz, jr_001_47de

    pop bc
    dec bc
    ld a, b
    or c
    jr nz, jr_001_47da

jr_001_47ec:
    ld a, d
    ld [$7a37], a
    ld a, e
    ld [$7a38], a
    ld a, [$7a36]
    add e
    ld e, a
    ld [$7a33], a
    ld a, [$7a35]
    adc d
    ld d, a
    ld [$7a34], a
    ret


Call_001_4805:
    push de
    push bc
    push hl
    ld [$7fe0], a
    ld e, a
    ld a, [$7a68]
    or a
    jr z, jr_001_4876

    ld a, [$7a69]
    or a
    jr nz, jr_001_482a

    ld a, c
    and $3f
    jr nz, jr_001_4876

    ld a, c
    and $c0
    ld e, b
    rla
    rl e
    rla
    rl e
    ld a, e
    jr jr_001_4842

jr_001_482a:
    dec a
    jr nz, jr_001_4834

    ld a, c
    or a
    jr nz, jr_001_4876

    ld a, b
    jr jr_001_4842

jr_001_4834:
    ld a, c
    or a
    jr nz, jr_001_4876

    ld a, b
    and $01
    jr nz, jr_001_4876

    ld a, b
    rr e
    rra
    rra

jr_001_4842:
    ld hl, $9862
    ld d, a
    ld a, [$7a22]
    cp $11
    jr nz, jr_001_4850

    xor a
    ldh [rVBK], a

jr_001_4850:
    ld a, d
    and $78
    jr z, jr_001_4865

    rra
    rra
    rra
    ld e, a

jr_001_4859:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4859

    ld [hl], $a0
    inc l
    dec e
    jr nz, jr_001_4859

jr_001_4865:
    ld a, d
    and $07
    ld e, $20
    jr z, jr_001_486f

    add $18
    ld e, a

jr_001_486f:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_486f

    ld [hl], e

jr_001_4876:
    ld a, [$7a52]
    ld e, a
    ld a, c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    and $07
    ld hl, $4533
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, $60
    add b
    ld b, a
    ld a, [bc]
    and [hl]
    push af
    ld a, e
    ld [$7fe0], a
    pop af
    pop hl
    pop bc
    pop de
    ret


    push de
    push bc
    push hl
    ld [$7fe0], a
    ld a, [$7a52]
    ld e, a
    ld a, c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    and $07
    ld hl, $4533
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, $60
    add b
    ld b, a
    ld a, [bc]
    or [hl]
    ld [bc], a
    push af
    ld a, e
    ld [$7fe0], a
    pop af
    pop hl
    pop bc
    pop de
    ret


Call_001_48d3:
    push de
    push bc
    push hl
    ld [$7fe0], a
    ld a, [$7a52]
    ld e, a
    ld a, c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    and $07
    ld hl, $453b
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, $60
    add b
    ld b, a
    ld a, [bc]
    and [hl]
    ld [bc], a
    push af
    ld a, e
    ld [$7fe0], a
    pop af
    pop hl
    pop bc
    pop de
    ret


    ld de, $c000
    ldh a, [rSVBK]
    ld [$7a50], a
    ld a, h
    swap a
    and $07
    jr z, jr_001_4919

    ld de, $d000
    ldh [rSVBK], a

jr_001_4919:
    ld a, h
    and $0f
    ld h, a
    add hl, de
    ld a, [$7a50]
    ldh [rSVBK], a
    ld a, [hl]
    ret


    ld a, h
    swap a
    and $07
    add $10
    ld [$7fe0], a
    ld a, h
    and $0f
    ld h, a
    ld de, $6000
    add hl, de
    ld a, [hl]
    ret


Call_001_4939:
    push de
    push bc
    push hl
    push af
    ld a, [$7a52]
    ld c, a
    ld a, [$7a55]
    ld [$7fe0], a
    pop af
    ld hl, $7a4c
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    inc de

Jump_001_4950:
    ld a, d
    cp $70
    jr nz, jr_001_4968

    ld a, [$7a54]
    ld e, a
    ld a, [$7a55]
    cp e
    jr nz, jr_001_4961

    ld a, $fe

jr_001_4961:
    inc a
    ld [$7a55], a
    ld de, $6000

jr_001_4968:
    ld [hl], d
    dec hl
    ld [hl], e
    ld a, c
    ld [$7fe0], a
    pop hl
    pop bc
    pop de
    ret


Call_001_4973:
    xor a
    ld [$7a4a], a
    ld [$7a4b], a
    ld a, $02
    ld [$7fe0], a
    ld [$7a52], a
    ld a, [$7a22]
    or a
    jr z, jr_001_4994

    ldh a, [rSVBK]
    ld [$7a50], a
    ld a, $01
    ld [$7a4f], a
    ldh [rSVBK], a

jr_001_4994:
    ld hl, $c000
    ld de, $6000
    ld bc, $0000

jr_001_499d:
    ld a, $04
    call Call_001_4805
    or a
    jr z, jr_001_49cb

    ld a, [de]
    cp [hl]
    jr z, jr_001_49ab

    jr nc, jr_001_49b0

jr_001_49ab:
    ld a, $04
    call Call_001_48d3

jr_001_49b0:
    inc de
    ld a, d
    cp $70
    jr nz, jr_001_49cb

    ld a, [$7a54]
    ld e, a
    ld a, [$7a52]
    cp e
    jp z, Jump_001_4a49

    inc a
    ld [$7a52], a
    ld [$7fe0], a
    ld de, $6000

jr_001_49cb:
    inc bc
    inc hl
    ld a, h
    cp $e0
    jr nz, jr_001_499d

    ld a, [$7a22]
    or a
    jp z, Jump_001_49eb

    ld hl, $d000
    ld a, [$7a4f]
    cp $07
    jr z, jr_001_49eb

    inc a
    ld [$7a4f], a
    ldh [rSVBK], a
    jr jr_001_499d

Jump_001_49eb:
jr_001_49eb:
    ld a, [$7a51]
    or a
    jr z, jr_001_4a49

    xor a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    ld bc, $0000

jr_001_49fe:
    ld a, $05
    call Call_001_4805
    or a
    jr z, jr_001_4a2b

    ld a, [de]
    cp [hl]
    jr z, jr_001_4a0c

    jr nc, jr_001_4a11

jr_001_4a0c:
    ld a, $05
    call Call_001_48d3

jr_001_4a11:
    inc de
    ld a, d
    cp $70
    jr nz, jr_001_4a2b

    ld a, [$7a54]
    ld e, a
    ld a, [$7a52]
    cp e
    jr z, jr_001_4a49

    inc a
    ld [$7a52], a
    ld [$7fe0], a
    ld de, $6000

jr_001_4a2b:
    inc bc
    inc hl
    ld a, h
    cp $c0
    jr nz, jr_001_49fe

    ld a, [$7a51]
    dec a
    ld l, a
    ld a, [$7a53]
    cp l
    jr z, jr_001_4a49

    inc a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    jr jr_001_49fe

Jump_001_4a49:
jr_001_4a49:
    ld a, [$7a22]
    or a
    jp z, Jump_001_4a55

    ld a, [$7a50]
    ldh [rSVBK], a

Jump_001_4a55:
    call Call_001_4575
    jp Jump_001_479b


Call_001_4a5b:
    xor a
    ld [$7a4a], a
    ld [$7a4b], a
    ld a, $02
    ld [$7fe0], a
    ld [$7a52], a
    ld a, [$7a22]
    or a
    jr z, jr_001_4a7c

    ldh a, [rSVBK]
    ld [$7a50], a
    ld a, $01
    ld [$7a4f], a
    ldh [rSVBK], a

jr_001_4a7c:
    ld hl, $c000
    ld de, $6000
    ld bc, $0000

jr_001_4a85:
    ld a, $04
    call Call_001_4805
    or a
    jr z, jr_001_4ab3

    ld a, [de]
    cp [hl]
    jr nc, jr_001_4a93

    jr jr_001_4a98

jr_001_4a93:
    ld a, $04
    call Call_001_48d3

jr_001_4a98:
    inc de
    ld a, d
    cp $70
    jr nz, jr_001_4ab3

    ld a, [$7a54]
    ld e, a
    ld a, [$7a52]
    cp e
    jp z, Jump_001_4b31

    inc a
    ld [$7a52], a
    ld [$7fe0], a
    ld de, $6000

jr_001_4ab3:
    inc bc
    inc hl
    ld a, h
    cp $e0
    jr nz, jr_001_4a85

    ld a, [$7a22]
    or a
    jp z, Jump_001_4ad3

    ld hl, $d000
    ld a, [$7a4f]
    cp $07
    jr z, jr_001_4ad3

    inc a
    ld [$7a4f], a
    ldh [rSVBK], a
    jr jr_001_4a85

Jump_001_4ad3:
jr_001_4ad3:
    ld a, [$7a51]
    or a
    jr z, jr_001_4b31

    xor a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    ld bc, $0000

jr_001_4ae6:
    ld a, $05
    call Call_001_4805
    or a
    jr z, jr_001_4b13

    ld a, [de]
    cp [hl]
    jr nc, jr_001_4af4

    jr jr_001_4af9

jr_001_4af4:
    ld a, $05
    call Call_001_48d3

jr_001_4af9:
    inc de
    ld a, d
    cp $70
    jr nz, jr_001_4b13

    ld a, [$7a54]
    ld e, a
    ld a, [$7a52]
    cp e
    jr z, jr_001_4b31

    inc a
    ld [$7a52], a
    ld [$7fe0], a
    ld de, $6000

jr_001_4b13:
    inc bc
    inc hl
    ld a, h
    cp $c0
    jr nz, jr_001_4ae6

    ld a, [$7a51]
    dec a
    ld l, a
    ld a, [$7a53]
    cp l
    jr z, jr_001_4b31

    inc a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    jr jr_001_4ae6

Jump_001_4b31:
jr_001_4b31:
    ld a, [$7a22]
    or a
    jp z, Jump_001_4b3d

    ld a, [$7a50]
    ldh [rSVBK], a

Jump_001_4b3d:
    call Call_001_4575
    jp Jump_001_479b


Call_001_4b43:
    xor a
    ld [$7a4a], a
    ld [$7a4b], a
    ld a, $02
    ld [$7fe0], a
    ld [$7a52], a
    ld a, [$7a22]
    or a
    jr z, jr_001_4b64

    ldh a, [rSVBK]
    ld [$7a50], a
    ld a, $01
    ld [$7a4f], a
    ldh [rSVBK], a

jr_001_4b64:
    ld hl, $c000
    ld de, $6000
    ld bc, $0000

jr_001_4b6d:
    ld a, $04
    call Call_001_4805
    or a
    jr z, jr_001_4b99

    ld a, [de]
    cp [hl]
    jr nz, jr_001_4b7e

    ld a, $04
    call Call_001_48d3

jr_001_4b7e:
    inc de
    ld a, d
    cp $70
    jr nz, jr_001_4b99

    ld a, [$7a54]
    ld e, a
    ld a, [$7a52]
    cp e
    jp z, Jump_001_4c15

    inc a
    ld [$7a52], a
    ld [$7fe0], a
    ld de, $6000

jr_001_4b99:
    inc bc
    inc hl
    ld a, h
    cp $e0
    jr nz, jr_001_4b6d

    ld a, [$7a22]
    or a
    jp z, Jump_001_4bb9

    ld hl, $d000
    ld a, [$7a4f]
    cp $07
    jr z, jr_001_4bb9

    inc a
    ld [$7a4f], a
    ldh [rSVBK], a
    jr jr_001_4b6d

Jump_001_4bb9:
jr_001_4bb9:
    ld a, [$7a51]
    or a
    jr z, jr_001_4c15

    xor a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    ld bc, $0000

jr_001_4bcc:
    ld a, $05
    call Call_001_4805
    or a
    jr z, jr_001_4bf7

    ld a, [de]
    cp [hl]
    jr nz, jr_001_4bdd

    ld a, $05
    call Call_001_48d3

jr_001_4bdd:
    inc de
    ld a, d
    cp $70
    jr nz, jr_001_4bf7

    ld a, [$7a54]
    ld e, a
    ld a, [$7a52]
    cp e
    jr z, jr_001_4c15

    inc a
    ld [$7a52], a
    ld [$7fe0], a
    ld de, $6000

jr_001_4bf7:
    inc bc
    inc hl
    ld a, h
    cp $c0
    jr nz, jr_001_4bcc

    ld a, [$7a51]
    dec a
    ld l, a
    ld a, [$7a53]
    cp l
    jr z, jr_001_4c15

    inc a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    jr jr_001_4bcc

Jump_001_4c15:
jr_001_4c15:
    ld a, [$7a22]
    or a
    jp z, Jump_001_4c21

    ld a, [$7a50]
    ldh [rSVBK], a

Jump_001_4c21:
    call Call_001_4575
    jp Jump_001_479b


Call_001_4c27:
    ld a, $02
    ld [$7fe0], a
    ld [$7a52], a
    ld a, [$7a22]
    or a
    jr z, jr_001_4c41

    ldh a, [rSVBK]
    ld [$7a50], a
    ld a, $01
    ld [$7a4f], a
    ldh [rSVBK], a

jr_001_4c41:
    ld hl, $c000
    ld de, $6000
    ld bc, $0000

jr_001_4c4a:
    ld a, $04
    call Call_001_4805
    or a
    jr z, jr_001_4c76

    ld a, [de]
    cp [hl]
    jr z, jr_001_4c5b

    ld a, $04
    call Call_001_48d3

jr_001_4c5b:
    inc de
    ld a, d
    cp $70
    jr nz, jr_001_4c76

    ld a, [$7a54]
    ld e, a
    ld a, [$7a52]
    cp e
    jp z, Jump_001_4cf2

    inc a
    ld [$7a52], a
    ld [$7fe0], a
    ld de, $6000

jr_001_4c76:
    inc bc
    inc hl
    ld a, h
    cp $e0
    jr nz, jr_001_4c4a

    ld a, [$7a22]
    or a
    jp z, Jump_001_4c96

    ld hl, $d000
    ld a, [$7a4f]
    cp $07
    jr z, jr_001_4c96

    inc a
    ld [$7a4f], a
    ldh [rSVBK], a
    jr jr_001_4c4a

Jump_001_4c96:
jr_001_4c96:
    ld a, [$7a51]
    or a
    jr z, jr_001_4cf2

    xor a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    ld bc, $0000

jr_001_4ca9:
    ld a, $05
    call Call_001_4805
    or a
    jr z, jr_001_4cd4

    ld a, [de]
    cp [hl]
    jr z, jr_001_4cba

    ld a, $05
    call Call_001_48d3

jr_001_4cba:
    inc de
    ld a, d
    cp $70
    jr nz, jr_001_4cd4

    ld a, [$7a54]
    ld e, a
    ld a, [$7a52]
    cp e
    jr z, jr_001_4cf2

    inc a
    ld [$7a52], a
    ld [$7fe0], a
    ld de, $6000

jr_001_4cd4:
    inc bc
    inc hl
    ld a, h
    cp $c0
    jr nz, jr_001_4ca9

    ld a, [$7a51]
    dec a
    ld l, a
    ld a, [$7a53]
    cp l
    jr z, jr_001_4cf2

    inc a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    jr jr_001_4ca9

Jump_001_4cf2:
jr_001_4cf2:
    ld a, [$7a22]
    or a
    jp z, Jump_001_4cfe

    ld a, [$7a50]
    ldh [rSVBK], a

Jump_001_4cfe:
    call Call_001_4575
    jp Jump_001_479b


Call_001_4d04:
    ld a, $02
    ld [$7fe0], a
    ld [$7a52], a
    ld a, [$7a22]
    or a
    jr z, jr_001_4d1e

    ldh a, [rSVBK]
    ld [$7a50], a
    ld a, $01
    ld [$7a4f], a
    ldh [rSVBK], a

jr_001_4d1e:
    ld hl, $c000
    ld bc, $0000

jr_001_4d24:
    ld a, $04
    call Call_001_4805
    or a
    jr z, jr_001_4d37

    ld a, [$7a4e]
    cp [hl]
    jr z, jr_001_4d37

    ld a, $04
    call Call_001_48d3

jr_001_4d37:
    inc bc
    inc hl
    ld a, h
    cp $e0
    jr nz, jr_001_4d24

    ld a, [$7a22]
    or a
    jp z, Jump_001_4d57

    ld hl, $d000
    ld a, [$7a4f]
    cp $07
    jr z, jr_001_4d57

    inc a
    ld [$7a4f], a
    ldh [rSVBK], a
    jr jr_001_4d24

Jump_001_4d57:
jr_001_4d57:
    ld a, [$7a51]
    or a
    jr z, jr_001_4d9b

    xor a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    ld bc, $0000

jr_001_4d6a:
    ld a, $05
    call Call_001_4805
    or a
    jr z, jr_001_4d7d

    ld a, [$7a4e]
    cp [hl]
    jr z, jr_001_4d7d

    ld a, $05
    call Call_001_48d3

jr_001_4d7d:
    inc bc
    inc hl
    ld a, h
    cp $c0
    jr nz, jr_001_4d6a

    ld a, [$7a51]
    dec a
    ld l, a
    ld a, [$7a53]
    cp l
    jr z, jr_001_4d9b

    inc a
    ld [$7a53], a
    call $4543
    ld hl, $a000
    jr jr_001_4d6a

jr_001_4d9b:
    ld a, [$7a22]
    or a
    jp z, Jump_001_4da7

    ld a, [$7a50]
    ldh [rSVBK], a

Jump_001_4da7:
    jp Jump_001_479b


Call_001_4daa:
    call Call_001_4e19
    ld b, $07
    ld c, $0a

jr_001_4db1:
    ld hl, $7a42
    ld a, [$7a3d]
    or a
    jr z, jr_001_4dbd

    ld hl, $7a45

jr_001_4dbd:
    ld a, [hl]
    add $07
    cp b
    jr nz, jr_001_4dc6

    call Call_001_4dcb

jr_001_4dc6:
    inc b
    dec c
    jr nz, jr_001_4db1

    ret


Call_001_4dcb:
    push bc
    ld de, $0801
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
    ld a, [$7a3d]
    or a
    jr z, jr_001_4de5

    ld a, l
    add $0a
    ld l, a

jr_001_4de5:
    ld a, l
    ld [$7a6e], a
    ld a, h
    ld [$7a6f], a
    ld a, [$7a22]
    or a
    jr nz, jr_001_4e02

jr_001_4df3:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4df3

    ld a, [hl]
    or $80
    ld [hl+], a
    dec d
    jr nz, jr_001_4df3

    pop bc
    ret


jr_001_4e02:
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a

jr_001_4e09:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4e09

    ld a, e
    ld [hl+], a
    dec d
    jr nz, jr_001_4e09

    pop af
    ldh [rVBK], a
    pop bc
    ret


Call_001_4e19:
    ld d, $08
    ld a, [$7a6e]
    ld l, a
    ld a, [$7a6f]
    ld h, a
    ld a, [$7a22]
    or a
    jr nz, jr_001_4e37

jr_001_4e29:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4e29

    ld a, [hl]
    and $7f
    ld [hl+], a
    dec d
    jr nz, jr_001_4e29

    ret


jr_001_4e37:
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a

jr_001_4e3e:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4e3e

    ld [hl], $00
    inc l
    dec d
    jr nz, jr_001_4e3e

    pop af
    ldh [rVBK], a
    ret


    call Call_001_455f
    ld a, $09
    ld [$7a63], a
    ret


Call_001_4e57:
    ld h, $99
    ld a, [$7a49]
    or $0c
    ld l, a
    ld a, [$7a22]
    cp $11
    jr z, jr_001_4ead

jr_001_4e66:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4e66

    ld a, [hl]
    or $80
    ld [hl], a
    ld h, $04
    ld a, [$7a48]
    add $cc
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$7a47]
    ld c, a
    add a
    add a
    add c
    inc a
    or l
    ld l, a
    ld c, $03
    ld a, [$7a48]
    cp $04
    jr c, jr_001_4e9f

    ld a, [$7a47]
    or a
    jr z, jr_001_4e9f

    cp $03
    jr z, jr_001_4e9f

    ld hl, $9a07
    ld c, $06

jr_001_4e9f:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4e9f

    ld a, [hl]
    or $80
    ld [hl+], a
    dec c
    jr nz, jr_001_4e9f

    ret


jr_001_4ead:
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a

jr_001_4eb4:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4eb4

    ld [hl], $03
    ld h, $04
    ld a, [$7a48]
    add $cc
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$7a47]
    ld c, a
    add a
    add a
    add c
    inc a
    or l
    ld l, a
    ld c, $03
    ld a, [$7a48]
    cp $04
    jr c, jr_001_4eeb

    ld a, [$7a47]
    or a
    jr z, jr_001_4eeb

    cp $03
    jr z, jr_001_4eeb

    ld hl, $9a07
    ld c, $06

jr_001_4eeb:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4eeb

    ld [hl], $03
    inc hl
    dec c
    jr nz, jr_001_4eeb

    pop af
    ldh [rVBK], a
    ret


Call_001_4efb:
    ld h, $98
    ld a, [$7a49]
    add $e6
    ld l, a
    ld a, [$7a22]
    cp $11
    jr z, jr_001_4f15

jr_001_4f0a:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4f0a

    ld a, [hl]
    or $80
    ld [hl], a
    ret


jr_001_4f15:
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a

jr_001_4f1c:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4f1c

    ld [hl], $03
    pop af
    ldh [rVBK], a
    ret


    ld h, $98
    ld a, [$7a49]
    add $e6
    ld l, a
    ld a, [$7a22]
    cp $11
    jr z, jr_001_4f42

jr_001_4f37:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4f37

    ld a, [hl]
    and $7f
    ld [hl], a
    ret


jr_001_4f42:
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a

jr_001_4f49:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4f49

    ld [hl], $00
    pop af
    ldh [rVBK], a
    ret


Call_001_4f55:
    ld h, $99
    ld a, [$7a49]
    or $0c
    ld l, a
    ld l, a
    ld a, [$7a22]
    cp $11
    jr z, jr_001_4fac

jr_001_4f65:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4f65

    ld a, [hl]
    and $7f
    ld [hl], a
    ld h, $04
    ld a, [$7a48]
    add $cc
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$7a47]
    ld c, a
    add a
    add a
    add c
    inc a
    or l
    ld l, a
    ld c, $03
    ld a, [$7a48]
    cp $04
    jr c, jr_001_4f9e

    ld a, [$7a47]
    or a
    jr z, jr_001_4f9e

    cp $03
    jr z, jr_001_4f9e

    ld hl, $9a07
    ld c, $06

jr_001_4f9e:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4f9e

    ld a, [hl]
    and $7f
    ld [hl+], a
    dec c
    jr nz, jr_001_4f9e

    ret


jr_001_4fac:
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a

jr_001_4fb3:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4fb3

    ld [hl], $00
    ld h, $04
    ld a, [$7a48]
    add $cc
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$7a47]
    ld c, a
    add a
    add a
    add c
    inc a
    or l
    ld l, a
    ld c, $03
    ld a, [$7a48]
    cp $04
    jr c, jr_001_4fea

    ld a, [$7a47]
    or a
    jr z, jr_001_4fea

    cp $03
    jr z, jr_001_4fea

    ld hl, $9a07
    ld c, $06

jr_001_4fea:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_4fea

    ld [hl], $00
    inc hl
    dec c
    jr nz, jr_001_4fea

    pop af
    ldh [rVBK], a
    ret


    ld de, $5ee0
    ld a, [$7a4e]
    call Call_001_500c
    call Call_001_4d04
    ld a, $08
    ld [$7a63], a
    ret


Call_001_500c:
    push de
    push af
    ld hl, $5f0a
    ld de, $7a71
    ld bc, $0015
    call Call_000_007a
    pop af
    ld de, $7a7d
    call Call_000_105a
    xor a
    ld [$7a49], a
    ld [$7a48], a
    ld [$7a47], a
    ld de, $5f88
    ld hl, $0500
    call Call_000_1072
    pop de
    inc h
    call Call_000_1072
    ld de, $5fb2
    inc h
    call Call_000_1072
    ld de, $5f9d
    ld hl, $0900
    call Call_000_1072
    ld hl, $0a00
    ld de, $5fc7
    call Call_000_1072
    inc h
    ld de, $5f88
    call Call_000_1072
    inc h
    ld de, $5f1f
    ld b, $05

jr_001_505f:
    call Call_000_1072
    inc h
    dec b
    jr nz, jr_001_505f

    ld de, $5f9d
    call Call_000_1072

Jump_001_506c:
    ld hl, $7a7d
    ld de, $7a77
    call Call_001_5140
    ld de, $7a71
    ld hl, $0800
    call Call_000_1072

Jump_001_507e:
jr_001_507e:
    call Call_001_4e57
    call Call_000_0013
    call Call_000_0099
    ld b, a
    or a
    jr z, jr_001_507e

    bit 0, b
    jr z, jr_001_50a1

    ld a, [$7a47]
    cp $03
    jr nc, jr_001_507e

    inc a

jr_001_5097:
    push af
    call Call_001_4f55
    pop af
    ld [$7a47], a
    jr jr_001_507e

jr_001_50a1:
    bit 1, b
    jr z, jr_001_50ae

    ld a, [$7a47]
    or a
    jr z, jr_001_507e

    dec a
    jr jr_001_5097

jr_001_50ae:
    bit 2, b
    jr z, jr_001_50c3

    ld a, [$7a48]
    or a
    jr z, jr_001_507e

    dec a

jr_001_50b9:
    push af
    call Call_001_4f55
    pop af
    ld [$7a48], a
    jr jr_001_507e

jr_001_50c3:
    bit 3, b
    jr z, jr_001_50d1

    ld a, [$7a48]
    cp $04
    jr nc, jr_001_507e

    inc a
    jr jr_001_50b9

jr_001_50d1:
    bit 4, b
    jr z, jr_001_507e

    ld a, [$7a48]
    cp $04
    jr nc, jr_001_5107

    add a
    add a
    ld c, a
    ld a, [$7a47]
    or c
    cp $0a
    jr c, jr_001_50e9

    add $07

jr_001_50e9:
    add $30
    ld c, a
    ld a, [$7a49]
    ld e, a
    ld d, $00
    ld hl, $7a7d
    add hl, de
    ld [hl], c
    ld a, e
    or a
    jp nz, Jump_001_506c

    call Call_001_4f55
    ld a, $01
    ld [$7a49], a
    jp Jump_001_506c


jr_001_5107:
    ld a, [$7a47]
    or a
    jr nz, jr_001_5117

    call Call_001_4f55
    xor a
    ld [$7a49], a
    jp Jump_001_507e


jr_001_5117:
    cp $03
    jr c, jr_001_5126

    call Call_001_4f55
    ld a, $01
    ld [$7a49], a
    jp Jump_001_507e


jr_001_5126:
    ret


Call_001_5127:
    ld a, [hl+]
    sub $30
    cp $0a
    jr c, jr_001_5130

    sub $07

jr_001_5130:
    add a
    add a
    add a
    add a
    ld c, a
    ld a, [hl+]
    sub $30
    cp $0a
    jr c, jr_001_513e

    sub $07

jr_001_513e:
    or c
    ret


Call_001_5140:
    call Call_001_5127
    ld l, a
    ld h, $00
    ld [$7a4e], a
    ld bc, $0064
    call Call_001_55c0
    ld bc, $000a
    call Call_001_55c0
    ld a, l
    or $30
    ld [de], a
    ret


Call_001_515a:
    push hl
    ld hl, $5fdc
    ld de, $7a71
    ld bc, $0015
    call Call_000_007a
    pop hl
    push hl
    ld de, $7a77
    ld b, $04

jr_001_516e:
    ld a, [hl+]
    call Call_000_105a
    inc e
    inc e
    dec b
    jr nz, jr_001_516e

    ld a, $02
    ld [$7a49], a
    ld hl, $0300
    ld de, $5fc7
    call Call_000_1072
    inc h
    ld de, $5fc7
    call Call_000_1072
    inc h
    ld de, $5f88
    call Call_000_1072
    inc h
    ld de, $5fb2
    call Call_000_1072
    inc h
    ld de, $7a71
    call Call_000_1072
    inc h
    ld de, $5fb2
    call Call_000_1072
    inc h
    ld de, $5f9d
    call Call_000_1072
    inc h
    ld b, $08

jr_001_51b2:
    ld de, $5fc7
    call Call_000_1072
    inc h
    dec b
    jr nz, jr_001_51b2

jr_001_51bc:
    ld hl, $0700
    ld de, $7a71
    call Call_000_1072
    call Call_001_4efb

jr_001_51c8:
    call Call_000_0013
    call Call_000_0099
    ld b, a
    or a
    jr z, jr_001_51c8

    bit 0, b
    jr z, jr_001_51e1

    ld a, [$7a49]
    inc a
    and $07
    ld [$7a49], a
    jr jr_001_51bc

jr_001_51e1:
    bit 1, b
    jr z, jr_001_51f0

    ld a, [$7a49]
    dec a
    and $07
    ld [$7a49], a
    jr jr_001_51bc

jr_001_51f0:
    bit 3, b
    jr z, jr_001_5210

    ld hl, $7a71
    ld a, [$7a49]
    add $06
    add l
    ld l, a
    dec [hl]
    ld a, [hl]
    cp $40
    jr nz, jr_001_5208

    ld [hl], $39
    jr jr_001_51bc

jr_001_5208:
    cp $2f
    jr nz, jr_001_51bc

    ld [hl], $46
    jr jr_001_51bc

jr_001_5210:
    bit 2, b
    jr z, jr_001_5230

    ld hl, $7a71
    ld a, [$7a49]
    add $06
    add l
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $3a
    jr nz, jr_001_5228

    ld [hl], $41
    jr jr_001_51bc

jr_001_5228:
    cp $47
    jr nz, jr_001_51bc

    ld [hl], $30
    jr jr_001_51bc

jr_001_5230:
    bit 7, b
    jr z, jr_001_51c8

    pop de
    ld hl, $7a77
    ld b, $04

jr_001_523a:
    call Call_001_5127
    ld [de], a
    inc e
    dec b
    jr nz, jr_001_523a

    ret


    ld a, [$7a34]
    or a
    ret nz

    ld a, [$7a33]
    cp $41
    ret nc

    ret z

    ld a, $01
    ld [$7a3d], a

Jump_001_5254:
    call Call_001_4e19
    xor a
    ld [$7a68], a
    ld hl, $7a41
    ld [hl+], a
    ld [hl+], a
    inc l
    ld [hl+], a
    ld [hl+], a
    ld a, [$7a5c]
    ld [$7a43], a
    ld a, [$7a33]
    ld [$7a46], a
    ld hl, $7a43
    ld a, [$7a3d]
    or a
    jr nz, jr_001_527b

    ld hl, $7a46

jr_001_527b:
    ld a, [hl]
    ld [$7a40], a
    ld hl, $7800
    ld bc, $0100
    ld e, $00
    call Call_000_008b
    ld de, $7800
    call Call_001_54a5
    call Call_001_5412
    call Call_001_4daa
    call Call_001_464f
    ld hl, $0500
    ld de, $5e8c
    call Call_000_1072
    inc h
    ld de, $5eb6
    call Call_000_1072
    ld de, $7800

jr_001_52ac:
    push de
    call Call_001_468a
    pop de
    jr z, jr_001_52db

    ld a, h
    cp $c0
    jr nc, jr_001_52be

    ld a, b
    or $a0
    ld b, a
    jr jr_001_52cd

jr_001_52be:
    ld a, b
    or a
    jr nz, jr_001_52c3

    inc b

jr_001_52c3:
    ld a, [$7a22]
    or a
    jr z, jr_001_52cd

    ld a, b
    or $90
    ld b, a

jr_001_52cd:
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    jr jr_001_52ac

jr_001_52db:
    call Call_001_4732

Jump_001_52de:
    call Call_001_54a5
    inc h
    ld de, $5fc7
    call Call_000_1072

Jump_001_52e8:
    ld a, [$7a3f]
    ld c, a
    ld a, [$7a3e]
    add c
    ld b, a
    ld a, [$7a3d]
    ld hl, $7a43
    add l
    ld l, a
    ld a, [hl]
    cp b
    jr c, jr_001_530d

    ld a, c
    cp $08
    jr c, jr_001_5309

    ld c, $08
    ld a, [hl]
    sub c
    ld [$7a3e], a

jr_001_5309:
    ld a, c
    ld [$7a3f], a

jr_001_530d:
    call Call_001_5412
    call Call_001_4daa

Jump_001_5313:
    call Call_000_0099
    ld b, a
    bit 2, b
    jr z, jr_001_5321

    call Call_001_53ba

jr_001_531e:
    jp Jump_001_52de


jr_001_5321:
    bit 3, b
    jr z, jr_001_532c

    call Call_001_53e2
    jr jr_001_531e

    jr jr_001_531e

jr_001_532c:
    ld a, b
    and $03
    jr z, jr_001_534e

    ld a, [$7a3d]
    xor $01
    ld c, a
    ld hl, $7a43
    jr z, jr_001_533f

    ld hl, $7a46

jr_001_533f:
    ld a, [hl]
    or a
    jp z, Jump_001_5313

    ld a, c
    ld [$7a3d], a
    jp Jump_001_52e8


    jp Jump_001_52e8


jr_001_534e:
    bit 4, b
    jr z, jr_001_537f

    call Call_001_5470
    ld a, h
    cp $78
    jr nz, jr_001_5369

jr_001_535a:
    call Call_001_542b

jr_001_535d:
    call Call_000_0469
    ld a, [$7a5c]
    ld [$7a43], a
    jp Jump_001_52de


jr_001_5369:
    call Call_001_548a
    xor a
    ld [$7a3f], a
    ld [$7a42], a
    ld a, [$7a43]
    or a
    jr z, jr_001_535d

    dec a
    ld [$7a43], a
    jr jr_001_535d

jr_001_537f:
    bit 5, b
    jr z, jr_001_538e

    ld a, $09
    ld hl, $1066
    call Call_000_1063
    jp Jump_001_5254


jr_001_538e:
    bit 6, b
    jr z, jr_001_53b4

    ld a, [$7a3d]
    or a
    jp nz, Jump_001_53ab

    call Call_001_5470
    call Call_001_515a
    call Call_000_0469
    ld a, [$7a5c]
    ld [$7a43], a
    jp Jump_001_5254


Jump_001_53ab:
    ld hl, $53b0
    jr jr_001_535a

    ld bc, $0000
    nop

jr_001_53b4:
    bit 7, b
    jp z, Jump_001_5313

    ret


Call_001_53ba:
    ld a, [$7a3d]
    or a
    ld hl, $7a41
    jr z, jr_001_53c6

    ld hl, $7a44

jr_001_53c6:
    ld c, [hl]
    inc l
    ld b, [hl]
    inc l
    ld e, [hl]
    ld a, b
    or a
    jr z, jr_001_53db

    dec b

jr_001_53d0:
    dec l
    ld [hl], b
    dec l
    ld [hl], c
    ld hl, $7a3e
    ld [hl], c
    inc l
    ld [hl], b
    ret


jr_001_53db:
    ld a, c
    or a
    jr z, jr_001_53d0

    dec c
    jr jr_001_53d0

Call_001_53e2:
    ld a, [$7a3d]
    or a
    ld hl, $7a41
    jr z, jr_001_53ee

    ld hl, $7a44

jr_001_53ee:
    ld c, [hl]
    inc l
    ld b, [hl]
    inc l
    ld e, [hl]
    inc b
    ld a, b
    cp $08
    jr nc, jr_001_5408

    cp e
    jr c, jr_001_53fd

    dec b

jr_001_53fd:
    dec l
    ld [hl], b
    dec l
    ld [hl], c
    ld hl, $7a3e
    ld [hl], c
    inc l
    ld [hl], b
    ret


jr_001_5408:
    dec b
    ld a, b
    inc c
    add c
    cp e
    jr c, jr_001_53fd

    dec c
    jr jr_001_53fd

Call_001_5412:
    ld hl, $1100
    ld de, $560e
    call Call_000_1072
    dec h
    ld de, $55f9
    ld a, [$7a3d]
    or a
    jr nz, jr_001_5428

    ld de, $55e4

jr_001_5428:
    jp Jump_000_1072


Call_001_542b:
    ld a, [$7a5c]
    cp $28
    ret nc

    ld b, a
    ld de, $7900
    or a
    jr z, jr_001_5458

jr_001_5438:
    push hl
    push de
    ld a, [de]
    cp [hl]
    jr nz, jr_001_544f

    inc l
    inc e
    inc l
    inc e
    ld a, [de]
    cp [hl]
    jr nz, jr_001_544f

    inc l
    inc e
    ld a, [de]
    cp [hl]
    jr nz, jr_001_544f

    pop de
    pop hl
    ret


jr_001_544f:
    pop de
    pop hl
    ld a, e
    add $04
    ld e, a
    dec b
    jr nz, jr_001_5438

jr_001_5458:
    ld a, [$7a5c]
    push hl
    or $40
    ld l, a
    ld h, $1e
    add hl, hl
    add hl, hl
    pop de
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    ret


Call_001_5470:
    ld hl, $7a41
    ld a, [$7a3d]
    or a
    jr z, jr_001_547c

    ld hl, $7a44

jr_001_547c:
    ld a, [hl+]
    add [hl]
    ld l, a
    ld h, $1e
    add hl, hl
    add hl, hl
    ld a, [$7a3d]
    or a
    ret nz

    inc h
    ret


Call_001_548a:
    ld d, h
    ld a, l
    add $04
    ld e, a

jr_001_548f:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, d
    cp $7a
    jr c, jr_001_548f

    ret


Call_001_5498:
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    ret


Call_001_54a5:
    ld hl, $5ea1
    ld de, $7a71
    ld bc, $0015
    call Call_000_007a
    ld a, [$7a41]
    or $40
    ld l, a
    ld h, $1e
    add hl, hl
    add hl, hl
    ld a, l
    ld [$7a3b], a
    ld a, h
    ld [$7a3c], a
    ld a, [$7a44]
    ld l, a
    ld h, $1e
    add hl, hl
    add hl, hl
    ld a, l
    ld [$7a39], a
    ld a, h
    ld [$7a3a], a
    ld hl, $0700
    ld b, $08

jr_001_54d8:
    push bc
    push hl
    ld a, [$7a3b]
    ld e, a
    ld a, [$7a3c]
    ld d, a
    call Call_001_5498
    ld a, e
    ld [$7a3b], a
    ld a, d
    ld [$7a3c], a
    ld de, $7a72
    call Call_001_5521
    ld a, [$7a39]
    ld e, a
    ld a, [$7a3a]
    ld d, a
    call Call_001_5498
    ld a, e
    ld [$7a39], a
    ld a, d
    ld [$7a3a], a
    ld de, $7a7c
    call Call_001_5521
    pop hl
    pop bc
    ld de, $7a71
    call Call_000_1072
    inc h
    dec b
    jr nz, jr_001_54d8

    ld hl, $0f00
    ld de, $5ecb
    jp Jump_000_1072


Call_001_5521:
    ld a, b
    or a
    jr z, jr_001_553b

    ld a, b
    call Call_000_105a
    inc de
    inc de
    ld a, c
    call Call_000_105a
    inc de
    inc de
    ld a, l
    call Call_000_105a
    inc de
    inc de
    ld a, h
    jp Jump_000_105a


jr_001_553b:
    ld a, $20
    ld c, $08

jr_001_553f:
    ld [de], a
    inc de
    dec c
    jr nz, jr_001_553f

    ret


    call Call_001_4c27

jr_001_5548:
    ld a, $09
    ld [$7a63], a
    ret


    call Call_001_4b43
    jr jr_001_5548

    call Call_001_4973
    jr jr_001_5548

    call Call_001_4a5b
    jr jr_001_5548

    ld hl, $0400
    ld de, $55d3
    call Call_000_1072
    push de
    ld de, $7a71
    ld a, [$7a33]
    ld l, a
    ld a, [$7a34]
    ld h, a
    ld bc, $2710
    call Call_001_55c0
    ld bc, $03e8
    call Call_001_55c0
    ld bc, $0064
    call Call_001_55c0
    ld c, $0a
    call Call_001_55c0
    ld a, l
    or $30
    ld [de], a
    inc de
    xor a
    ld [de], a
    ld de, $7a71
    ld hl, $0406
    call Call_000_1072
    pop de
    ld l, $0b
    call Call_000_1072
    ld a, [$7a22]
    or a
    ret z

    ld de, $1402
    ld hl, $9880
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a

jr_001_55b1:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_55b1

    ld a, e
    ld [hl+], a
    dec d
    jr nz, jr_001_55b1

    pop af
    ldh [rVBK], a
    ret


Call_001_55c0:
    ld a, $30
    ld [de], a

jr_001_55c3:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr c, jr_001_55d0

    ld a, [de]
    inc a
    ld [de], a
    jr jr_001_55c3

jr_001_55d0:
    add hl, bc
    inc de
    ret


    ld b, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_001_55da

jr_001_55da:
    jr nz, jr_001_562c

    ld l, a
    ld [hl], e
    ld [hl], e
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    nop
    ld b, c
    dec l
    ld b, h
    ld h, l
    ld l, h
    jr nz, jr_001_562d

    dec l
    ld b, c
    ld h, h
    ld h, h
    jr nz, jr_001_5644

    ld h, l
    ld l, h
    dec l
    ld b, l
    ld h, h
    ld l, c
    ld [hl], h
    nop
    jr nz, jr_001_563c

    dec l
    ld b, c
    ld h, e
    ld [hl], h
    ld l, c
    db $76
    ld h, c
    ld [hl], h
    ld h, l
    inc l
    jr nz, jr_001_5649

    dec l
    ld b, c
    ld h, h
    ld h, h
    jr nz, jr_001_562d

    nop
    jr nz, @+$55

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    dec l
    ld b, d
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_001_568f

    ld l, a
    jr nz, jr_001_566b

    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, jr_001_5623

jr_001_5623:
    dec sp
    ld d, [hl]
    ld [hl], $57
    ld sp, $8c58
    ld e, b
    rst $20

jr_001_562c:
    ld e, b

jr_001_562d:
    ld e, c
    ld e, c
    bit 3, c
    ld d, h
    ld e, d
    ld [hl+], a
    ld e, e
    sub h
    ld e, e
    xor l
    ld d, [hl]
    xor b
    ld d, a
    inc b

jr_001_563c:
    inc b
    jr nz, jr_001_565f

    jr nz, jr_001_568a

    ld l, [hl]
    jr nz, jr_001_568b

jr_001_5644:
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_5696

jr_001_5649:
    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, jr_001_566e

    jr nz, jr_001_5655

    nop
    inc b
    jr nz, jr_001_5674

    ld d, d

jr_001_5655:
    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, @+$56

    ld l, a
    jr nz, @+$49

jr_001_565f:
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_5684

    dec b
    nop
    ld l, c
    db $10
    inc b
    jr nz, jr_001_568b

jr_001_566b:
    jr nz, jr_001_56b4

    ld h, c

jr_001_566e:
    ld l, l
    ld h, l
    jr nz, jr_001_56c6

    ld [hl], d
    ld h, c

jr_001_5674:
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, @+$22

    jr nz, @+$07

    nop
    ld bc, $0400
    jr nz, jr_001_56a2

    jr nz, @+$22

jr_001_5684:
    jr nz, jr_001_56d9

    ld l, [hl]
    ld h, c
    ld [hl], b
    ld d, e

jr_001_568a:
    ld l, b

jr_001_568b:
    ld l, a
    ld [hl], h
    jr nz, jr_001_56af

jr_001_568f:
    jr nz, jr_001_56b1

    jr nz, @+$07

    nop
    ld [bc], a
    nop

jr_001_5696:
    inc b
    jr nz, jr_001_56b9

    jr nz, jr_001_56bb

    jr nz, jr_001_56ef

    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], d

jr_001_56a2:
    ld h, l
    jr nz, @+$22

    jr nz, jr_001_56c7

    jr nz, jr_001_56c9

    dec b
    nop
    inc bc
    nop
    dec b
    inc b

jr_001_56af:
    jr nz, jr_001_56d1

jr_001_56b1:
    jr nz, jr_001_56fc

    ld l, [hl]

jr_001_56b4:
    jr nz, jr_001_56fd

    ld h, c
    ld l, l
    ld h, l

jr_001_56b9:
    jr nz, jr_001_5708

jr_001_56bb:
    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, jr_001_56e0

    jr nz, jr_001_56c7

    nop
    inc b
    jr nz, jr_001_56e6

jr_001_56c6:
    ld d, d

jr_001_56c7:
    ld h, l
    ld [hl], h

jr_001_56c9:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_001_5722

    ld l, a
    jr nz, @+$49

jr_001_56d1:
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_56f6

    dec b
    nop
    ld l, c

jr_001_56d9:
    db $10
    inc b
    jr nz, jr_001_56fd

    jr nz, jr_001_5726

    ld h, c

jr_001_56e0:
    ld l, l
    ld h, l
    jr nz, jr_001_5738

    ld [hl], d
    ld h, c

jr_001_56e6:
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, @+$22

    jr nz, @+$07

    nop

jr_001_56ef:
    dec bc
    nop
    inc b
    jr nz, jr_001_5714

    jr nz, @+$22

jr_001_56f6:
    jr nz, jr_001_574b

    ld l, [hl]
    ld h, c
    ld [hl], b
    ld d, e

jr_001_56fc:
    ld l, b

jr_001_56fd:
    ld l, a
    ld [hl], h
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$07

    nop
    ld [bc], a
    nop

jr_001_5708:
    inc b
    jr nz, jr_001_572b

    jr nz, jr_001_572d

    jr nz, jr_001_5761

    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], d

jr_001_5714:
    ld h, l
    jr nz, jr_001_5737

    jr nz, @+$22

    jr nz, @+$22

    dec b
    nop
    inc bc
    nop
    inc b
    jr nz, jr_001_5742

jr_001_5722:
    jr nz, jr_001_577a

    ld l, c
    ld h, l

jr_001_5726:
    ld [hl], a
    jr nz, jr_001_577b

    ld h, l
    ld [hl], e

jr_001_572b:
    ld [hl], l
    ld l, h

jr_001_572d:
    ld [hl], h
    ld [hl], e
    jr nz, jr_001_5751

    jr nz, jr_001_5738

    nop
    ld b, e
    ld d, d
    inc b

jr_001_5737:
    inc b

jr_001_5738:
    jr nz, jr_001_575a

    jr nz, jr_001_5783

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_5795

    ld [hl], d

jr_001_5742:
    ld h, c
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, @+$22

    jr nz, jr_001_5750

jr_001_574b:
    nop
    inc b
    jr nz, jr_001_576f

    ld d, d

jr_001_5750:
    ld h, l

jr_001_5751:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, @+$56

    ld l, a
    jr nz, jr_001_57a1

jr_001_575a:
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_577f

    dec b
    nop

jr_001_5761:
    ld l, c
    db $10
    inc b
    ld b, d
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_001_57be

    ld l, a
    jr nz, @+$4f

    ld h, c
    ld l, c

jr_001_576f:
    ld l, [hl]
    jr nz, jr_001_57bf

    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, @+$07

    nop
    nop
    nop

jr_001_577a:
    inc b

jr_001_577b:
    jr nz, jr_001_579d

    jr nz, jr_001_57ca

jr_001_577f:
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, [hl]

jr_001_5783:
    jr nz, @+$58

    ld h, c
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, @+$22

    jr nz, @+$22

    dec b
    nop
    inc b
    nop
    inc b
    jr nz, jr_001_57b4

    ld d, l

jr_001_5795:
    ld l, [hl]
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_001_57f3

jr_001_579d:
    ld h, c
    ld l, h
    ld [hl], l
    ld h, l

jr_001_57a1:
    jr nz, jr_001_57c3

    jr nz, jr_001_57aa

    nop
    dec b
    nop
    dec b
    inc b

jr_001_57aa:
    jr nz, jr_001_57cc

    jr nz, jr_001_57f5

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_5807

    ld [hl], d

jr_001_57b4:
    ld h, c
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, @+$22

    jr nz, jr_001_57c2

    nop

jr_001_57be:
    inc b

jr_001_57bf:
    jr nz, jr_001_57e1

    ld d, d

jr_001_57c2:
    ld h, l

jr_001_57c3:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_001_581d

    ld l, a

jr_001_57ca:
    jr nz, jr_001_5813

jr_001_57cc:
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_57f1

    dec b
    nop
    ld l, c
    db $10
    inc b
    ld b, d
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_001_5830

    ld l, a
    jr nz, jr_001_582c

    ld h, c
    ld l, c

jr_001_57e1:
    ld l, [hl]
    jr nz, jr_001_5831

    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, @+$07

    nop
    nop
    nop
    inc b
    jr nz, jr_001_580f

    jr nz, jr_001_583c

jr_001_57f1:
    ld l, [hl]
    ld l, a

jr_001_57f3:
    ld [hl], a
    ld l, [hl]

jr_001_57f5:
    jr nz, jr_001_584d

    ld h, c
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, jr_001_581d

    jr nz, jr_001_581f

    dec b
    nop
    ld b, $00
    inc b
    jr nz, jr_001_5826

    ld d, l

jr_001_5807:
    ld l, [hl]
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_001_5865

jr_001_580f:
    ld h, c
    ld l, h
    ld [hl], l
    ld h, l

jr_001_5813:
    jr nz, jr_001_5835

    jr nz, @+$07

    nop
    rlca
    nop
    inc b
    jr nz, jr_001_583d

jr_001_581d:
    jr nz, jr_001_5875

jr_001_581f:
    ld l, c
    ld h, l
    ld [hl], a
    jr nz, jr_001_5876

    ld h, l
    ld [hl], e

jr_001_5826:
    ld [hl], l
    ld l, h
    ld [hl], h
    ld [hl], e
    jr nz, jr_001_584c

jr_001_582c:
    jr nz, jr_001_5833

    nop
    ld b, e

jr_001_5830:
    ld d, d

jr_001_5831:
    inc bc
    inc b

jr_001_5833:
    jr nz, jr_001_5855

jr_001_5835:
    jr nz, jr_001_5857

    jr nz, jr_001_588c

    ld l, [hl]
    ld h, c
    ld [hl], b

jr_001_583c:
    ld [hl], e

jr_001_583d:
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_001_5862

    jr nz, @+$22

    jr nz, jr_001_584b

    nop
    inc b
    jr nz, jr_001_586a

    ld d, d

jr_001_584b:
    ld h, l

jr_001_584c:
    ld [hl], h

jr_001_584d:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_001_58a6

    ld l, a
    jr nz, jr_001_589c

jr_001_5855:
    ld h, c
    ld l, l

jr_001_5857:
    ld h, l
    jr nz, jr_001_587a

    dec b
    nop
    ld l, c
    db $10
    inc b
    ld b, d
    ld h, c
    ld h, e

jr_001_5862:
    ld l, e
    jr nz, jr_001_58b9

jr_001_5865:
    ld l, a
    jr nz, jr_001_58b5

    ld h, c
    ld l, c

jr_001_586a:
    ld l, [hl]
    jr nz, jr_001_58ba

    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, @+$07

    nop
    nop
    nop

jr_001_5875:
    inc b

jr_001_5876:
    jr nz, jr_001_5898

    ld d, h
    ld h, c

jr_001_587a:
    ld l, e
    ld h, l
    jr nz, jr_001_58d1

    ld l, [hl]
    ld h, c
    ld [hl], b
    ld d, e
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_001_58a7

    jr nz, jr_001_588e

    nop
    ld l, h
    db $10

jr_001_588c:
    inc bc
    inc b

jr_001_588e:
    jr nz, jr_001_58b0

    jr nz, jr_001_58b2

    jr nz, jr_001_58e6

    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, a

jr_001_5898:
    ld [hl], d
    ld h, l
    jr nz, jr_001_58bc

jr_001_589c:
    jr nz, jr_001_58be

    jr nz, jr_001_58c0

    dec b
    nop
    inc b
    jr nz, jr_001_58c5

    ld d, d

jr_001_58a6:
    ld h, l

jr_001_58a7:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_001_5901

    ld l, a
    jr nz, jr_001_58f7

jr_001_58b0:
    ld h, c
    ld l, l

jr_001_58b2:
    ld h, l
    jr nz, jr_001_58d5

jr_001_58b5:
    dec b
    nop
    ld l, c
    db $10

jr_001_58b9:
    inc b

jr_001_58ba:
    ld b, d
    ld h, c

jr_001_58bc:
    ld h, e
    ld l, e

jr_001_58be:
    jr nz, jr_001_5914

jr_001_58c0:
    ld l, a
    jr nz, jr_001_5910

    ld h, c
    ld l, c

jr_001_58c5:
    ld l, [hl]
    jr nz, jr_001_5915

    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, @+$07

    nop
    nop
    nop
    inc b

jr_001_58d1:
    jr nz, jr_001_5925

    ld h, l
    ld [hl], e

jr_001_58d5:
    ld [hl], h
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_001_592e

    ld l, [hl]
    ld h, c
    ld [hl], b
    ld d, e
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_001_58e9

    nop
    ld l, a

jr_001_58e6:
    db $10
    inc b
    inc b

jr_001_58e9:
    ld c, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, @+$58

    ld h, c
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, jr_001_5949

    ld h, l

jr_001_58f7:
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    dec b
    nop
    inc b
    jr nz, jr_001_5920

    ld d, d

jr_001_5901:
    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, @+$56

    ld l, a
    jr nz, jr_001_5952

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_5930

jr_001_5910:
    dec b
    nop
    ld l, c
    db $10

jr_001_5914:
    inc b

jr_001_5915:
    ld b, d
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_001_596f

    ld l, a
    jr nz, @+$4f

    ld h, c
    ld l, c

jr_001_5920:
    ld l, [hl]
    jr nz, jr_001_5970

    ld h, l
    ld l, [hl]

jr_001_5925:
    ld [hl], l
    jr nz, @+$07

    nop
    nop
    nop
    inc b
    jr nz, jr_001_594e

jr_001_592e:
    ld d, d
    ld h, l

jr_001_5930:
    ld [hl], e
    ld h, l
    ld [hl], h
    jr nz, jr_001_5989

    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_001_595d

    jr nz, @+$07

    nop
    ld [hl], l
    db $10
    inc b
    jr nz, @+$22

    jr nz, jr_001_599a

    ld h, l
    ld h, c

jr_001_5949:
    ld [hl], d
    ld h, e
    ld l, b
    jr nz, jr_001_59a4

jr_001_594e:
    ld h, c
    ld l, h
    ld [hl], l
    ld h, l

jr_001_5952:
    jr nz, jr_001_5974

    jr nz, jr_001_595b

    nop
    ld a, [$044f]
    inc b

jr_001_595b:
    jr nz, jr_001_597d

jr_001_595d:
    ld d, l
    ld l, [hl]
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_001_59bc

    ld h, c
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, @+$22

    jr nz, jr_001_5973

    nop

jr_001_596f:
    inc b

jr_001_5970:
    jr nz, jr_001_5992

    ld d, d

jr_001_5973:
    ld h, l

jr_001_5974:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, @+$56

    ld l, a
    jr nz, jr_001_59c4

jr_001_597d:
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_59a2

    dec b
    nop
    ld l, c
    db $10
    inc b
    ld b, d
    ld h, c

jr_001_5989:
    ld h, e
    ld l, e
    jr nz, jr_001_59e1

    ld l, a
    jr nz, jr_001_59dd

    ld h, c

Call_001_5991:
    ld l, c

jr_001_5992:
    ld l, [hl]
    jr nz, jr_001_59e2

    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, @+$07

jr_001_599a:
    nop
    nop
    nop
    inc b
    jr nz, jr_001_59c0

    ld d, d
    ld h, l

jr_001_59a2:
    ld [hl], e
    ld h, l

jr_001_59a4:
    ld [hl], h
    jr nz, jr_001_59fb

    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_001_59cf

    jr nz, @+$07

    nop
    ld [hl], l
    db $10
    inc b
    jr nz, jr_001_59d7

    jr nz, jr_001_59d9

    jr nz, jr_001_59db

    ld d, e

jr_001_59bc:
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h

jr_001_59c0:
    jr nz, jr_001_59e2

    jr nz, jr_001_59e4

jr_001_59c4:
    jr nz, jr_001_59e6

    jr nz, jr_001_59cd

    nop
    ld c, [hl]
    ld c, [hl]
    dec b
    inc b

jr_001_59cd:
    jr nz, jr_001_59ef

jr_001_59cf:
    jr nz, jr_001_5a1c

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_001_5a2d

jr_001_59d7:
    ld h, c
    ld l, h

jr_001_59d9:
    ld [hl], l
    ld h, l

jr_001_59db:
    jr nz, jr_001_59fd

jr_001_59dd:
    jr nz, jr_001_59ff

    dec b
    nop

jr_001_59e1:
    inc b

jr_001_59e2:
    jr nz, jr_001_5a04

jr_001_59e4:
    ld d, d
    ld h, l

jr_001_59e6:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_001_5a40

    ld l, a
    jr nz, jr_001_5a36

jr_001_59ef:
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_5a14

    dec b
    nop
    ld l, c
    db $10
    inc b
    ld b, d
    ld h, c

jr_001_59fb:
    ld h, e
    ld l, e

jr_001_59fd:
    jr nz, jr_001_5a53

jr_001_59ff:
    ld l, a
    jr nz, jr_001_5a4f

    ld h, c
    ld l, c

jr_001_5a04:
    ld l, [hl]
    jr nz, jr_001_5a54

    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, @+$07

    nop
    ld a, [bc]
    nop
    inc b
    jr nz, jr_001_5a32

    ld d, d
    ld h, l

jr_001_5a14:
    ld [hl], e
    ld h, l
    ld [hl], h
    jr nz, jr_001_5a6d

    ld [hl], d
    ld h, c
    ld l, c

jr_001_5a1c:
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, @+$22

    jr nz, @+$07

    nop
    ld [hl], l
    db $10
    inc b
    jr nz, jr_001_5a49

    jr nz, jr_001_5a7e

    ld h, l
    ld h, c

jr_001_5a2d:
    ld [hl], d
    ld h, e
    ld l, b
    jr nz, jr_001_5a88

jr_001_5a32:
    ld h, c
    ld l, h
    ld [hl], l
    ld h, l

jr_001_5a36:
    jr nz, @+$22

    jr nz, @+$07

    nop
    ld a, [$044f]
    jr nz, @+$22

jr_001_5a40:
    jr nz, jr_001_5a98

    ld l, c
    ld h, l
    ld [hl], a
    jr nz, jr_001_5a99

    ld h, l
    ld [hl], e

jr_001_5a49:
    ld [hl], l
    ld l, h
    ld [hl], h
    ld [hl], e
    jr nz, jr_001_5a6f

jr_001_5a4f:
    jr nz, @+$07

    nop
    ld b, e

jr_001_5a53:
    ld d, d

jr_001_5a54:
    ld [$2004], sp
    jr nz, jr_001_5aae

    ld l, [hl]
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_001_5ab7

    ld h, c
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, @+$22

    jr nz, jr_001_5a6e

    nop
    inc b
    jr nz, jr_001_5a8d

jr_001_5a6d:
    ld d, d

jr_001_5a6e:
    ld h, l

jr_001_5a6f:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_001_5ac9

    ld l, a
    jr nz, jr_001_5abf

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_5a9d

    dec b

jr_001_5a7e:
    nop
    ld l, c
    db $10
    inc b

Jump_001_5a82:
    ld b, d
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_001_5adc

jr_001_5a88:
    ld l, a
    jr nz, @+$4f

    ld h, c
    ld l, c

jr_001_5a8d:
    ld l, [hl]
    jr nz, jr_001_5add

    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, @+$07

    nop
    ld a, [bc]
    nop

jr_001_5a98:
    inc b

jr_001_5a99:
    jr nz, jr_001_5abb

    ld d, d
    ld h, l

jr_001_5a9d:
    ld [hl], e
    ld h, l
    ld [hl], h
    jr nz, @+$56

    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_001_5aca

    jr nz, jr_001_5ab1

    nop
    ld [hl], l

jr_001_5aae:
    db $10
    inc b
    ld b, a

jr_001_5ab1:
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d

jr_001_5ab7:
    jr nz, @+$56

    ld l, b
    ld h, c

jr_001_5abb:
    ld l, [hl]
    jr nz, jr_001_5b0a

    ld h, c

jr_001_5abf:
    ld [hl], e
    ld [hl], h
    jr nz, @+$07

    nop
    ld e, b
    ld d, l
    inc b
    jr nz, jr_001_5ae9

jr_001_5ac9:
    ld c, h

jr_001_5aca:
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_001_5b23

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_001_5b20

    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_001_5af9

    dec b
    nop
    ld d, e

jr_001_5adc:
    ld d, l

jr_001_5add:
    inc b
    ld b, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_001_5b3d

jr_001_5ae9:
    ld l, a
    jr nz, jr_001_5b38

    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, @+$07

    nop
    ld c, [hl]
    ld d, l
    inc b
    jr nz, jr_001_5b17

    ld b, l
    ld [hl], c

jr_001_5af9:
    ld [hl], l
    ld h, c
    ld l, h
    jr nz, jr_001_5b52

    ld l, a
    jr nz, jr_001_5b4d

    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_001_5b26

    jr nz, @+$07

    nop
    ld b, l

jr_001_5b0a:
    ld d, l
    inc b
    jr nz, jr_001_5b2e

    jr nz, jr_001_5b66

Call_001_5b10:
    ld l, c
    ld h, l
    ld [hl], a
    jr nz, jr_001_5b67

    ld h, l

Jump_001_5b16:
    ld [hl], e

jr_001_5b17:
    ld [hl], l
    ld l, h
    ld [hl], h
    ld [hl], e
    jr nz, jr_001_5b3d

    jr nz, jr_001_5b24

    nop

jr_001_5b20:
    ld b, e
    ld d, d
    inc b

jr_001_5b23:
    inc b

jr_001_5b24:
    jr nz, jr_001_5b46

jr_001_5b26:
    jr nz, jr_001_5b73

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_001_5b84

jr_001_5b2e:
    ld h, c
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, jr_001_5b54

    jr nz, jr_001_5b56

    dec b
    nop

jr_001_5b38:
    inc b
    jr nz, jr_001_5b5b

    ld d, d
    ld h, l

jr_001_5b3d:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, @+$56

    ld l, a
    jr nz, jr_001_5b8d

jr_001_5b46:
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_5b6b

    dec b
    nop

jr_001_5b4d:
    ld l, c
    db $10
    inc b
    ld b, d
    ld h, c

jr_001_5b52:
    ld h, e
    ld l, e

jr_001_5b54:
    jr nz, jr_001_5baa

jr_001_5b56:
    ld l, a
    jr nz, @+$4f

    ld h, c
    ld l, c

jr_001_5b5b:
    ld l, [hl]
    jr nz, jr_001_5bab

    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, @+$07

    nop
    ld a, [bc]
    nop

jr_001_5b66:
    inc b

jr_001_5b67:
    jr nz, jr_001_5b89

    ld d, d
    ld h, l

jr_001_5b6b:
    ld [hl], e
    ld h, l
    ld [hl], h
    jr nz, jr_001_5bc4

    ld [hl], d
    ld h, c
    ld l, c

jr_001_5b73:
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_001_5b98

    jr nz, @+$07

    nop
    ld [hl], l
    db $10
    inc b
    jr nz, @+$22

    jr nz, jr_001_5bd8

    ld l, c
    ld h, l

jr_001_5b84:
    ld [hl], a
    jr nz, jr_001_5bd9

    ld h, l
    ld [hl], e

jr_001_5b89:
    ld [hl], l
    ld l, h
    ld [hl], h
    ld [hl], e

jr_001_5b8d:
    jr nz, jr_001_5baf

    jr nz, jr_001_5b96

    nop
    ld b, e
    ld d, d
    inc b
    inc b

jr_001_5b96:
    jr nz, jr_001_5bb8

jr_001_5b98:
    ld d, l
    ld l, [hl]
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_001_5bf7

    ld h, c
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, @+$22

    jr nz, jr_001_5bae

    nop

jr_001_5baa:
    inc b

jr_001_5bab:
    jr nz, jr_001_5bcd

    ld d, d

jr_001_5bae:
    ld h, l

jr_001_5baf:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_001_5c09

    ld l, a
    jr nz, jr_001_5bff

jr_001_5bb8:
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_5bdd

    dec b
    nop
    ld l, c
    db $10
    inc b
    ld b, d
    ld h, c

jr_001_5bc4:
    ld h, e
    ld l, e
    jr nz, @+$56

    ld l, a
    jr nz, @+$4f

    ld h, c
    ld l, c

jr_001_5bcd:
    ld l, [hl]
    jr nz, @+$4f

    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, @+$07

    nop
    ld a, [bc]
    nop

jr_001_5bd8:
    inc b

jr_001_5bd9:
    jr nz, jr_001_5bfb

    ld d, d
    ld h, l

jr_001_5bdd:
    ld [hl], e
    ld h, l
    ld [hl], h
    jr nz, @+$56

    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_001_5c0a

    jr nz, @+$07

    nop
    ld [hl], l
    db $10
    inc b
    jr nz, @+$22

    jr nz, @+$58

    ld l, c
    ld h, l
    ld [hl], a

jr_001_5bf7:
    jr nz, jr_001_5c4b

    ld h, l
    ld [hl], e

jr_001_5bfb:
    ld [hl], l
    ld l, h
    ld [hl], h
    ld [hl], e

jr_001_5bff:
    jr nz, jr_001_5c21

    jr nz, jr_001_5c08

    nop
    ld b, e
    ld d, d

Call_001_5c06:
jr_001_5c06:
    ld a, [bc]
    ld [hl+], a

jr_001_5c08:
    inc bc

jr_001_5c09:
    dec de

jr_001_5c0a:
    ld a, d
    or e
    jr nz, jr_001_5c06

    ret


    ld a, $00
    ld [$0000], a
    ld a, $5e
    ld [$7b5c], a
    ld a, $7b
    ld [$7b5d], a
    jp Jump_001_7b51


jr_001_5c21:
    ldh a, [rSVBK]
    push af
    ld a, $00
    ldh [rSVBK], a
    ld a, $00
    ld [$0000], a
    pop af
    ldh [rSVBK], a
    ld a, $5e
    ld [$7b5c], a
    ld a, $7b
    ld [$7b5d], a
    jp Jump_001_7b51


    ld a, [$7fe2]
    push af
    ld a, $01
    ld [$7fe5], a
    ld a, $01
    ld [$6000], a

jr_001_5c4b:
    ld a, $02
    ld [$4000], a
    ld a, $00
    ld [$0000], a
    pop af
    ld [$4000], a
    ld a, $00
    ld [$7fe5], a
    ld a, $5e
    ld [$7b5c], a
    ld a, $7b
    ld [$7b5d], a
    jp Jump_001_7b51


    ld a, [$0000]
    or a
    jr z, jr_001_5c78

    ld a, $10
    ld [$7fe3], a
    jr jr_001_5c7d

jr_001_5c78:
    ld a, $00
    ld [$7fe3], a

jr_001_5c7d:
    ld a, $5e
    ld [$7b5c], a
    ld a, $7b
    ld [$7b5d], a
    jp Jump_001_7b51


    ld b, $19
    ld de, $0004
    ld hl, $7900

Jump_001_5c92:
    ld a, [hl]
    cp $80
    jp c, Jump_001_5cd1

    cp $90
    jp nc, Jump_001_5cd1

    push af
    push bc
    push de
    push hl
    ld a, $01
    ld [$7fe5], a
    ld a, $0a
    ld [$0000], a
    ld a, [hl+]
    and $7f
    ld [$4000], a
    ld a, $00
    ld [$7fe5], a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    pop hl
    ld a, $01
    ld [$7fe5], a
    ld a, b
    ld [hl], a
    ld a, $00
    ld [$7fe5], a
    pop hl
    pop de
    pop bc
    pop af
    ld de, $0004

Jump_001_5cd1:
    add hl, de
    ld de, $0004
    dec b
    jp nz, Jump_001_5c92

    ret


    ld hl, $0503
    ld de, $7b5b
    ld bc, $0006
    call Call_000_007a
    ld hl, $7b5e
    ld a, l
    ld [$7a5d], a
    ld a, h
    ld [$7a5e], a
    ld c, $00
    ld a, c
    ld [$7a5c], a
    ld b, $28
    ld hl, $7900

Jump_001_5cfc:
    ld a, [hl+]
    cp $01
    jp nz, Jump_001_5d63

    push bc
    push hl
    ld bc, $5c0f
    ld de, $0012
    ld a, [$7a5d]
    ld l, a
    ld a, [$7a5e]
    ld h, a
    call Call_001_5c06
    pop hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    push hl
    ld a, [$7a5d]
    ld l, a
    ld a, [$7a5e]
    ld h, a
    inc hl
    ld [hl], b
    inc hl
    inc hl
    ld [hl], c
    inc hl
    ld [hl], d
    ld a, [$7a5c]
    or a
    jr z, jr_001_5d46

    ld a, [$7a5d]
    ld l, a
    ld c, a
    ld a, [$7a5e]
    ld h, a
    ld b, a
    ld de, $fff4
    add hl, de
    ld [hl], c
    ld de, $0005
    add hl, de
    ld [hl], b

jr_001_5d46:
    ld a, [$7a5d]
    ld l, a
    ld a, [$7a5e]
    ld h, a
    ld de, $0012
    add hl, de
    ld a, l
    ld [$7a5d], a
    ld a, h
    ld [$7a5e], a
    pop hl
    pop bc
    inc c
    ld a, c
    ld [$7a5c], a
    jr jr_001_5d67

Jump_001_5d63:
    ld de, $0004
    add hl, de

jr_001_5d67:
    dec b
    jp nz, Jump_001_5cfc

    ld a, [$7a5c]
    ld c, a
    ld b, $28
    ld hl, $7900

Jump_001_5d74:
    ld a, [hl]
    cp $90
    jp c, Jump_001_5def

    cp $a0
    jp nc, Jump_001_5def

    push bc
    push hl
    ld bc, $5c21
    ld de, $001c
    ld a, [$7a5d]
    ld l, a
    ld a, [$7a5e]
    ld h, a
    call Call_001_5c06
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    push hl
    ld a, [$7a5d]
    ld l, a
    ld a, [$7a5e]
    ld h, a
    push de
    ld de, $0004
    add hl, de
    pop de
    ld a, e
    and $0f
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], b
    inc hl
    inc hl
    ld [hl], c
    inc hl
    ld [hl], d
    ld a, [$7a5c]
    or a
    jr z, jr_001_5dd2

    ld a, [$7a5d]
    ld l, a
    ld c, a
    ld a, [$7a5e]
    ld h, a
    ld b, a
    ld de, $fff4
    add hl, de
    ld [hl], c
    ld de, $0005
    add hl, de
    ld [hl], b

jr_001_5dd2:
    ld a, [$7a5d]
    ld l, a
    ld a, [$7a5e]
    ld h, a
    ld de, $001c
    add hl, de
    ld a, l
    ld [$7a5d], a
    ld a, h
    ld [$7a5e], a
    pop hl
    pop bc
    inc c
    ld a, c
    ld [$7a5c], a
    jr jr_001_5df3

Jump_001_5def:
    ld de, $0004
    add hl, de

jr_001_5df3:
    dec b
    jp nz, Jump_001_5d74

    ld a, $00
    ld [$7a5f], a
    ld [$7a60], a
    ld [$7a61], a
    ld a, [$7a5c]
    ld c, a
    ld b, $28
    ld de, $0004
    ld hl, $7900

Jump_001_5e0e:
    ld a, [hl]
    cp $f0
    jp nz, Jump_001_5e2d

    push hl
    inc hl
    inc hl
    ld a, [hl+]
    ld [$7a60], a
    ld a, [hl+]
    ld [$7a5f], a
    pop hl
    ld a, $01
    ld [$7a61], a
    inc c
    ld a, c
    ld [$7a5c], a
    ld de, $0000

Jump_001_5e2d:
    add hl, de
    ld de, $0004
    dec b
    jp nz, Jump_001_5e0e

    ld a, $01
    ld [$7a62], a
    ld a, [$7a5c]
    ld c, a
    ld b, $28
    ld de, $0004
    ld hl, $7900

Jump_001_5e46:
    ld a, [hl]
    cp $f1
    jp nz, Jump_001_5e59

    ld a, $00
    ld [$7a62], a
    inc c
    ld a, c
    ld [$7a5c], a
    ld de, $0004

Jump_001_5e59:
    add hl, de
    ld de, $0004
    dec b
    jp nz, Jump_001_5e46

    ret


    ld de, $8013
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    dec d
    rla
    nop
    ld [de], a
    inc d
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld d, $18
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    inc b
    jr nz, jr_001_5ec4

    jr nz, jr_001_5ec6

    jr nz, jr_001_5ec8

    jr nz, jr_001_5eca

    dec b
    inc b
    jr nz, jr_001_5ece

    jr nz, jr_001_5ed0

    jr nz, jr_001_5ed2

    jr nz, jr_001_5ed4

    dec b
    nop
    inc b
    jr nz, jr_001_5efa

    ld h, e
    ld [hl], h
    ld l, c
    db $76
    ld h, l
    jr nz, jr_001_5ec5

    inc b
    ld d, b
    ld l, a
    ld [hl], e

jr_001_5ec4:
    ld [hl], e

jr_001_5ec5:
    ld l, c

jr_001_5ec6:
    ld h, d
    ld l, h

jr_001_5ec8:
    ld h, l
    dec b

jr_001_5eca:
    nop
    ld b, $07
    rlca

jr_001_5ece:
    rlca
    rlca

jr_001_5ed0:
    rlca
    rlca

jr_001_5ed2:
    rlca
    rlca

jr_001_5ed4:
    ld [$0706], sp
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0400], sp
    ld b, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_001_5f3b

    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    jr nz, @+$58

    ld h, c
    ld l, h
    ld [hl], l
    ld h, l
    dec b
    nop
    inc b
    jr nz, @+$47

    ld l, [hl]
    ld [hl], h

jr_001_5efa:
    ld h, l
    ld [hl], d
    jr nz, jr_001_5f4c

    ld h, l
    ld [hl], a
    jr nz, jr_001_5f58

    ld h, c
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, @+$22

    dec b
    nop
    inc b
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$32

    jr nc, @+$32

    jr nz, @+$3f

    jr nz, @+$32

    jr nc, jr_001_5f39

    jr nz, jr_001_5f3b

    jr nz, @+$22

    dec b
    nop
    inc b
    jr nz, @+$32

    jr nz, jr_001_5f44

    jr nz, jr_001_5f46

    ld sp, $2020
    jr nz, @+$22

    ld [hl-], a
    jr nz, jr_001_5f4e

    jr nz, jr_001_5f50

    inc sp
    jr nz, @+$07

    nop
    inc b
    jr nz, jr_001_5f6b

    jr nz, @+$22

jr_001_5f39:
    jr nz, jr_001_5f5b

jr_001_5f3b:
    dec [hl]
    jr nz, jr_001_5f5e

    jr nz, @+$22

    ld [hl], $20
    jr nz, @+$22

jr_001_5f44:
    jr nz, jr_001_5f7d

jr_001_5f46:
    jr nz, @+$07

    nop
    inc b
    jr nz, @+$3a

jr_001_5f4c:
    jr nz, @+$22

jr_001_5f4e:
    jr nz, jr_001_5f70

jr_001_5f50:
    add hl, sp
    jr nz, jr_001_5f73

    jr nz, @+$22

    ld b, c
    jr nz, jr_001_5f78

jr_001_5f58:
    jr nz, jr_001_5f7a

    ld b, d

jr_001_5f5b:
    jr nz, @+$07

    nop

jr_001_5f5e:
    inc b
    jr nz, jr_001_5fa4

    jr nz, jr_001_5f83

    jr nz, jr_001_5f85

    ld b, h
    jr nz, jr_001_5f88

    jr nz, @+$22

    ld b, l

jr_001_5f6b:
    jr nz, jr_001_5f8d

    jr nz, jr_001_5f8f

    ld b, [hl]

jr_001_5f70:
    jr nz, @+$07

    nop

jr_001_5f73:
    inc b
    jr nz, @+$3e

    jr nz, jr_001_5f98

jr_001_5f78:
    jr nz, jr_001_5f9a

jr_001_5f7a:
    jr nz, @+$46

    ld c, a

jr_001_5f7d:
    ld c, [hl]
    ld b, l
    jr nz, jr_001_5fa1

    jr nz, jr_001_5fa3

jr_001_5f83:
    jr nz, jr_001_5fc3

jr_001_5f85:
    jr nz, jr_001_5f8c

    nop

jr_001_5f88:
    ld bc, $0202
    ld [bc], a

jr_001_5f8c:
    ld [bc], a

jr_001_5f8d:
    ld [bc], a
    ld [bc], a

jr_001_5f8f:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_001_5f98:
    ld [bc], a
    ld [bc], a

jr_001_5f9a:
    ld [bc], a
    inc bc
    nop
    ld b, $07
    rlca
    rlca

jr_001_5fa1:
    rlca
    rlca

jr_001_5fa3:
    rlca

jr_001_5fa4:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0400], sp
    jr nz, jr_001_5fd5

    jr nz, jr_001_5fd7

    jr nz, jr_001_5fd9

    jr nz, jr_001_5fdb

    jr nz, jr_001_5fdd

    jr nz, jr_001_5fdf

    jr nz, jr_001_5fe1

    jr nz, jr_001_5fe3

jr_001_5fc3:
    jr nz, jr_001_5fe5

    dec b
    nop
    jr nz, jr_001_5fe9

    jr nz, jr_001_5feb

    jr nz, jr_001_5fed

    jr nz, jr_001_5fef

    jr nz, jr_001_5ff1

    jr nz, jr_001_5ff3

    jr nz, jr_001_5ff5

jr_001_5fd5:
    jr nz, jr_001_5ff7

jr_001_5fd7:
    jr nz, jr_001_5ff9

jr_001_5fd9:
    jr nz, jr_001_5ffb

jr_001_5fdb:
    nop
    inc b

jr_001_5fdd:
    jr nz, jr_001_5fff

jr_001_5fdf:
    jr nz, @+$22

jr_001_5fe1:
    jr nz, @+$32

jr_001_5fe3:
    jr nc, @+$32

jr_001_5fe5:
    jr nc, jr_001_6017

    jr nc, jr_001_6019

jr_001_5fe9:
    jr nc, jr_001_600b

jr_001_5feb:
    jr nz, @+$22

jr_001_5fed:
    jr nz, jr_001_600f

jr_001_5fef:
    dec b
    nop

jr_001_5ff1:
    nop
    nop

jr_001_5ff3:
    nop
    nop

jr_001_5ff5:
    nop
    nop

jr_001_5ff7:
    nop
    nop

jr_001_5ff9:
    nop
    nop

jr_001_5ffb:
    nop
    nop
    nop
    nop

jr_001_5fff:
    nop
    ld b, $08

jr_001_6002:
    push bc
    push hl
    call Call_001_780f
    pop hl
    pop bc
    inc h
    inc h

jr_001_600b:
    dec b
    jr nz, jr_001_6002

    ret


jr_001_600f:
    ld a, $02
    ld [$7fe1], a
    ld bc, $5555

jr_001_6017:
    ld a, $aa

jr_001_6019:
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

jr_001_6035:
    ld c, a
    ld a, [$0000]
    and $40
    cp c
    jr nz, jr_001_6035

    ld bc, $0200

jr_001_6041:
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

jr_001_6062:
    ld c, a
    ld a, [$0000]
    and $40
    cp c
    jr nz, jr_001_6062

    pop bc
    dec bc
    ld a, c
    or b
    jr nz, jr_001_6041

    ld a, $02
    ld [$7fe1], a
    ret


    ld a, $02
    ld [$7fe1], a
    ld a, $aa
    ld [$5555], a
    ld a, $55
    ld [$2aaa], a
    ld a, $90
    ld [$5555], a
    ld a, [$0000]
    ld l, a
    ld a, [$0001]
    ld h, a
    ld a, $f0
    ld [$0000], a
    ret


jr_001_6099:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_6099

    ld [hl], e
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_001_6099

    ret


    ld a, [$7a22]
    or a
    jr z, jr_001_60be

    ld a, $01
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $2000
    ld e, c
    call Call_001_4099
    xor a
    ldh [rVBK], a

jr_001_60be:
    ld hl, $8000
    ld bc, $2000
    ld e, c
    call Call_001_4099
    ret


    ld a, $01
    ld [$7fe5], a
    ld [$2000], a
    xor a
    ldh [rSVBK], a
    ld [$7fe5], a
    ret


    ld hl, $40e7
    ld de, $d000
    ld bc, $0099
    call Call_000_007a
    jp $d000


    call Call_000_102d
    xor a
    ld [$7a4e], a
    call Call_000_001b
    ld de, $0117
    ld hl, $0800
    call Call_000_00ce
    ld a, $a9
    ld [$7a9f], a
    call Call_000_0700
    ld a, $a0
    ld [$7a9d], a
    ld hl, $c000
    call Call_000_1015
    ld hl, $7a00
    ld de, $c004
    ld b, $0f

jr_001_6115:
    ld a, [de]
    inc e
    cp [hl]
    jr z, jr_001_6127

jr_001_611a:
    ld l, $96
    call Call_000_06e3
    ld a, $03
    ld [$7fe1], a
    jp Jump_000_1171


jr_001_6127:
    inc l
    dec b
    jr nz, jr_001_6115

    ld a, [$c000]
    or a
    jp z, Jump_000_1171

    sub $0e
    jr z, jr_001_6160

    ld c, a
    ld a, [$7a9b]
    or a
    jr z, jr_001_611a

    ld l, $69
    call Call_000_06e3
    ld b, $00

jr_001_6144:
    push bc
    ld a, b
    rra
    and $7f
    ld [$75b0], a
    call $4543
    bit 0, b
    ld hl, $a000
    jr z, jr_001_6158

    ld h, $b0

jr_001_6158:
    call Call_000_1015
    pop bc
    inc b
    dec c
    jr nz, jr_001_6144

jr_001_6160:
    ld bc, $120e
    ld a, $c0
    ld [$7a9d], a

jr_001_6168:
    push bc
    ld a, b
    ld [$75b0], a
    ld hl, $c000
    call Call_000_1015
    pop bc
    inc b
    dec c
    jr nz, jr_001_6168

    ld a, $03
    ld [$7fe1], a
    jp Jump_000_1171


    ld a, [$7a15]
    cp $03
    jr c, jr_001_6189

    ld a, $04

jr_001_6189:
    ld [$7a51], a
    ld hl, $419b
    ld de, $7000
    ld bc, $00a1
    call Call_000_007a
    jp Jump_001_7000


    call Call_000_102d
    ld a, $02
    ld [$7fe1], a
    ld de, $0105
    ld hl, $0801
    call Call_000_00ce
    ld a, $09
    ld [$75b0], a
    ld a, $a5
    ld [$7a9f], a
    call Call_000_0700
    ld hl, $7a71
    ld a, [$7a51]
    add a
    add $0e
    ld [hl], a
    ld a, [$7a9b]
    or a
    jr nz, jr_001_61cb

    ld [hl], $0e

jr_001_61cb:
    inc l
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $7a00
    ld b, $0f

jr_001_61d5:
    ld a, [de]
    inc e
    ld [hl+], a
    dec b
    jr nz, jr_001_61d5

    ld hl, $7a71
    ld de, $0020
    ld b, d
    call Call_000_09dc
    ld a, [$7a9b]
    or a
    jr z, jr_001_6214

    ld a, [$7a51]
    add a
    jr z, jr_001_6214

    ld c, a
    ld b, $00

jr_001_61f4:
    push bc
    ld a, b
    rra
    and $7f
    ld [$75b0], a
    call $4543
    ld hl, $a000
    bit 0, b
    ld b, l
    jr z, jr_001_6209

    ld h, $b0

jr_001_6209:
    ld de, $1000
    call Call_000_09dc
    pop bc
    inc b
    dec c
    jr nz, jr_001_61f4

jr_001_6214:
    ld bc, $120e

jr_001_6217:
    push bc
    ld a, b
    rra
    and $7f
    ld [$75b0], a
    ld hl, $4000
    bit 0, b
    ld b, l
    jr z, jr_001_6229

    ld h, $50

jr_001_6229:
    ld de, $1000
    call Call_000_09dc
    pop bc
    inc b
    dec c
    jr nz, jr_001_6217

    ld a, $03
    ld [$7fe1], a
    jp Jump_000_1171


    and l
    inc e
    rst $28
    dec a
    or l
    ld d, [hl]
    rst $38
    ld a, a
    rst $28
    dec a
    or l
    ld d, [hl]
    ld a, e
    ld l, a
    rst $38
    ld a, a
    and l
    inc e
    ld [hl], e
    ld [bc], a
    add hl, de
    inc bc
    rst $18
    inc hl
    sub $62
    xor l
    ld b, c
    add $24
    and l
    inc e
    and l
    inc e
    rst $28
    dec a
    or l
    ld d, [hl]
    jr jr_001_62c7

    and l
    inc e
    rst $20
    inc e
    add hl, hl
    dec h
    rst $28
    dec a
    and l
    inc e
    and l
    inc e
    or l
    ld d, [hl]
    rst $38
    ld a, a
    ld c, d
    dec l
    add $1c
    ld b, d
    db $10
    ld b, d
    inc c
    and l
    inc e
    rst $28
    dec a
    or l
    ld d, [hl]
    rst $38
    ld a, a
    rst $28
    dec a
    or l
    ld d, [hl]
    ld a, e
    ld l, a
    rst $38
    ld a, a
    and l
    inc e
    ld [hl], e
    ld [bc], a
    add hl, de
    inc bc
    rst $18
    inc hl
    sub $62
    xor l
    ld b, c
    add $24
    and l
    inc e
    and l
    inc e
    rst $28
    dec a
    or l
    ld d, [hl]
    jr jr_001_6307

    and l
    inc e
    rst $20
    inc e
    add hl, hl
    dec h
    rst $28
    dec a
    and l
    inc e
    and l
    inc e
    or l
    ld d, [hl]
    rst $38
    ld a, a
    nop
    nop
    rra
    nop
    ccf
    ld [bc], a
    cp a
    inc sp
    rst $20
    inc e
    rst $28
    dec a
    or l
    ld d, [hl]
    rst $38
    ld a, a
    rst $28
    dec a
    or l

jr_001_62c7:
    ld d, [hl]
    ld a, e
    ld l, a
    rst $38
    ld a, a
    rst $20
    inc e
    ld [hl], e
    ld [bc], a
    add hl, de
    inc bc
    rst $18
    inc hl
    ld d, a
    ld [bc], a
    di
    ld bc, $0190
    dec l
    ld bc, $0257
    rst $28
    dec a
    or l
    ld d, [hl]
    jr jr_001_6347

    ld d, a
    ld [bc], a
    rst $20
    inc e
    add hl, hl
    dec h
    rst $28
    dec a
    nop
    ld a, h
    rst $28
    dec a
    or l
    ld d, [hl]
    rst $38
    ld a, a
    rst $20
    inc e
    ld c, d
    add hl, hl
    rst $28
    dec a
    or l
    ld d, [hl]
    inc d
    ld [de], a
    nop
    ld bc, $0302
    inc b
    nop
    ld bc, $0302

jr_001_6307:
    inc b
    nop
    ld bc, $0302
    inc b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0509], sp
    ld b, $07
    ld [$0509], sp
    ld b, $07
    ld [$0509], sp
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0f
    dec b
    db $10
    ld de, $0f12
    dec b
    db $10
    ld de, $0f12
    dec b
    db $10

jr_001_6347:
    ld de, $0f12
    dec b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    inc de
    inc d
    dec d
    ld d, $17
    inc de
    inc d
    dec d
    ld d, $17
    inc de
    inc d
    dec d
    ld d, $17
    ld [bc], a
    inc bc
    inc b
    nop
    ld bc, $0302
    inc b
    nop
    ld bc, $0302
    inc b
    nop
    ld bc, $0302
    inc b
    nop
    ld bc, $0807
    add hl, bc
    dec b
    ld b, $07
    ld [$0509], sp
    ld b, $07
    ld [$0509], sp
    ld b, $07
    ld [$0509], sp
    ld b, $0c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    db $10
    ld de, $0f12
    dec b
    db $10
    ld de, $0f12
    dec b
    db $10
    ld de, $0f12
    dec b
    db $10
    ld de, $0f12
    dec b
    dec d
    ld d, $17
    inc de
    inc d
    dec d
    ld d, $17
    inc de
    inc d
    dec d
    ld d, $17
    inc de
    inc d
    dec d
    ld d, $17
    inc de
    inc d
    nop
    ld bc, $0302
    inc b
    nop
    ld bc, $0302
    inc b
    nop
    ld bc, $0302
    inc b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0509], sp
    ld b, $07
    ld [$0509], sp
    ld b, $07
    ld [$0509], sp
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0f
    dec b
    db $10
    ld de, $0f12
    dec b
    db $10
    ld de, $0f12
    dec b
    db $10
    ld de, $0f12
    dec b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    inc de
    inc d
    dec d
    ld d, $17
    inc de
    inc d
    dec d
    ld d, $17
    inc de
    inc d
    dec d
    ld d, $17
    ld [bc], a
    inc bc
    inc b
    nop
    ld bc, $0302
    inc b
    nop
    ld bc, $0302
    inc b
    nop
    ld bc, $0302
    inc b
    nop
    ld bc, $0807
    add hl, bc
    dec b
    ld b, $07
    ld [$0509], sp
    ld b, $07
    ld [$0509], sp
    ld b, $07
    ld [$0509], sp
    ld b, $0c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0a
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop

jr_001_6476:
    nop
    nop
    inc b
    inc bc
    inc sp
    inc c
    add h
    ld a, b
    ld [$c0f0], sp
    jr nc, jr_001_6493

    nop
    nop
    nop
    rst $38
    nop
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_6493:
    nop
    cp $01
    nop
    nop
    ld h, b
    add b
    ld c, b
    jr nc, jr_001_64bf

    inc e
    ld bc, $101e
    rrca
    jr nz, jr_001_64c3

    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    ld h, b
    add b
    jr nz, jr_001_6476

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_64bf:
    nop
    nop
    nop
    nop

jr_001_64c3:
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$1f], a
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    adc b
    ld [hl], b
    sub a
    ld h, b
    nop
    add sp, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_001_64f0:
    nop
    ld a, a

jr_001_64f2:
    add b
    ccf

jr_001_64f4:
    ld b, b
    rra
    db $10
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_001_64f0

    jr nc, jr_001_64f2

    jr nz, jr_001_64f4

    ld [$97e7], sp
    ld h, b
    inc b
    ld a, b
    nop
    ccf
    jr nc, jr_001_6545

    ld d, b
    rrca
    db $10
    ld c, a
    db $10
    ld c, a
    ld b, b
    sbc a
    add b
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop

jr_001_6545:
    rst $38
    nop
    cp $00
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
    cp $02
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    inc c
    nop
    ld c, $00
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld d, b
    ccf
    jr nc, jr_001_6603

    or b
    ld a, a
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh [rTAC], a
    nop

jr_001_6598:
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    nop
    nop
    and b
    ld a, a
    ldh [$7f], a
    ld h, b
    rst $38
    ld b, d
    db $fc
    ld b, h
    ld hl, sp+$20
    ret nz

    add b
    nop
    nop
    nop
    jr nz, jr_001_6598

    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld hl, sp-$01
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_6603:
    rst $38
    ldh [rIE], a
    add b
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$7f]
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    dec e
    ei
    inc c
    ei
    inc c
    ei
    inc c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld b, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld a, [$e2fd]
    db $fd
    add d
    db $fd
    ld [bc], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    ld bc, $fffe
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $28
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$af]
    ld [hl], b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, @+$01

    jr @+$01

    jr @+$01

    jr jr_001_66b7

jr_001_66b7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $00
    jr c, jr_001_66c7

jr_001_66c7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    ld b, c
    rst $18
    ld hl, $01fe
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $e1
    cp l
    jp $877b


    rst $30
    rrca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rra
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$bf], a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld h, b
    sbc [hl]
    ld h, c
    sbc l
    ld h, e
    sbc a
    ld h, a
    cp a
    ld c, a
    rst $28
    rra
    rst $38
    rra
    ret nz

    ccf
    db $db
    ld l, h
    ei
    call nz, $c4bb
    ld a, e
    add h
    ld a, e
    add h
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop

jr_001_6728:
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_001_6728

    rra
    rst $38
    rra

jr_001_6732:
    rst $38
    rra
    ldh [$1f], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    dec a
    jp nz, $c2bd

    cp l
    jp nz, $c2bd

    dec a
    jp nz, Jump_000_0ff7

    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rst $30
    rrca
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $28
    ldh a, [$78]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $18
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_001_6780:
    rst $08
    jr nc, jr_001_6732

    ld [hl], b
    rrca
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    rst $38
    nop
    rrca
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIF]
    ldh a, [rIE]
    ld b, b
    db $fd
    ld b, e
    cp e
    ld b, a
    or a
    ld c, a
    xor $1f
    sbc $3f
    cp $3f
    add b
    ld a, a
    ld l, a
    ret c

    xor a
    ret c

jr_001_67aa:
    ld l, a
    sbc b
    rst $38
    ld [$08f7], sp

jr_001_67b0:
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    jr c, jr_001_6780

    jr c, @+$01

    nop
    cp $01
    rst $18
    jr nz, jr_001_67b0

    jr nc, @-$07

    jr c, @-$3b

    inc a
    rst $38
    nop
    rst $18
    jr nz, jr_001_67aa

    ld h, b
    sbc $e1
    rst $18
    pop hl
    rst $18
    ld h, c
    cp a
    ld b, c
    cp $01
    rst $28
    rra
    rst $30
    rrca
    ei
    rlca
    ccf
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    ld a, $c1
    ld a, [$75a5]
    cp $11
    jp nz, $49c3

    ld [$75a3], sp
    ld a, $01
    ldh [rVBK], a
    ld hl, $9820
    ld sp, $7020
    ld bc, $000d
    ld a, $12

jr_001_6800:
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    add hl, bc
    add sp, $2c
    dec a
    jr nz, jr_001_6800

    ldh [rVBK], a

jr_001_6839:
    ld a, [$004f]
    and a
    jr nz, jr_001_6839

    ld hl, $3f01
    ld a, [$77ef]
    dec a
    ld [$77ef], a
    srl a
    srl a
    srl a
    and $1f
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $9820
    ld sp, $7000
    ld a, $12
    ld [$77ee], a
    ld a, $b2
    ldh [rBCPS], a
    ld a, [bc]
    ldh [rBCPD], a
    inc bc
    ld a, [bc]
    ldh [rBCPD], a
    inc bc

jr_001_686f:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_686f

    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_686f

    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    ld a, $b2
    ldh [rBCPS], a
    ld a, [bc]
    ldh [rBCPD], a
    inc bc
    ld a, [bc]
    ldh [rBCPD], a
    inc bc

jr_001_6893:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_6893

    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_6893

    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld a, $b2
    ldh [rBCPS], a
    ld a, [bc]
    ldh [rBCPD], a
    inc bc
    ld a, [bc]
    ldh [rBCPD], a
    inc bc

jr_001_68b8:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_68b8

    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_68b8

    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld a, $b2
    ldh [rBCPS], a
    ld a, [bc]
    ldh [rBCPD], a
    inc bc
    ld a, [bc]
    ldh [rBCPD], a
    inc bc

jr_001_68dd:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_68dd

    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_68dd

    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    ld de, $000d
    add hl, de
    add sp, $2c
    ld a, [$77ee]
    dec a
    jp nz, $4860

    ld hl, $75a3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    ret


    ld [$75a3], sp
    ld hl, $9820
    ld sp, $7000
    ld bc, $000d
    ld a, $05

jr_001_6917:
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    add hl, bc
    add sp, $2c
    dec a
    jr nz, jr_001_6917

    ld c, $0d
    pop de

jr_001_6951:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_6951

    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_6951

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l

jr_001_6969:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_6969

    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_6969

    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_001_6982:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_6982

    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_6982

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l

jr_001_699a:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_699a

    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_699a

    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    ld de, $000d
    add hl, de
    add sp, $2c
    dec c
    jp nz, Jump_001_4950

    ld hl, $75a3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    ret


    ld [$75a3], sp
    ld hl, $9820
    ld sp, $7000
    ld c, $12

jr_001_69ce:
    pop de

jr_001_69cf:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_69cf

    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de

jr_001_69df:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_69df

    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de

jr_001_69ef:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_69ef

    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de

jr_001_69ff:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_69ff

    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de

jr_001_6a0f:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_6a0f

    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld de, $000c
    add hl, de
    add sp, $2c
    dec c
    jr nz, jr_001_69ce

    ld hl, $75a3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_001_7000:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    jr nz, jr_001_7035

    cpl
    db $10
    jr z, jr_001_702a

    jr z, jr_001_702c

    jr z, jr_001_702e

    jr z, jr_001_7030

    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop

jr_001_702a:
    nop
    nop

jr_001_702c:
    nop
    nop

jr_001_702e:
    nop
    nop

jr_001_7030:
    nop
    nop
    cp $00
    ld [bc], a

jr_001_7035:
    db $fc
    ld a, [$0a04]
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    jr z, jr_001_7052

    jr z, jr_001_7054

    jr z, jr_001_7056

    jr z, jr_001_7058

    jr z, jr_001_705a

    jr z, jr_001_705c

    jr z, jr_001_705e

    jr z, jr_001_7060

    ld a, [bc]
    inc b

jr_001_7052:
    ld a, [bc]
    inc b

jr_001_7054:
    ld a, [bc]
    inc b

jr_001_7056:
    ld a, [bc]
    inc b

jr_001_7058:
    ld a, [bc]
    inc b

jr_001_705a:
    ld a, [bc]
    inc b

jr_001_705c:
    ld a, [bc]
    inc b

jr_001_705e:
    ld a, [bc]
    inc b

jr_001_7060:
    jr z, jr_001_7072

    jr z, jr_001_7074

    jr z, jr_001_7076

    jr z, jr_001_7078

    cpl
    db $10
    jr nz, jr_001_708b

    ccf
    nop
    nop
    nop
    nop
    nop

jr_001_7072:
    nop
    nop

jr_001_7074:
    nop
    nop

jr_001_7076:
    nop
    nop

jr_001_7078:
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld a, [$0204]

jr_001_708b:
    db $fc
    cp $00
    nop
    nop
    ld a, a
    nop
    ld b, b
    ccf
    ld e, a
    ccf
    ld d, b
    ccf
    ld d, b
    jr c, jr_001_70eb

    jr c, jr_001_70ed

    jr c, jr_001_70ef

    jr c, @+$01

    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    nop
    cp $fc
    cp $04
    cp $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $50
    jr c, jr_001_7113

    jr c, @+$52

    jr c, jr_001_7117

    jr c, @+$52

    jr c, jr_001_711b

    jr c, @+$52

    jr c, jr_001_711f

    jr c, jr_001_70e5

    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $50
    jr c, jr_001_7133

    jr c, jr_001_7135

jr_001_70e5:
    jr c, jr_001_713e

    jr c, jr_001_7139

    ccf
    ld e, a

jr_001_70eb:
    ccf
    ld b, b

jr_001_70ed:
    ccf
    nop

jr_001_70ef:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    inc d
    ld c, $14
    ld c, $14
    ld c, $f4
    ld c, $04
    cp $fc
    cp $00
    cp $00
    nop
    ld b, $01
    ld [de], a

jr_001_7113:
    rrca
    ld sp, $320f

jr_001_7117:
    rrca
    ld sp, $320f

jr_001_711b:
    rrca
    ld sp, $320f

jr_001_711f:
    rrca
    ld a, a
    rst $38
    add b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    nop

jr_001_7133:
    nop
    nop

jr_001_7135:
    nop
    nop
    nop
    nop

jr_001_7139:
    nop
    nop
    nop
    nop
    nop

jr_001_713e:
    nop
    nop
    pop af
    cp $08
    rra
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    add b
    nop
    call nz, $c200
    nop
    jp nz, $c200

    nop
    jp nz, $c200

    nop
    jp nz, Jump_000_3100

    rrca
    ld [hl-], a
    rrca
    ld sp, $320f
    rrca
    ld sp, $320f
    rrca
    ld sp, $320f
    rrca
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    jp nz, $c200

    nop
    jp nz, $c200

    nop
    jp nz, $c200

    nop
    jp nz, $c200

    nop
    ld sp, $320f
    rrca
    ld sp, $320f
    rrca
    ld sp, $320f
    rrca
    ld de, $060f
    ld bc, $8080
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    db $10
    rra
    ld bc, $c2fe
    nop
    jp nz, $c200

    nop
    jp nz, $c200

    nop
    jp nz, $c400

    nop
    add b
    nop
    rst $38
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    rst $38
    nop
    ret nz

    nop
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld bc, $0000
    nop
    add b
    ld a, a
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    xor d
    nop
    ld b, b
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor d
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor d
    nop
    ld bc, $0000
    nop
    nop
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $e8fe
    rst $38
    ret nc

    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$01
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld bc, $fffe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ret nc

    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$01
    ret nc

    rst $38
    add c
    ld a, [hl]
    ld sp, $320f
    rrca
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    rst $38
    add sp, -$01
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, $c400

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $320f
    rrca
    inc e
    inc bc
    ld [de], a
    rrca
    ld sp, $320f
    rrca
    ld sp, $320f
    rrca
    ld a, a
    rst $38
    cp a
    rst $38
    nop
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $ffd0
    add sp, -$01
    ld bc, $e8fe
    rst $38
    ret nc

    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$01
    jp nz, $c200

    nop
    add b
    nop
    call nz, $c200
    nop
    jp nz, $c200

    nop
    jp nz, Jump_000_3100

    rrca
    ld [hl-], a
    rrca
    ld sp, $320f
    rrca
    ld sp, $320f
    rrca
    ld sp, $320f
    rrca
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    ld d, b
    rst $38
    ld l, b
    rst $38
    ld d, b
    rst $38
    ld l, b
    rst $38
    ld d, b
    rst $38
    ld l, b
    rst $38
    ld d, b
    rst $38
    ld l, b
    rst $38
    jp nz, $c200

    nop
    jp nz, $c200

    nop
    jp nz, $c200

    nop
    jp nz, $c200

    nop
    ld b, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld a, a
    add b
    nop
    rst $38
    ld a, a
    add b
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0106
    ld b, $01
    cp $01
    nop
    rst $38
    cp $01
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld b, $01
    ld [de], a
    rrca
    ld sp, $320f
    rrca
    ld sp, $320f
    rrca
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $e8fe
    rst $38
    ret nc

    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$01
    nop
    nop
    nop
    nop
    add b
    nop
    call nz, $c200
    nop
    jp nz, $c200

    nop
    jp nz, Jump_000_3100

    rrca
    ld [hl-], a
    rrca
    ld sp, $320f
    rrca
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$01
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, $c200

    nop
    jp nz, $c400

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld b, b
    ccf
    ld e, a
    ccf
    ld d, b
    ccf
    ld d, b
    jr c, jr_001_751b

    jr c, jr_001_751d

    jr c, jr_001_751f

    jr c, @+$01

    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    nop
    cp $fc
    cp $04
    cp $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $50
    jr c, jr_001_7543

    jr c, jr_001_7545

    jr c, jr_001_7547

    jr c, @+$52

    jr c, @+$52

    jr c, @+$52

    jr c, @+$52

    jr c, jr_001_7515

    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $14
    ld c, $50
    jr c, @+$52

    jr c, @+$52

jr_001_7515:
    jr c, jr_001_756e

    jr c, @+$52

    ccf
    ld e, a

jr_001_751b:
    ccf
    ld b, b

jr_001_751d:
    ccf
    nop

jr_001_751f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    inc d
    ld c, $14
    ld c, $14
    ld c, $f4
    ld c, $04
    cp $fc
    cp $00
    cp $00
    nop
    nop
    nop
    ccf

jr_001_7543:
    nop
    ccf

jr_001_7545:
    rra
    ccf

jr_001_7547:
    db $10
    jr c, jr_001_755a

    jr c, jr_001_755c

    jr c, jr_001_755e

    jr c, jr_001_7560

    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

jr_001_755a:
    nop
    nop

jr_001_755c:
    nop
    nop

jr_001_755e:
    nop
    nop

jr_001_7560:
    nop
    nop
    cp $00
    cp $fc
    cp $04
    ld c, $04
    ld c, $04
    ld c, $04

jr_001_756e:
    ld c, $04
    jr c, jr_001_7582

    jr c, jr_001_7584

    jr c, jr_001_7586

    jr c, jr_001_7588

    jr c, jr_001_758a

    jr c, jr_001_758c

    jr c, jr_001_758e

    jr c, jr_001_7590

    ld c, $04

jr_001_7582:
    ld c, $04

jr_001_7584:
    ld c, $04

jr_001_7586:
    ld c, $04

jr_001_7588:
    ld c, $04

jr_001_758a:
    ld c, $04

jr_001_758c:
    ld c, $04

jr_001_758e:
    ld c, $04

jr_001_7590:
    jr c, jr_001_75a2

    jr c, jr_001_75a4

    jr c, jr_001_75a6

    jr c, jr_001_75a8

    ccf
    db $10
    ccf
    rra
    ccf
    nop
    nop
    nop
    nop
    nop

jr_001_75a2:
    nop
    nop

jr_001_75a4:
    nop
    nop

jr_001_75a6:
    nop
    nop

jr_001_75a8:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $04
    cp $04
    cp $fc
    cp $00
    nop
    nop
    ld b, $01
    inc de
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    ld a, a
    rst $38
    add b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    cp $08
    ccf
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    sbc b
    ldh [$c8], a
    db $f4
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc de
    rrca
    ld b, $01
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    ld [$113f], sp
    cp $cc
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    call z, $c8f2
    db $f4
    sbc b
    ldh [$7f], a
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    rst $38
    nop
    ret nz

    nop
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld bc, $0000
    nop
    rst $38
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    rst $38
    nop
    ret nz

    nop
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    rst $00
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp+$3f
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp+$7e
    nop
    inc sp
    rrca
    inc sp
    rrca
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    rst $38
    add sp, -$01
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $ccf2
    ldh a, [$98]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    rrca
    inc sp
    rrca
    ld e, $01
    inc de
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    nop
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b

Call_001_780f:
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $f8c7
    rst $00
    ld hl, sp-$02
    nop
    rst $00
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$34
    ld a, [c]
    call z, $f8f0
    add b
    ret z

    db $f4
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    rst $00
    ld a, b
    rst $00
    ld a, b
    rst $00
    ld a, b
    rst $00
    ld a, b
    rst $00
    ld a, b
    rst $00
    ld a, b
    rst $00
    ld a, b
    rst $00
    ld a, b
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    cp a
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$80], a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    ldh [rP1], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld bc, $ffff
    rst $38
    ld bc, $00ff
    rlca
    nop
    ld bc, $0000
    nop
    nop
    ld b, $01
    inc de
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $e8fe
    rst $38
    ret nc

    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$01
    nop
    nop
    nop
    nop
    sbc b
    ldh [$c8], a
    db $f4
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ld a, [c]
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    inc sp
    rrca
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$01
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $ccf2
    ld a, [c]
    call z, $ccf2
    ldh a, [$98]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    or b
    ld d, h
    ret nz

    ld d, l
    ld d, b
    ld d, [hl]
    ld b, b
    ld d, a
    ld [hl], b
    ld d, a
    ld h, b
    ld d, a
    sub b
    ld d, a
    nop
    ld d, [hl]
    sub b
    ld d, [hl]
    nop
    ld d, b
    db $10
    ld d, c
    and b
    ld d, c
    sub b
    ld d, d
    ret nz

    ld d, d
    or b
    ld d, d
    ldh [rHDMA2], a
    ld d, b
    ld d, c
    ldh [rHDMA1], a
    ld a, [$75a5]
    cp $11
    ret nz

    ld c, $68
    call Call_001_5991
    ld c, $6a
    ld a, $80
    ld [c], a
    inc c
    ld b, $04

jr_001_7997:
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    dec b
    jr nz, jr_001_7997

    ret


    xor a
    ld [$76c4], a
    ld [$75c3], a
    ld [$75c4], a
    ld a, $01
    ld [$7a6d], a
    ld a, [$75a5]
    cp $11
    ld a, $00
    jr z, jr_001_79d5

    ld a, $01

jr_001_79d5:
    ld [$766b], a
    xor $01
    ld [$77ea], a
    xor a
    ld [$75c0], a
    ld a, $01
    ld [$75a0], a
    ret


    ld de, $76e7
    ld a, c
    ld [de], a
    inc de

jr_001_79ed:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_001_79ed

    ld de, $76e7
    ld a, [de]
    ld c, a
    ld b, $00
    and a
    jr nz, jr_001_7a00

    inc b

jr_001_7a00:
    inc bc
    call $5bac
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, $32

jr_001_7a0b:
    push af

jr_001_7a0c:
    ldh a, [rLY]
    cp $90
    jr nz, jr_001_7a0c

jr_001_7a12:
    ldh a, [rLY]
    cp $90
    jr z, jr_001_7a12

    ld a, $01
    ldh [rRP], a
    xor a
    ldh [rRP], a
    nop
    nop
    call $5a7c
    pop af
    dec a
    jr nz, jr_001_7a0b

    ret


    ld a, $c0
    ldh [rRP], a
    ld bc, $000a

jr_001_7a30:
    push bc
    ld bc, $0000

jr_001_7a34:
    ldh a, [rRP]
    and $02
    jr z, jr_001_7a46

    dec bc
    ld a, c
    or b
    jr nz, jr_001_7a34

    pop bc
    dec bc
    ld a, c
    or b
    jr nz, jr_001_7a30

    ret


jr_001_7a46:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_001_5b10
    ld de, $76e7
    ld a, [de]
    ld c, a
    ld b, $00
    and a
    jr nz, jr_001_7a5c

    inc b

jr_001_7a5c:
    inc bc
    call $5bac
    pop bc
    ld a, [de]
    inc de
    cp l
    jr nz, jr_001_7a6b

    ld a, [de]
    inc de
    cp h
    jr z, jr_001_7a71

jr_001_7a6b:
    dec bc
    ld a, c
    or b
    jr nz, jr_001_7a30

    ret


jr_001_7a71:
    ld hl, $76e7
    ld a, [hl]
    inc hl
    and a
    jr nz, jr_001_7a7a

    inc b

jr_001_7a7a:
    ld c, a
    ret


    ld hl, $76e7
    ld bc, $0103
    ld a, [hl+]
    ld d, a
    and $01
    ldh [rRP], a
    xor a
    ldh [rRP], a
    nop
    nop
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    and $01
    ldh [rRP], a
    xor a
    ldh [rRP], a
    nop
    nop
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    and $01
    ldh [rRP], a
    xor a
    ldh [rRP], a
    nop
    nop
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    and $01
    ldh [rRP], a
    xor a
    ldh [rRP], a
    nop
    nop
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    and $01
    ldh [rRP], a
    xor a
    ldh [rRP], a
    nop
    nop
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    and $01
    ldh [rRP], a
    xor a
    ldh [rRP], a
    nop
    nop
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    and $01
    ldh [rRP], a
    xor a
    ldh [rRP], a
    nop
    nop
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    and $01
    ldh [rRP], a
    xor a
    ldh [rRP], a
    dec bc
    ld a, c
    or b
    jp nz, Jump_001_5a82

    ret


    ld hl, $76e7
    ld bc, $0103
    ld d, $00
    nop
    ldh a, [rRP]
    cpl
    and $02
    rrca
    rrca
    or d
    ld d, a
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rRP]
    cpl
    and $02
    rrca
    rrca
    or d
    ld d, a
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rRP]
    cpl
    and $02
    rrca
    rrca
    or d
    ld d, a
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_001_7b51:
    nop
    ldh a, [rRP]
    cpl
    and $02
    rrca
    rrca
    or d
    ld d, a
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rRP]
    cpl
    and $02
    rrca
    rrca
    or d
    ld d, a
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rRP]
    cpl
    and $02
    rrca
    rrca
    or d
    ld d, a
    srl d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rRP]
    cpl
    and $02
    rrca
    rrca
    or d
    ld d, a
    srl d
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    ldh a, [rRP]
    cpl
    and $02
    rrca
    rrca
    or d
    ld [hl+], a
    ld a, c
    or b
    jp nz, Jump_001_5b16

    ret


    ld hl, $00ae

jr_001_7baf:
    push bc
    ld a, [de]
    inc de
    ld b, $00
    ld c, a
    add hl, bc
    pop bc
    dec bc
    ld a, c
    or b
    jr nz, jr_001_7baf

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
