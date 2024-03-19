; Disassembly of "gameshark.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ld [$0100], a
    add b
    ld b, c
    jr nz, jr_002_4049

    ld [hl], l
    ld h, a
    ld [hl], e
    jr nz, @+$4e

    ld l, c
    ld h, [hl]
    ld h, l
    jr nz, jr_002_4031

    jr nz, jr_002_4033

    jr nz, jr_002_4017

    add b
    ld b, c

jr_002_4017:
    ld l, h
    ld h, c
    ld h, h
    ld h, h
    ld l, c
    ld l, [hl]
    jr nz, jr_002_403f

    jr nz, jr_002_4041

    jr nz, jr_002_4043

    jr nz, jr_002_4045

    jr nz, jr_002_402a

    add b
    ld b, c
    ld l, h

jr_002_402a:
    ld l, c
    ld h, l
    ld l, [hl]
    jr nz, jr_002_4085

    jr nz, jr_002_4081

jr_002_4031:
    ld [hl], d
    ld h, l

jr_002_4033:
    ld h, h
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    inc b
    add b
    ld b, c
    ld l, h
    ld l, h
    ld d, e
    ld [hl], h

jr_002_403f:
    ld h, c
    ld [hl], d

jr_002_4041:
    jr nz, jr_002_4085

jr_002_4043:
    ld [hl], e
    ld h, d

jr_002_4045:
    ld h, c
    ld l, h
    ld l, h
    add hl, sp

jr_002_4049:
    add hl, sp
    dec b
    add b
    ld b, c
    ld l, h
    ld l, h
    ld a, c
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_002_4075

    jr nz, jr_002_4077

    jr nz, jr_002_4079

    jr nz, jr_002_407b

    jr nz, jr_002_4063

    add b
    ld b, c
    ld l, h
    ld [hl], h
    ld h, l
    ld [hl], d

jr_002_4063:
    ld h, l
    ld h, h
    jr nz, jr_002_40ba

    ld [hl], b
    ld h, c
    ld h, e
    ld h, l
    jr nz, @+$22

    jr nz, @+$09

    add b
    ld b, c
    ld l, l
    ld l, c
    ld h, h
    ld h, c

jr_002_4075:
    jr nz, jr_002_4097

jr_002_4077:
    jr nz, jr_002_4099

jr_002_4079:
    jr nz, jr_002_409b

jr_002_407b:
    jr nz, jr_002_409d

    jr nz, jr_002_409f

    jr nz, jr_002_4089

jr_002_4081:
    add b
    ld b, c
    ld l, [hl]
    ld l, c

jr_002_4085:
    ld l, l
    ld h, c
    ld l, [hl]
    ld l, c

jr_002_4089:
    ld h, c
    ld h, e
    ld [hl], e
    jr nz, jr_002_40ae

    jr nz, @+$22

    jr nz, @+$22

    add hl, bc
    add b
    ld b, c
    ld [hl], e
    ld [hl], h

jr_002_4097:
    ld h, l
    ld [hl], d

jr_002_4099:
    ld l, c
    ld a, b

jr_002_409b:
    jr nz, jr_002_40bd

jr_002_409d:
    jr nz, @+$22

jr_002_409f:
    jr nz, jr_002_40c1

    jr nz, jr_002_40c3

    jr nz, jr_002_40af

    add b
    ld b, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, a
    ld l, c
    ld h, h

jr_002_40ae:
    ld [hl], e

jr_002_40af:
    jr nz, jr_002_40d1

    jr nz, jr_002_40d3

    jr nz, jr_002_40d5

    jr nz, jr_002_40c2

    add b
    ld b, c
    ld [hl], h

jr_002_40ba:
    ld l, a
    ld l, l
    ld l, c

jr_002_40bd:
    ld h, e
    jr nz, @+$52

    ld [hl], l

jr_002_40c1:
    ld l, [hl]

jr_002_40c2:
    ld l, e

jr_002_40c3:
    jr nz, jr_002_40e5

    jr nz, jr_002_40e7

    jr nz, jr_002_40d5

    add b
    ld b, d
    ld h, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    ld l, c

jr_002_40d1:
    ld l, [hl]
    ld h, a

jr_002_40d3:
    jr nz, jr_002_4127

jr_002_40d5:
    ld h, c
    ld h, e
    ld h, l
    ld [hl], d
    jr nz, @+$0f

    add b
    ld b, d
    ld h, c
    ld [hl], d
    ld h, d
    ld l, c
    ld h, l
    jr nz, jr_002_412b

    ld h, c

jr_002_40e5:
    ld l, l
    ld h, l

jr_002_40e7:
    jr nz, jr_002_4130

    ld l, c
    ld [hl], d
    ld l, h
    ld c, $80
    ld b, d
    ld h, c
    ld [hl], h
    ld l, l
    ld h, c
    ld l, [hl]
    jr nz, jr_002_4116

    jr nz, jr_002_4118

    jr nz, jr_002_411a

    jr nz, jr_002_411c

    jr nz, @+$22

    rrca
    add b
    ld b, d
    ld h, c
    ld [hl], h
    ld l, l
    ld h, c
    ld l, [hl]
    jr nz, jr_002_4149

    ld l, [hl]
    ld l, c
    ld l, l
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_002_4121

    add b
    ld b, d
    ld h, c
    ld [hl], h
    ld [hl], h

jr_002_4116:
    ld l, h
    ld h, l

jr_002_4118:
    jr nz, jr_002_415c

jr_002_411a:
    ld [hl], l
    ld l, h

jr_002_411c:
    ld l, h
    jr nz, jr_002_413f

    jr nz, jr_002_4141

jr_002_4121:
    jr nz, jr_002_4134

    add b
    ld b, d
    ld h, c
    ld [hl], h

jr_002_4127:
    ld [hl], h
    ld l, h
    ld h, l
    ld h, e

jr_002_412b:
    ld l, c
    ld [hl], h
    ld a, c
    jr nz, jr_002_4150

jr_002_4130:
    jr nz, jr_002_4152

    jr nz, jr_002_4154

jr_002_4134:
    ld [de], a
    add b
    ld b, d
    ld h, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    ld [hl], h
    ld l, a
    ld h, c

jr_002_413f:
    ld h, h
    ld [hl], e

jr_002_4141:
    jr nz, jr_002_4163

    jr nz, jr_002_4165

    jr nz, jr_002_415a

    add b
    ld b, d

jr_002_4149:
    ld h, l
    ld h, c
    db $76
    ld l, c
    ld [hl], e
    jr nz, jr_002_4176

jr_002_4150:
    ld b, d
    ld [hl], l

jr_002_4152:
    ld [hl], h
    ld [hl], h

jr_002_4154:
    ld l, b
    ld h, l
    ld h, c
    ld h, h
    inc d
    add b

jr_002_415a:
    ld b, d
    ld h, l

jr_002_415c:
    ld h, l
    ld [hl], h
    ld l, b
    ld l, a
    db $76
    ld h, l
    ld l, [hl]

jr_002_4163:
    jr nz, @+$34

jr_002_4165:
    ld l, [hl]
    ld h, h
    jr nz, jr_002_4189

    jr nz, jr_002_4180

    add b
    ld b, d
    ld h, l
    ld h, l
    ld [hl], h
    ld l, h
    ld h, l
    ld l, d
    ld [hl], l
    ld l, c
    ld h, e

jr_002_4176:
    ld h, l
    jr nz, jr_002_4199

    jr nz, jr_002_419b

    jr nz, jr_002_4193

    add b
    ld b, d
    ld h, l

jr_002_4180:
    ld [hl], e
    ld [hl], h
    jr nz, jr_002_41d3

    ld h, [hl]
    jr nz, jr_002_41db

    ld l, b
    ld h, l

jr_002_4189:
    jr nz, @+$44

    ld h, l
    ld [hl], e
    ld [hl], h
    rla
    add b
    ld b, d
    ld l, c
    ld l, a

jr_002_4193:
    ld l, [hl]
    ld l, c
    ld h, e
    jr nz, jr_002_41da

    ld h, c

jr_002_4199:
    ld [hl], h
    ld [hl], h

jr_002_419b:
    ld l, h
    ld h, l
    ld [hl], d
    jr nz, jr_002_41c0

    jr @-$7e

    ld b, d
    ld l, h
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$4f

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$22

    add hl, de
    add b
    ld b, d
    ld l, a
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_002_41fe

    ld l, a
    ld a, c
    jr nz, jr_002_41e0

jr_002_41c0:
    jr nz, jr_002_41e2

    jr nz, jr_002_41e4

    ld a, [de]
    add b
    ld b, d
    ld l, a
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_002_4219

    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_002_41f3

jr_002_41d3:
    jr nz, @+$22

    jr nz, jr_002_41f2

    add b
    ld b, d
    ld l, a

jr_002_41da:
    ld l, l

jr_002_41db:
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_002_422d

jr_002_41e0:
    ld h, c
    ld l, [hl]

jr_002_41e2:
    jr nz, jr_002_4204

jr_002_41e4:
    jr nz, jr_002_4206

    jr nz, jr_002_4208

    inc e
    add b
    ld b, d
    ld l, a
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_002_423f

jr_002_41f2:
    ld h, c

jr_002_41f3:
    ld l, [hl]
    jr nz, jr_002_423d

    ld b, d
    jr nz, jr_002_4219

    jr nz, jr_002_4218

    add b
    ld b, d
    ld l, a

jr_002_41fe:
    ld l, [hl]
    ld l, e
    daa
    ld [hl], e
    jr nz, jr_002_4245

jr_002_4204:
    ld h, h
    db $76

jr_002_4206:
    ld h, l
    ld l, [hl]

jr_002_4208:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld e, $80
    ld b, d
    ld l, a
    ld l, a
    ld l, l
    ld h, l
    ld [hl], d
    jr nz, jr_002_4257

    ld h, h
    db $76

jr_002_4218:
    ld h, l

jr_002_4219:
    ld l, [hl]
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    rra
    add b
    ld b, d
    ld [hl], d
    ld h, l
    ld h, c
    ld l, e
    ld [hl], h
    ld l, b
    ld [hl], d
    ld [hl], l
    jr nz, jr_002_424b

    jr nz, jr_002_424d

jr_002_422d:
    jr nz, jr_002_424f

    jr nz, jr_002_4251

    add b
    ld b, d
    ld [hl], l
    ld h, d
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_002_427c

    ld l, a
    ld h, d
    ld h, d

jr_002_423d:
    ld l, h
    ld h, l

jr_002_423f:
    jr nz, jr_002_4273

    jr nz, jr_002_4264

    add b
    ld b, d

jr_002_4245:
    ld [hl], l
    ld h, d
    ld [hl], e
    ld a, c
    jr nz, jr_002_427d

jr_002_424b:
    jr nz, jr_002_426d

jr_002_424d:
    jr nz, jr_002_426f

jr_002_424f:
    jr nz, jr_002_4271

jr_002_4251:
    jr nz, jr_002_4273

    jr nz, jr_002_4277

    add b
    ld b, d

jr_002_4257:
    ld [hl], l
    ld h, a
    ld [hl], e
    jr nz, jr_002_429e

    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c
    jr nz, @+$22

    jr nz, jr_002_4284

jr_002_4264:
    jr nz, jr_002_4286

    inc hl
    add b
    ld b, d
    ld [hl], l
    ld [hl], d
    ld h, c
    ld l, c

jr_002_426d:
    jr nz, jr_002_42b5

jr_002_426f:
    ld l, c
    ld h, a

jr_002_4271:
    ld l, b
    ld [hl], h

jr_002_4273:
    ld h, l
    ld [hl], d
    jr nz, jr_002_4297

jr_002_4277:
    jr nz, jr_002_429d

    add b
    ld b, d
    ld [hl], l

jr_002_427c:
    ld [hl], d

jr_002_427d:
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_002_42d3

    ld h, c

jr_002_4284:
    ld [hl], b
    ld h, l

jr_002_4286:
    ld [hl], d
    jr nz, jr_002_42a9

    jr nz, jr_002_42b0

    add b
    ld b, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_002_42d3

    jr nz, jr_002_42e1

    ld l, a
    db $76
    ld h, l

jr_002_4297:
    jr nz, jr_002_42cd

    jr nz, jr_002_42bb

    jr nz, jr_002_42c3

jr_002_429d:
    add b

jr_002_429e:
    ld b, e
    ld h, c
    ld h, l
    ld [hl], e
    ld h, c
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_002_42f8

    ld h, c

jr_002_42a9:
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_002_42d6

    add b

jr_002_42b0:
    ld b, e
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l

jr_002_42b5:
    ld l, h
    ld l, c
    ld h, c
    ld l, [hl]
    jr nz, jr_002_42db

jr_002_42bb:
    jr nz, jr_002_42dd

    jr nz, jr_002_42df

    jr nz, jr_002_42e9

    add b
    ld b, e

jr_002_42c3:
    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    db $76
    ld h, c
    ld l, [hl]
    ld l, c
    ld h, c

jr_002_42cd:
    jr nz, jr_002_431b

    ld h, a
    ld h, h
    ld [hl], e

jr_002_42d2:
    add hl, hl

jr_002_42d3:
    add b
    ld b, e
    ld h, l

jr_002_42d6:
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld [hl], b
    ld h, l

jr_002_42db:
    ld h, h
    ld h, l

jr_002_42dd:
    jr nz, jr_002_42ff

jr_002_42df:
    jr nz, jr_002_4301

jr_002_42e1:
    jr nz, jr_002_4303

    jr nz, jr_002_430f

    add b
    ld b, e
    ld h, l
    ld l, [hl]

jr_002_42e9:
    ld [hl], h
    ld l, c
    ld [hl], b
    ld h, l
    ld h, h
    ld h, l
    jr nz, @+$2a

    ld b, e
    ld l, h
    ld [hl], d
    add hl, hl
    jr nz, jr_002_4322

    add b

jr_002_42f8:
    ld b, e
    ld l, b
    ld h, c
    ld [hl], e
    ld h, l
    ld l, b
    ld [hl], c

jr_002_42ff:
    jr nz, @+$22

jr_002_4301:
    jr nz, jr_002_4323

jr_002_4303:
    jr nz, jr_002_4325

    jr nz, jr_002_4327

    jr nz, jr_002_4335

    add b
    ld b, e
    ld l, b
    ld l, a
    ld [hl], b
    ld l, h

jr_002_430f:
    ld l, c
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$35

    jr nz, jr_002_4338

    jr nz, jr_002_433a

    dec l

jr_002_431b:
    add b
    ld b, e
    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_002_4375

jr_002_4322:
    ld l, b

jr_002_4323:
    ld h, c
    ld h, h

jr_002_4325:
    ld l, a
    ld [hl], a

jr_002_4327:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_002_435b

    add b
    ld b, e
    ld l, a
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    daa

jr_002_4335:
    ld [hl], e
    jr nz, jr_002_4388

jr_002_4338:
    ld l, e
    ld [hl], h

jr_002_433a:
    jr nz, jr_002_4390

    ld l, h
    ld [hl], e
    cpl
    add b
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, jr_002_4368

    jr nz, @+$22

    jr nz, jr_002_436c

    jr nz, jr_002_436e

    jr nz, jr_002_4370

    jr nc, jr_002_42d2

    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, jr_002_43ad

    ld [hl], b

jr_002_435b:
    ld l, c
    ld [hl], d
    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_002_4382

    ld sp, $4380
    ld [hl], d
    ld h, c
    ld a, d

jr_002_4368:
    ld a, c
    jr nz, jr_002_43ae

    ld h, c

jr_002_436c:
    ld [hl], e
    ld [hl], h

jr_002_436e:
    ld l, h
    ld h, l

jr_002_4370:
    jr nz, @+$22

    jr nz, jr_002_4394

    ld [hl-], a

jr_002_4375:
    add b
    ld b, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, jr_002_43d0

    ld [hl], l
    ld h, l
    ld [hl], e

jr_002_4382:
    ld [hl], h
    jr nz, @+$22

    jr nz, jr_002_43ba

    add b

jr_002_4388:
    ld b, e
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, b
    ld [hl], d
    ld l, a
    ld h, c

jr_002_4390:
    ld [hl], h
    jr nz, jr_002_43dc

    ld [hl], e

jr_002_4394:
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, h
    inc [hl]
    add b
    ld b, e
    ld a, c
    ld [hl], d
    ld l, c
    ld h, c
    ld h, h
    jr nz, jr_002_43c2

    jr nz, jr_002_43c4

    jr nz, jr_002_43c6

    jr nz, jr_002_43c8

    jr nz, jr_002_43ca

    dec [hl]
    add b
    ld b, h

jr_002_43ad:
    ld h, l

jr_002_43ae:
    ld h, [hl]
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    cpl
    ld c, d
    ld l, a
    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_002_43ba:
    jr nz, jr_002_43dc

    ld [hl], $80
    ld b, h
    ld h, l
    ld h, [hl]
    ld h, l

jr_002_43c2:
    ld l, [hl]
    ld h, h

jr_002_43c4:
    ld h, l
    ld [hl], d

jr_002_43c6:
    cpl
    ld c, d

jr_002_43c8:
    ld l, a
    ld [hl], l

jr_002_43ca:
    ld [hl], e
    ld [hl], h
    jr nz, jr_002_4411

    scf
    add b

jr_002_43d0:
    ld b, h
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    jr nz, jr_002_442b

    ld [hl], h
    ld [hl], d
    ld l, c
    ld l, e

jr_002_43dc:
    ld h, l
    jr nz, jr_002_43ff

    jr nz, jr_002_4419

    add b
    ld b, h
    ld l, c
    ld h, e
    ld l, e
    jr nz, jr_002_443c

    ld [hl], d
    ld h, c
    ld h, e
    ld a, c
    jr nz, jr_002_440e

    jr nz, jr_002_4410

    jr nz, @+$22

    add hl, sp
    add b
    ld b, h
    ld l, c
    ld h, a
    jr nz, jr_002_443d

    ld [hl], l
    ld h, a
    jr nz, jr_002_441d

    jr nz, @+$22

jr_002_43ff:
    jr nz, jr_002_4421

    jr nz, jr_002_4423

    jr nz, jr_002_443f

    add b
    ld b, h
    ld l, a
    ld l, [hl]
    ld l, e
    ld h, l
    ld a, c
    jr nz, @+$4d

jr_002_440e:
    ld l, a
    ld l, [hl]

jr_002_4410:
    ld h, a

jr_002_4411:
    jr nz, jr_002_4433

    jr nz, jr_002_4435

    jr nz, jr_002_4452

    add b
    ld b, h

jr_002_4419:
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h

jr_002_441d:
    ld h, l
    jr nz, jr_002_4464

    ld [hl], d

jr_002_4421:
    ld h, c
    ld h, a

jr_002_4423:
    ld l, a
    ld l, [hl]
    jr nz, jr_002_4447

    jr nz, jr_002_4465

    add b
    ld b, h

jr_002_442b:
    ld [hl], d
    ld l, $20
    ld b, [hl]
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld l, e

jr_002_4433:
    ld h, l
    ld l, [hl]

jr_002_4435:
    jr nz, jr_002_4480

    ld c, c
    jr nz, jr_002_445a

    dec a
    add b

jr_002_443c:
    ld b, h

jr_002_443d:
    ld [hl], d
    ld h, c

jr_002_443f:
    ld h, a
    ld l, a
    ld l, [hl]
    daa
    ld [hl], e
    jr nz, jr_002_4492

    ld h, c

jr_002_4447:
    ld l, c
    ld [hl], d
    jr nz, @+$22

    jr nz, jr_002_448b

    add b
    ld b, h
    ld [hl], d
    ld l, a
    ld [hl], b

jr_002_4452:
    ld a, d
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_002_4478

    jr nz, jr_002_447a

jr_002_445a:
    jr nz, jr_002_447c

    jr nz, jr_002_447e

    ccf
    add b
    ld b, h
    ld [hl], d
    ld [hl], l
    ld h, c

jr_002_4464:
    ld h, a

jr_002_4465:
    ld h, c
    jr nz, jr_002_4499

    jr nz, jr_002_448a

    jr nz, jr_002_448c

    jr nz, jr_002_448e

    jr nz, jr_002_4490

    ld b, b
    add b
    ld b, h
    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_002_44cc

jr_002_4478:
    ld h, c
    ld l, h

jr_002_447a:
    ld h, l
    ld [hl], e

jr_002_447c:
    jr nz, jr_002_449e

jr_002_447e:
    jr nz, jr_002_44a0

jr_002_4480:
    jr nz, @+$22

    ld b, c
    add b
    ld b, h
    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_002_44de

jr_002_448a:
    ld h, c

jr_002_448b:
    ld l, h

jr_002_448c:
    ld h, l
    ld [hl], e

jr_002_448e:
    jr nz, jr_002_44c2

jr_002_4490:
    jr nz, @+$22

jr_002_4492:
    jr nz, jr_002_44b4

    ld b, d
    add b
    ld b, h
    ld a, c
    ld l, [hl]

jr_002_4499:
    ld h, c
    ld h, d
    ld l, h
    ld h, c
    ld [hl], e

jr_002_449e:
    ld [hl], h
    ld h, l

jr_002_44a0:
    ld [hl], d
    jr nz, @+$22

    jr nz, jr_002_44c5

    jr nz, jr_002_44ea

    add b
    ld b, l
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, b
    ld [hl], a
    ld l, a
    ld [hl], d
    ld l, l
    jr nz, @+$4c

    ld l, c

jr_002_44b4:
    ld l, l
    jr nz, jr_002_44d7

    jr nz, @+$46

    add b
    ld b, l
    ld l, h
    ld h, l
    db $76
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d

jr_002_44c2:
    jr nz, jr_002_4505

    ld h, e

jr_002_44c5:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$47

    add b

jr_002_44cc:
    ld b, l
    ld l, l
    ld [hl], b
    ld l, c
    ld [hl], d
    ld h, l
    jr nz, jr_002_4527

    ld [hl], h
    ld [hl], d
    ld l, c

jr_002_44d7:
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, @+$44

    ld b, a
    add b

jr_002_44de:
    ld b, [hl]
    dec l
    ld sp, $5220
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_002_4508

    jr nz, @+$22

jr_002_44ea:
    jr nz, jr_002_450c

    jr nz, @+$22

    ld b, [hl]
    add b
    ld b, [hl]
    ld sp, $4220
    ld l, a
    ld a, c
    jr nz, jr_002_4518

    jr nz, @+$22

    jr nz, jr_002_451c

    jr nz, @+$22

    jr nz, jr_002_4520

    ld c, b
    add b
    ld b, [hl]
    ld h, c
    ld [hl], e

jr_002_4505:
    ld [hl], h
    ld h, l
    ld [hl], e

jr_002_4508:
    ld [hl], h
    jr nz, jr_002_4557

    ld h, c

jr_002_450c:
    ld [hl], b
    jr nz, jr_002_452f

    jr nz, jr_002_4531

    jr nz, jr_002_455c

    add b
    ld b, [hl]
    ld h, l
    ld l, h
    ld l, c

jr_002_4518:
    ld a, b
    jr nz, jr_002_456f

    ld l, b

jr_002_451c:
    ld h, l
    jr nz, jr_002_4562

    ld h, c

jr_002_4520:
    ld [hl], h
    jr nz, jr_002_4543

    jr nz, jr_002_456f

    add b
    ld b, [hl]

jr_002_4527:
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_002_4573

    ld h, c
    ld l, [hl]

jr_002_452f:
    ld [hl], h
    ld h, c

jr_002_4531:
    ld [hl], e
    ld a, c
    jr nz, jr_002_4581

    ld h, a
    ld c, e
    add b
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    jr nz, jr_002_4584

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld h, l

jr_002_4543:
    ld [hl], d
    jr nz, jr_002_4566

    jr nz, jr_002_4568

    ld c, h
    add b
    ld b, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_002_4594

    ld [hl], l
    ld h, h
    ld h, l
    jr nz, jr_002_4575

    jr nz, jr_002_4577

jr_002_4557:
    jr nz, jr_002_4579

    jr nz, jr_002_45a8

    add b

jr_002_455c:
    ld b, [hl]
    ld l, h
    ld h, c
    ld [hl], b
    ld [hl], b
    ld a, c

jr_002_4562:
    jr nz, jr_002_45b7

    ld [hl], b
    ld h, l

jr_002_4566:
    ld h, e
    ld l, c

jr_002_4568:
    ld h, c
    ld l, h
    jr nz, jr_002_458c

    ld c, [hl]
    add b
    ld b, [hl]

jr_002_456f:
    ld l, h
    ld l, c
    ld l, [hl]
    ld [hl], h

jr_002_4573:
    ld [hl], e
    ld [hl], h

jr_002_4575:
    ld l, a
    ld l, [hl]

jr_002_4577:
    ld h, l
    ld [hl], e

jr_002_4579:
    jr nz, jr_002_459b

    jr nz, jr_002_459d

    jr nz, jr_002_45ce

    add b
    ld b, [hl]

jr_002_4581:
    ld l, a
    ld [hl], d
    ld [hl], h

jr_002_4584:
    ld l, c
    ld h, [hl]
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    jr nz, jr_002_45e6

jr_002_458c:
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_002_45e1

    add b
    ld b, [hl]
    ld [hl], d

jr_002_4594:
    ld l, a
    ld h, a
    ld h, a
    ld h, l
    ld [hl], d
    jr nz, jr_002_45c3

jr_002_459b:
    ld b, e
    ld l, a

jr_002_459d:
    ld l, h
    ld l, a
    ld [hl], d
    add hl, hl
    jr nz, jr_002_45f4

    add b
    ld b, [hl]
    ld [hl], l
    ld l, [hl]
    ld l, [hl]

jr_002_45a8:
    ld a, c
    jr nz, jr_002_45f1

    ld l, c
    ld h, l
    ld l, h
    ld h, h
    jr nz, jr_002_45d1

    jr nz, jr_002_45d3

    jr nz, jr_002_4607

    add b
    ld b, a

jr_002_45b7:
    ld h, c
    ld l, h
    ld h, c
    ld h, a
    ld h, c
    jr nz, jr_002_45e4

    jr nz, jr_002_4607

    ld h, c
    ld l, h
    ld h, c

jr_002_45c3:
    ld a, b
    ld l, c
    ld h, c
    ld d, e
    add b
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_002_45f4

jr_002_45ce:
    jr nz, jr_002_4627

    ld h, c

jr_002_45d1:
    ld [hl], h
    ld h, e

jr_002_45d3:
    ld l, b
    jr nz, @+$49

    ld h, c
    ld l, h
    ld d, h
    add b
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, @+$51

    ld h, [hl]

jr_002_45e1:
    jr nz, @+$4a

    ld h, c

jr_002_45e4:
    ld [hl], d
    ld l, l

jr_002_45e6:
    ld l, a
    ld l, [hl]
    ld a, c
    jr nz, jr_002_4640

    add b
    ld b, a
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_45f1:
    ld h, c
    ld [hl], h
    ld l, c

jr_002_45f4:
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_002_4619

    jr nz, jr_002_461b

    jr nz, @+$58

    add b
    ld b, a
    ld h, l
    ld a, b
    jr nz, @+$2a

    ld b, e
    ld l, a
    ld l, h
    ld l, a

jr_002_4607:
    ld [hl], d
    add hl, hl
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$59

    add b
    ld b, a
    ld l, a
    ld hl, $4720
    ld l, a
    ld hl, $5420

jr_002_4619:
    ld h, c
    ld l, [hl]

jr_002_461b:
    ld l, e
    jr nz, jr_002_463e

    jr nz, jr_002_4640

    ld e, b
    add b
    ld b, a
    ld l, a
    ld h, h
    ld a, d
    ld l, c

jr_002_4627:
    ld l, h
    ld l, h
    ld h, c
    jr nz, jr_002_464c

    jr nz, jr_002_464e

    jr nz, jr_002_4650

    jr nz, jr_002_4652

    ld e, c
    add b
    ld b, a
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], h
    jr nz, jr_002_468d

    ld h, c

jr_002_463e:
    ld [hl], d
    ld h, c

jr_002_4640:
    ld h, h
    ld l, c
    ld [hl], e
    ld h, l
    ld e, d
    add b
    ld b, a
    ld [hl], d
    ld h, l
    ld l, l
    ld l, h
    ld l, c

jr_002_464c:
    ld l, [hl]
    ld [hl], e

jr_002_464e:
    jr nz, jr_002_4682

jr_002_4650:
    jr nz, @+$22

jr_002_4652:
    jr nz, jr_002_4674

    jr nz, jr_002_4676

    ld e, e
    add b
    ld c, b
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_002_46ad

    ld l, [hl]
    jr nz, @+$22

    jr nz, jr_002_4683

    jr nz, jr_002_4685

    jr nz, @+$22

    jr nz, jr_002_46c6

    add b
    ld c, b
    ld h, l
    ld a, b
    ld b, e
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, @+$2a

    ld b, e

jr_002_4674:
    ld l, a
    ld l, h

jr_002_4676:
    ld l, a
    ld [hl], d
    add hl, hl
    jr nz, jr_002_46d9

    add b
    ld c, b
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_002_46c3

jr_002_4682:
    ld l, h

jr_002_4683:
    ld l, a
    ld l, [hl]

jr_002_4685:
    ld h, l
    jr nz, jr_002_46a8

    jr nz, @+$22

    jr nz, jr_002_46ac

    ld e, a

jr_002_468d:
    add b
    ld c, b
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_002_46d5

    ld l, h
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_002_46cc

    jr nz, jr_002_46bc

    jr nz, jr_002_46be

    ld e, h
    add b
    ld c, b
    db $76
    ld a, c
    ld [hl], a
    ld h, l
    ld l, c
    ld h, a
    ld l, b

jr_002_46a8:
    ld [hl], h
    jr nz, jr_002_46ed

    ld l, a

jr_002_46ac:
    ld a, b

jr_002_46ad:
    ld l, c
    ld l, [hl]
    ld h, a
    ld h, b
    add b
    ld c, c
    ld [hl], h
    ld h, e
    ld l, b
    ld a, c
    jr nz, @+$28

    jr nz, jr_002_470e

    ld h, e

jr_002_46bc:
    ld [hl], d
    ld h, c

jr_002_46be:
    ld [hl], h
    ld h, e
    ld l, b
    ld a, c
    ld h, c

jr_002_46c3:
    add b
    ld c, d
    ld [hl], l

jr_002_46c6:
    ld h, h
    ld h, a
    ld h, l
    jr nz, jr_002_470f

    ld [hl], d

jr_002_46cc:
    ld h, l
    ld h, h
    ld h, h
    jr nz, jr_002_46f1

    jr nz, jr_002_46f3

    jr nz, jr_002_4737

jr_002_46d5:
    add b
    ld c, e
    ld h, c
    ld [hl], d

jr_002_46d9:
    ld h, c
    ld [hl], h
    ld h, l
    ld l, e
    ld h, c
    jr nz, jr_002_4700

    jr nz, jr_002_4702

    jr nz, jr_002_4704

    jr nz, @+$22

    ld h, e
    add b
    ld c, e
    ld h, c
    ld [hl], h
    ld [hl], h
    ld l, a

jr_002_46ed:
    ld h, d
    ld l, c
    jr nz, jr_002_4743

jr_002_46f1:
    ld l, a
    ld h, c

jr_002_46f3:
    ld h, h
    jr nz, jr_002_4716

    jr nz, jr_002_4718

    ld h, h
    add b
    ld c, e
    ld h, l
    ld l, [hl]
    jr nz, jr_002_4746

    ld [hl], d

jr_002_4700:
    ld l, c
    ld h, [hl]

jr_002_4702:
    ld h, [hl]
    ld h, l

jr_002_4704:
    ld a, c
    jr nz, jr_002_4751

    ld [hl], d
    jr nz, @+$22

    ld h, l
    add b
    ld c, e
    ld l, c

jr_002_470e:
    ld l, h

jr_002_470f:
    ld l, h
    ld h, l
    ld [hl], d
    jr nz, jr_002_4768

    ld l, a
    ld l, l

jr_002_4716:
    ld h, c
    ld [hl], h

jr_002_4718:
    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_002_4783

    add b
    ld c, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$51

    ld h, [hl]
    jr nz, jr_002_477b

    ld l, b
    ld h, l
    jr nz, jr_002_477d

    ld l, c
    ld l, [hl]
    ld h, a
    ld h, a
    add b
    ld c, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld h, h
    ld l, a
    ld l, l

jr_002_4737:
    jr nz, @+$45

    ld [hl], d
    ld [hl], l
    ld [hl], e
    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_002_47a9

    add b
    ld c, e

jr_002_4743:
    ld l, c
    ld [hl], d
    ld h, d

jr_002_4746:
    ld a, c
    ld [hl], e
    jr nz, jr_002_478e

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    ld c, h
    ld h, c
    ld l, [hl]

jr_002_4751:
    ld h, h
    ld l, c
    add b
    ld c, e
    ld l, h
    ld h, c
    ld a, b
    jr nz, @+$2a

    ld b, e
    ld l, a
    ld l, h
    ld l, a
    ld [hl], d
    add hl, hl
    jr nz, @+$22

    jr nz, jr_002_4784

    ld l, d
    add b
    ld c, e
    ld l, [hl]

jr_002_4768:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_002_47bf

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_002_4794

    jr nz, @+$22

    ld l, e
    add b
    ld c, h
    ld h, c
    ld [hl], e

jr_002_477b:
    jr nz, jr_002_47d3

jr_002_477d:
    ld h, l
    ld h, a
    ld h, c
    ld [hl], e
    jr nz, jr_002_47c6

jr_002_4783:
    ld l, h

jr_002_4784:
    jr nz, @+$4a

    ld l, [hl]
    ld h, h
    ld l, h
    add b
    ld c, h
    ld h, c
    ld [hl], e
    ld [hl], h

jr_002_478e:
    jr nz, jr_002_47d1

    ld h, e
    ld [hl], h
    ld l, c
    ld l, a

jr_002_4794:
    ld l, [hl]
    jr nz, jr_002_47df

    ld h, l
    ld [hl], d
    ld l, a

jr_002_479a:
    ld l, l
    add b
    ld c, h
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    ld h, c
    ld l, h
    jr nz, @+$59

    ld h, l
    ld h, c
    ld [hl], b
    ld l, a

jr_002_47a9:
    ld l, [hl]
    jr nz, @+$22

    ld l, [hl]

jr_002_47ad:
    add b
    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e
    daa
    ld [hl], e
    jr nz, jr_002_47f7

    ld [hl], a
    ld h, c
    ld l, e
    ld h, l
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, a

jr_002_47bf:
    add b

jr_002_47c0:
    ld c, h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_002_4811

jr_002_47c6:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$22

    jr nz, jr_002_47ed

    jr nz, jr_002_47ef

    jr nz, jr_002_4841

jr_002_47d1:
    add b
    ld c, h

jr_002_47d3:
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_002_4827

    ld h, l
    ld [hl], d
    ld l, l
    ld h, c
    ld l, c

jr_002_47df:
    ld h, h
    jr nz, @+$22

    ld [hl], c
    add b
    ld c, h
    ld l, a
    ld h, e
    ld l, e
    daa
    ld c, [hl]
    jr nz, jr_002_482f

    ld l, b

jr_002_47ed:
    ld h, c
    ld [hl], e

jr_002_47ef:
    ld h, l
    jr nz, jr_002_4812

    jr nz, @+$22

    ld [hl], d
    add b
    ld c, h

jr_002_47f7:
    ld l, a
    ld l, a
    ld [hl], b
    ld a, d
    jr nz, jr_002_481d

    jr nz, jr_002_481f

    jr nz, jr_002_4821

    jr nz, jr_002_4823

    jr nz, jr_002_4825

    jr nz, jr_002_487a

    add b
    ld c, h
    ld [hl], l
    ld l, [hl]
    ld h, c
    jr nz, @+$4e

    ld h, c
    ld l, [hl]
    ld h, h

jr_002_4811:
    ld h, l

jr_002_4812:
    ld [hl], d
    jr nz, jr_002_4835

    jr nz, jr_002_4837

    jr nz, jr_002_479a

    add b
    ld c, l
    jr nz, jr_002_4868

jr_002_481d:
    jr nz, jr_002_4850

jr_002_481f:
    jr nz, jr_002_4841

jr_002_4821:
    jr nz, jr_002_4843

jr_002_4823:
    jr nz, jr_002_4845

jr_002_4825:
    jr nz, jr_002_4847

jr_002_4827:
    jr nz, jr_002_4849

    jr nz, jr_002_47ad

    add b
    ld c, l
    jr nz, jr_002_487a

jr_002_482f:
    jr nz, jr_002_4863

    jr nz, jr_002_4853

    jr nz, jr_002_4855

jr_002_4835:
    jr nz, jr_002_4857

jr_002_4837:
    jr nz, jr_002_4859

    jr nz, jr_002_485b

    jr nz, jr_002_47c0

    add b
    ld c, l
    jr nz, jr_002_488c

jr_002_4841:
    jr nz, jr_002_4876

jr_002_4843:
    jr nz, jr_002_4865

jr_002_4845:
    jr nz, jr_002_4867

jr_002_4847:
    jr nz, jr_002_4869

jr_002_4849:
    jr nz, jr_002_486b

    jr nz, jr_002_486d

    jr nz, jr_002_47d3

    add b

jr_002_4850:
    ld c, l
    jr nz, jr_002_489e

jr_002_4853:
    jr nz, jr_002_4889

jr_002_4855:
    jr nz, jr_002_4877

jr_002_4857:
    jr nz, jr_002_4879

jr_002_4859:
    jr nz, jr_002_487b

jr_002_485b:
    jr nz, @+$22

    jr nz, jr_002_487f

    jr nz, jr_002_48d5

    add b
    ld c, l

jr_002_4863:
    ld h, c
    ld l, [hl]

jr_002_4865:
    ld [hl], e
    ld h, l

jr_002_4867:
    ld l, h

jr_002_4868:
    ld l, h

jr_002_4869:
    jr nz, @+$22

jr_002_486b:
    jr nz, jr_002_488d

jr_002_486d:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_002_48e8

    add b
    ld c, l
    ld h, e

jr_002_4876:
    ld b, h

jr_002_4877:
    ld l, a
    ld l, [hl]

jr_002_4879:
    ld h, c

jr_002_487a:
    ld l, h

jr_002_487b:
    ld h, h
    jr nz, jr_002_48ca

    ld h, c

jr_002_487f:
    ld l, [hl]
    ld h, h
    jr nz, @+$22

    jr nz, jr_002_48fb

    add b
    ld c, l
    ld h, l
    ld h, a

jr_002_4889:
    ld h, c
    jr nz, jr_002_48d9

jr_002_488c:
    ld h, c

jr_002_488d:
    ld l, [hl]
    jr nz, jr_002_48b0

    jr nz, jr_002_48b2

    jr nz, jr_002_48b4

    jr nz, jr_002_48b6

    ld [hl], a
    add b
    ld c, l
    ld h, l
    ld h, a
    ld h, c
    jr nz, jr_002_48eb

jr_002_489e:
    ld h, c
    ld l, [hl]
    jr nz, @+$36

    jr nz, jr_002_48c4

    jr nz, jr_002_48c6

    jr nz, jr_002_48c8

    ld a, b
    add b
    ld c, l
    ld h, l
    ld h, a
    ld h, c
    jr nz, jr_002_48fd

jr_002_48b0:
    ld h, c
    ld l, [hl]

jr_002_48b2:
    jr nz, jr_002_48e9

jr_002_48b4:
    jr nz, @+$22

jr_002_48b6:
    jr nz, @+$22

    jr nz, @+$22

    ld a, c
    add b
    ld c, l
    ld h, l
    ld l, [hl]
    jr nz, jr_002_490a

    ld l, [hl]
    jr nz, jr_002_4906

jr_002_48c4:
    ld l, h
    ld h, c

jr_002_48c6:
    ld h, e
    ld l, e

jr_002_48c8:
    jr nz, jr_002_48ea

jr_002_48ca:
    jr nz, jr_002_48ec

    ld a, d
    add b
    ld c, l
    ld h, l
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, c
    ld h, h

jr_002_48d5:
    jr nz, jr_002_4909

    jr nz, jr_002_48f9

jr_002_48d9:
    jr nz, jr_002_48fb

    jr nz, jr_002_48fd

    jr nz, jr_002_495a

    add b
    ld c, l
    ld l, c
    ld h, e
    ld l, e
    ld h, l
    ld a, c
    jr nz, jr_002_4935

jr_002_48e8:
    ld l, a

jr_002_48e9:
    ld [hl], l

jr_002_48ea:
    ld [hl], e

jr_002_48eb:
    ld h, l

jr_002_48ec:
    jr nz, jr_002_490e

    jr nz, jr_002_4910

    ld a, h
    add b
    ld c, l
    ld l, c
    ld h, e
    ld [hl], d
    ld l, a
    jr nz, jr_002_4946

jr_002_48f9:
    ld h, c
    ld h, e

jr_002_48fb:
    ld l, b
    ld l, c

jr_002_48fd:
    ld l, [hl]
    ld h, l
    ld [hl], e
    jr nz, @+$34

    ld a, l
    add b
    ld c, l
    ld l, c

jr_002_4906:
    ld l, h
    ld l, h
    ld l, c

jr_002_4909:
    ld [hl], b

jr_002_490a:
    ld h, l
    ld h, h
    ld h, l
    cpl

jr_002_490e:
    ld b, e
    ld h, l

jr_002_4910:
    ld l, [hl]
    ld [hl], h
    jr nz, @+$22

    ld a, [hl]
    add b
    ld c, l
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_002_494f

    jr nc, jr_002_4953

    add hl, sp
    ld h, l
    ld [hl], d
    jr nz, jr_002_4944

    jr nz, jr_002_4946

    ld a, a
    add b
    ld c, l
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], a
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_002_4955

jr_002_4935:
    jr nz, @+$22

    jr nz, @-$7e

    add b
    ld c, l
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld a, d
    ld [hl], l
    ld l, l

jr_002_4942:
    ld h, c
    ld [hl], e

jr_002_4944:
    jr nz, jr_002_4998

jr_002_4946:
    ld h, l
    ld [hl], h
    ld [hl], d
    ld l, [hl]
    add l
    add b
    ld c, l
    ld l, a
    ld [hl], l

jr_002_494f:
    ld [hl], e
    ld h, l
    jr nz, jr_002_49a7

jr_002_4953:
    ld [hl], d
    ld h, c

jr_002_4955:
    ld [hl], b
    jr nz, jr_002_49a0

    ld l, a
    ld [hl], h

jr_002_495a:
    ld h, l
    ld l, h
    add [hl]
    add b
    ld c, l
    ld [hl], d
    ld l, $20
    ld c, [hl]
    ld [hl], l
    ld [hl], h
    ld a, d
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    add a
    add b
    ld c, l
    ld [hl], e
    ld l, $20
    ld d, b
    ld h, c
    ld h, e
    dec l
    ld l, l
    ld h, c
    ld l, [hl]

jr_002_497b:
    jr nz, jr_002_499d

    jr nz, jr_002_499f

    jr nz, jr_002_4909

    add b
    ld c, l
    ld [hl], l
    ld l, h
    ld h, c
    ld l, [hl]
    jr nz, jr_002_49a9

    jr nz, jr_002_49ab

    jr nz, @+$22

    jr nz, jr_002_49af

    jr nz, @+$22

    jr nz, @-$75

    add b
    ld c, l
    ld a, c
    ld [hl], e
    ld [hl], h

jr_002_4998:
    ld l, c
    ld h, e
    jr nz, jr_002_49ed

    ld [hl], l

jr_002_499d:
    ld h, l
    ld [hl], e

jr_002_499f:
    ld [hl], h

jr_002_49a0:
    jr nz, @+$22

    jr nz, @+$22

    adc d
    add b
    ld c, [hl]

jr_002_49a7:
    ld b, d
    ld b, c

jr_002_49a9:
    jr nz, jr_002_49f4

jr_002_49ab:
    ld l, [hl]
    jr nz, jr_002_4a02

    ld l, b

jr_002_49af:
    ld h, l
    jr nz, @+$5c

    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_002_4942

    add b
    ld c, [hl]
    ld b, d
    ld b, c
    jr nz, jr_002_4a07

    ld h, c
    ld l, l
    jr nz, jr_002_4a15

    ld l, $45
    ld l, $20
    jr nz, jr_002_49e7

    jr nz, jr_002_4955

    add b
    ld c, [hl]
    ld c, b
    ld c, h
    jr nz, jr_002_4a11

    ld l, h
    ld h, c
    ld h, h
    ld h, l
    ld [hl], e
    jr nz, jr_002_4a29

    ld [hl], h
    ld h, l
    ld h, l
    ld l, h
    adc l
    add b
    ld c, [hl]
    ld l, c
    ld l, [hl]
    ld l, d
    ld h, c
    jr nz, jr_002_4a35

    ld a, c
    ld [hl], l
    ld l, e
    ld h, l

jr_002_49e7:
    ld l, [hl]
    ld h, h
    ld h, l
    ld l, [hl]
    jr nz, jr_002_497b

jr_002_49ed:
    add b
    ld c, a
    ld l, c
    ld l, h
    jr nz, @+$52

    ld h, c

jr_002_49f4:
    ld l, [hl]
    ld l, c
    ld h, e
    dec l
    ld b, e
    ld l, h
    ld h, c
    ld [hl], e
    jr nz, jr_002_4a1e

    adc a
    add b
    ld d, b
    ld h, c

jr_002_4a02:
    ld h, e
    dec l
    ld c, c
    ld l, [hl]
    dec l

jr_002_4a07:
    ld d, h
    ld l, c
    ld l, l
    ld h, l
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @-$6e

jr_002_4a11:
    add b
    ld d, b

jr_002_4a13:
    ld h, c
    ld [hl], b

jr_002_4a15:
    ld h, l
    ld [hl], d
    ld h, d
    ld l, a
    ld a, c
    jr nz, jr_002_4a4e

    jr nz, @+$22

jr_002_4a1e:
    jr nz, jr_002_4a40

    jr nz, jr_002_4a42

    sub c
    add b
    ld d, b
    ld h, c
    ld [hl], d

jr_002_4a27:
    ld l, a
    ld h, h

jr_002_4a29:
    ld l, c
    ld [hl], l
    ld [hl], e
    jr nz, jr_002_4a4e

    jr nz, @+$22

    jr nz, jr_002_4a52

    jr nz, jr_002_4a54

    sub d

jr_002_4a35:
    add b
    ld d, b
    ld h, l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld l, c
    ld l, [hl]
    jr nz, jr_002_4a8b

    ld h, c

jr_002_4a40:
    ld l, [hl]
    ld h, h

jr_002_4a42:
    jr nz, jr_002_4a64

    jr nz, jr_002_4a66

    sub e
    add b
    ld d, b
    ld l, c
    ld l, [hl]
    ld h, d
    ld h, c
    ld l, h

jr_002_4a4e:
    ld l, h
    jr nz, jr_002_4a97

    ld h, c

jr_002_4a52:
    ld l, [hl]
    ld [hl], h

jr_002_4a54:
    ld h, c
    ld [hl], e
    ld a, c
    jr nz, jr_002_49ed

    add b
    ld d, b
    ld l, c
    ld [hl], b
    ld h, l
    jr nz, jr_002_4aa4

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l

jr_002_4a64:
    jr nz, jr_002_4a86

jr_002_4a66:
    jr nz, jr_002_4a88

    jr nz, @+$22

    sub l
    add b
    ld d, b
    ld l, c
    ld [hl], h
    jr nz, jr_002_4ab7

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_002_4a99

    jr nz, jr_002_4a9b

    jr nz, jr_002_4a13

    add b
    ld d, b
    ld l, c
    ld [hl], h
    jr nz, jr_002_4ac9

    ld l, c
    ld h, a
    ld l, b

jr_002_4a86:
    ld [hl], h
    ld h, l

jr_002_4a88:
    ld [hl], d
    jr nz, @+$45

jr_002_4a8b:
    ld l, h
    ld [hl], d
    jr nz, jr_002_4a27

    add b
    ld d, b
    ld l, e
    jr nz, jr_002_4ad6

    ld l, a
    ld l, l
    ld h, d

jr_002_4a97:
    ld h, l
    ld [hl], d

jr_002_4a99:
    ld l, l
    ld h, c

jr_002_4a9b:
    ld l, [hl]
    jr nz, jr_002_4ae1

    ld l, h
    ld [hl], d
    sub a
    add b
    ld d, b
    ld l, a

jr_002_4aa4:
    ld h, e
    ld h, c
    ld l, b
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld [hl], e
    jr nz, @+$22

    jr nz, jr_002_4ad0

    jr nz, jr_002_4ad2

    db $eb
    add b
    ld d, b
    ld l, a
    ld l, e

jr_002_4ab7:
    ld h, l
    ld l, l
    ld l, a
    ld l, [hl]

jr_002_4abb:
    jr nz, jr_002_4b0d

    ld l, c
    ld l, [hl]
    ld h, d
    ld h, c
    ld l, h
    ld l, h
    jr nz, @-$16

    add b
    ld d, b
    ld l, a
    ld l, e

jr_002_4ac9:
    ld h, l
    ld l, l
    ld l, a
    ld l, [hl]
    jr nz, jr_002_4b41

    ld h, l

jr_002_4ad0:
    ld h, h
    dec hl

jr_002_4ad2:
    ld h, d
    ld l, h
    ld [hl], l
    ld h, l

jr_002_4ad6:
    jp hl


    add b
    ld d, b
    ld l, a
    ld l, e
    ld h, l
    ld l, l
    ld l, a
    ld l, [hl]
    jr nz, jr_002_4b3a

jr_002_4ae1:
    ld h, l
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, @+$22

    sbc c
    add b
    ld d, b
    ld l, a
    ld [hl], b
    ld h, l
    ld a, c
    ld h, l
    jr nz, jr_002_4b24

    jr nz, @+$22

    jr nz, jr_002_4b16

    jr nz, jr_002_4b18

    jr nz, @+$22

    sbc d
    add b
    ld d, b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_002_4b50

    ld l, a
    db $76
    ld l, c
    ld h, l
    jr nz, jr_002_4b50

    ld b, d
    jr nz, jr_002_4b2c

    sbc e

jr_002_4b0d:
    add b
    ld d, b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_002_4b66

    ld [hl], l

jr_002_4b16:
    ld h, l
    ld [hl], e

jr_002_4b18:
    ld [hl], h

jr_002_4b19:
    jr nz, jr_002_4b5e

    ld l, h
    ld [hl], d
    jr nz, jr_002_4abb

    add b
    ld d, b
    ld l, a
    ld [hl], a
    ld h, l

jr_002_4b24:
    ld [hl], d
    jr nz, jr_002_4b79

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d

jr_002_4b2c:
    ld [hl], e
    jr nz, @+$22

    jr nz, @-$61

    add b
    ld d, b
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_002_4b89

jr_002_4b3a:
    ld h, [hl]
    jr nz, jr_002_4b8d

    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, c

jr_002_4b41:
    ld h, c
    sbc [hl]
    add b
    ld d, b
    ld [hl], d
    ld l, c
    ld d, b
    ld [hl], d
    ld l, c
    jr nz, jr_002_4b6c

    jr nz, @+$22

    jr nz, jr_002_4b70

jr_002_4b50:
    jr nz, jr_002_4b72

    jr nz, jr_002_4b74

    sbc a
    add b
    ld d, c
    ld a, [hl+]
    ld b, d
    ld h, l
    ld [hl], d
    ld [hl], h
    jr nz, jr_002_4b90

jr_002_4b5e:
    jr nz, @+$22

    jr nz, jr_002_4b82

    jr nz, jr_002_4b84

    jr nz, jr_002_4b86

jr_002_4b66:
    and c
    add b
    ld d, c
    ld [hl], l
    ld h, l
    ld [hl], e

jr_002_4b6c:
    ld [hl], h
    jr nz, jr_002_4bb2

    ld h, c

jr_002_4b70:
    ld l, l
    ld h, l

jr_002_4b72:
    ld l, h
    ld l, a

jr_002_4b74:
    ld [hl], h
    jr nz, jr_002_4b97

    jr nz, jr_002_4b19

jr_002_4b79:
    add b
    ld d, c
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, @+$48

    ld h, c

jr_002_4b82:
    ld l, [hl]
    ld [hl], h

jr_002_4b84:
    ld h, c
    ld [hl], e

jr_002_4b86:
    ld a, c
    jr nz, @+$45

jr_002_4b89:
    ld l, b
    and d
    add b

jr_002_4b8c:
    ld d, d

jr_002_4b8d:
    ld h, c
    ld l, l
    ld [hl], b

jr_002_4b90:
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_002_4bec

    ld l, a
    ld [hl], d

jr_002_4b97:
    ld l, h
    ld h, h
    jr nz, @+$56

    ld [hl], d
    and e
    add b
    ld d, d
    ld h, l
    ld h, d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$22

    jr nz, jr_002_4bc9

    jr nz, jr_002_4bcb

    jr nz, jr_002_4bcd

    jr nz, @-$5a

    add b
    ld d, d
    ld h, l

jr_002_4bb2:
    ld h, h
    jr nz, jr_002_4c04

    ld h, e
    ld [hl], h
    ld l, a
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_002_4bdd

    jr nz, jr_002_4bdf

    jr nz, jr_002_4b66

    add b
    ld d, d
    ld l, c

jr_002_4bc4:
    ld l, [hl]
    ld h, a
    jr nz, @+$54

    ld h, c

jr_002_4bc9:
    ld h, a
    ld h, l

jr_002_4bcb:
    jr nz, jr_002_4bed

jr_002_4bcd:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_002_4b79

    add b
    ld d, d
    ld l, a
    ld h, e
    ld l, e
    ld l, l
    ld h, c
    ld l, [hl]
    jr nz, @+$59

jr_002_4bdd:
    ld l, a
    ld [hl], d

jr_002_4bdf:
    ld l, h
    ld h, h
    jr nz, jr_002_4c03

    jr nz, jr_002_4b8c

    add b
    ld d, d
    ld l, a
    ld h, h
    jr nz, jr_002_4c37

jr_002_4beb:
    ld h, c

jr_002_4bec:
    ld l, [hl]

jr_002_4bed:
    ld h, h
    jr nz, jr_002_4c10

    jr nz, @+$22

    jr nz, jr_002_4c14

    jr nz, jr_002_4c16

    xor b
    add b
    ld d, d
    ld [hl], l
    ld h, d
    ld h, d
    ld l, h
    ld h, l

jr_002_4bfe:
    jr nz, jr_002_4c53

    ld h, c
    db $76
    ld h, l

jr_002_4c03:
    ld [hl], d

jr_002_4c04:
    jr nz, @+$34

    jr nz, @+$22

    xor d
    add b
    ld d, d
    ld [hl], l
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h

jr_002_4c10:
    ld [hl], e
    jr nz, jr_002_4c60

    ld l, a

jr_002_4c14:
    db $76
    ld l, c

jr_002_4c16:
    ld h, l
    jr nz, jr_002_4c39

    jr nz, jr_002_4bc4

    add b
    ld d, d
    ld [hl], l
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_002_4c79

    ld l, b
    ld h, l
    jr nz, jr_002_4c76

    ld l, a
    db $76
    ld l, c
    xor e
    add b
    ld d, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_002_4c53

    jr nz, jr_002_4c55

    jr nz, jr_002_4c57

jr_002_4c37:
    jr nz, @+$22

jr_002_4c39:
    jr nz, jr_002_4c5b

    jr nz, jr_002_4c5d

    jr nz, jr_002_4beb

    add b
    ld d, e
    ld h, c
    ld l, l
    ld [hl], l
    ld [hl], d
    ld h, c
    ld l, c
    jr nz, jr_002_4c9c

    ld l, b
    ld l, a
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_002_4bfe

    add b
    ld d, e

jr_002_4c53:
    ld l, b
    ld h, c

jr_002_4c55:
    ld h, h
    ld l, a

jr_002_4c57:
    ld [hl], a
    jr nz, jr_002_4cb1

    ld h, c

jr_002_4c5b:
    ld [hl], d
    ld [hl], d

jr_002_4c5d:
    ld l, c
    ld l, a
    ld [hl], d

jr_002_4c60:
    jr nz, jr_002_4c82

    xor [hl]
    add b
    ld d, e
    ld l, b
    ld l, c
    ld [hl], b
    ld [hl], b
    ld l, a
    jr nz, jr_002_4cb0

    ld h, l
    jr nz, jr_002_4cb1

    ld [hl], l
    ld l, [hl]
    jr nz, jr_002_4c93

    jr nz, @-$4f

    add b

jr_002_4c76:
    ld d, e
    ld l, c
    ld l, l

jr_002_4c79:
    ld [hl], b
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, @+$35

    jr nz, jr_002_4ca2

jr_002_4c82:
    jr nz, jr_002_4ca4

    jr nz, jr_002_4ca6

    or b
    add b
    ld d, e
    ld l, e
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_002_4cde

    ld [hl], d
    jr nz, jr_002_4cd6

    ld l, c

jr_002_4c93:
    ld h, l
    jr nz, jr_002_4cb6

    jr nz, jr_002_4cb8

    or c
    add b
    ld d, e
    ld l, l

jr_002_4c9c:
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_002_4cf4

    ld l, a

jr_002_4ca2:
    ld l, h
    ld h, h

jr_002_4ca4:
    ld l, c
    ld h, l

jr_002_4ca6:
    ld [hl], d
    ld [hl], e
    jr nz, jr_002_4cca

    or d
    add b
    ld d, e
    ld l, l
    ld [hl], l
    ld [hl], d

jr_002_4cb0:
    ld h, [hl]

jr_002_4cb1:
    ld [hl], e
    jr nz, jr_002_4cd4

    jr nz, jr_002_4cd6

jr_002_4cb6:
    jr nz, jr_002_4cd8

jr_002_4cb8:
    jr nz, jr_002_4cda

    jr nz, jr_002_4cdc

    or e
    add b
    ld d, e
    ld l, [hl]
    ld l, a
    ld l, a
    ld [hl], b
    ld a, c
    jr nz, jr_002_4ce6

    jr nz, @+$22

    jr nz, jr_002_4cea

jr_002_4cca:
    jr nz, jr_002_4cec

    jr nz, jr_002_4cee

    or h

jr_002_4ccf:
    add b
    ld d, e
    ld l, a
    ld h, e
    ld h, e

jr_002_4cd4:
    ld h, l
    ld [hl], d

jr_002_4cd6:
    jr nz, jr_002_4d1a

jr_002_4cd8:
    ld l, a
    ld a, c

jr_002_4cda:
    jr nz, jr_002_4cfc

jr_002_4cdc:
    jr nz, jr_002_4cfe

jr_002_4cde:
    jr nz, jr_002_4d00

    or l
    add b

jr_002_4ce2:
    ld d, e
    ld l, a
    ld l, h
    ld l, a

jr_002_4ce6:
    ld [hl], d
    jr nz, jr_002_4d3c

    ld [hl], h

jr_002_4cea:
    ld [hl], d
    ld l, c

jr_002_4cec:
    ld l, e
    ld h, l

jr_002_4cee:
    ld [hl], d
    jr nz, jr_002_4d11

    jr nz, @-$48

    add b

jr_002_4cf4:
    ld d, e

jr_002_4cf5:
    ld [hl], b
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_002_4d44

    ld l, [hl]

jr_002_4cfc:
    db $76
    ld h, c

jr_002_4cfe:
    ld h, h
    ld h, l

jr_002_4d00:
    ld [hl], d
    ld [hl], e
    jr nz, jr_002_4d24

    or a
    add b
    ld d, e
    ld [hl], b
    ld h, l
    ld h, l
    ld h, h
    ld a, c
    jr nz, jr_002_4d55

    ld l, a
    ld l, [hl]
    ld a, d

jr_002_4d11:
    ld h, c
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_002_4ccf

    add b
    ld d, e
    ld [hl], b

jr_002_4d1a:
    ld l, c

jr_002_4d1b:
    ld h, h
    ld h, l
    ld [hl], d
    ld l, l
    ld h, c
    ld l, [hl]
    jr nz, jr_002_4d7b

    dec l

jr_002_4d24:
    ld c, l
    ld h, l
    ld l, [hl]
    jr nz, jr_002_4ce2

    add b
    ld d, e
    ld [hl], b
    ld a, c
    jr nz, jr_002_4d85

    ld [hl], e
    ld l, $20
    ld d, e
    ld [hl], b
    ld a, c
    jr nz, jr_002_4d57

    jr nz, jr_002_4d59

    jr nz, jr_002_4cf5

    add b

jr_002_4d3c:
    ld d, e
    ld [hl], c
    jr nz, jr_002_4d84

    ld [hl], e

jr_002_4d41:
    db $76
    jr nz, jr_002_4d88

jr_002_4d44:
    ld l, l
    ld h, a
    jr nz, jr_002_4d68

    jr nz, jr_002_4d6a

    jr nz, jr_002_4d6c

    cp e
    add b
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    jr nz, jr_002_4d9c

    ld h, c

jr_002_4d55:
    ld [hl], a
    ld l, e

jr_002_4d57:
    jr nz, jr_002_4d79

jr_002_4d59:
    jr nz, jr_002_4d7b

    jr nz, jr_002_4d7d

    jr nz, jr_002_4d1b

    add b
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    jr nz, jr_002_4db9

    ld h, c
    db $76

jr_002_4d68:
    ld h, l
    ld [hl], d

jr_002_4d6a:
    jr nz, jr_002_4d8c

jr_002_4d6c:
    jr nz, @+$22

    jr nz, jr_002_4d90

    cp l
    add b
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    jr nz, jr_002_4dcf

    ld h, c

jr_002_4d79:
    ld [hl], d
    ld [hl], e

jr_002_4d7b:
    jr nz, @+$22

jr_002_4d7d:
    jr nz, jr_002_4d9f

    jr nz, jr_002_4da1

    jr nz, jr_002_4d41

    add b

jr_002_4d84:
    ld d, e

jr_002_4d85:
    ld [hl], h
    ld l, a
    ld [hl], b

jr_002_4d88:
    jr nz, jr_002_4dde

    ld l, b
    ld h, c

jr_002_4d8c:
    ld [hl], h

jr_002_4d8d:
    jr nz, jr_002_4de1

    ld l, a

jr_002_4d90:
    ld h, c
    ld h, e
    ld l, b
    ld hl, $80bf
    ld d, e
    ld [hl], h
    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], h

jr_002_4d9c:
    jr nz, @+$48

    ld l, c

jr_002_4d9f:
    ld h, a
    ld l, b

jr_002_4da1:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld c, c
    ld c, c
    ret nz

    add b
    ld d, e
    ld [hl], h
    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_002_4e02

    ld h, c
    ld h, e
    ld h, l
    ld [hl], d
    jr nz, jr_002_4dd6

    jr nz, @+$22

    pop bc

jr_002_4db9:
    add b
    ld d, e
    ld [hl], l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_002_4e03

    ld [hl], d
    ld h, l
    ld h, c
    ld l, e
    jr nz, jr_002_4e16

    ld [hl], l
    ld [hl], h
    jr nz, jr_002_4d8d

    add b
    ld d, e
    ld [hl], l
    ld [hl], b

jr_002_4dcf:
    ld h, l
    ld [hl], d
    jr nz, jr_002_4e16

    ld l, b
    ld h, c
    ld [hl], e

jr_002_4dd6:
    ld h, l
    jr nz, jr_002_4e21

    ld l, $51
    ld l, $c3
    add b

jr_002_4dde:
    ld d, e
    ld [hl], l
    ld [hl], b

jr_002_4de1:
    ld h, l
    ld [hl], d
    jr nz, jr_002_4e30

    ld l, c
    ld h, e
    ld l, e
    jr nz, jr_002_4e39

    ld h, [hl]
    ld h, [hl]
    jr nz, @+$22

    call nz, Call_002_5380
    ld [hl], l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_002_4e44

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_002_4e49

    ld l, [hl]
    ld h, h
    ld sp, $80c5

jr_002_4e02:
    ld d, e

jr_002_4e03:
    ld [hl], l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_002_4e56

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, @+$4e

    ld l, [hl]
    ld h, h
    ld [hl-], a
    add $80
    ld d, e
    ld [hl], l

jr_002_4e16:
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_002_4e68

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, @+$4e

jr_002_4e21:
    ld l, [hl]
    ld h, h
    inc sp
    rst $00
    add b
    ld d, e
    ld [hl], l
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, l
    ld h, c
    ld l, [hl]
    jr nz, jr_002_4e50

jr_002_4e30:
    jr nz, jr_002_4e52

    jr nz, jr_002_4e54

    jr nz, jr_002_4e56

    ret z

    add b
    ld d, h

jr_002_4e39:
    ld h, c
    ld l, c
    ld l, h
    jr nz, jr_002_4e85

    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    jr nz, jr_002_4e64

jr_002_4e44:
    jr nz, jr_002_4e66

    jr nz, jr_002_4e68

    ret


jr_002_4e49:
    add b
    ld d, h

jr_002_4e4b:
    ld h, c
    ld l, c
    ld l, h
    ld [hl], e
    ld [hl], b

jr_002_4e50:
    ld l, c
    ld l, [hl]

jr_002_4e52:
    jr nz, jr_002_4e74

jr_002_4e54:
    jr nz, jr_002_4e76

jr_002_4e56:
    jr nz, @+$22

    jr nz, @+$22

    jp z, Jump_002_5480

    ld h, c
    ld [hl], d
    ld a, d
    ld h, c
    ld l, [hl]
    jr nz, jr_002_4e84

jr_002_4e64:
    jr nz, jr_002_4e86

jr_002_4e66:
    jr nz, jr_002_4e88

jr_002_4e68:
    jr nz, jr_002_4e8a

    jr nz, jr_002_4e8c

    res 0, b
    ld d, h
    ld h, c
    ld a, d
    dec l
    ld c, l
    ld h, c

jr_002_4e74:
    ld l, [hl]
    ld l, c

jr_002_4e76:
    ld h, c
    jr nz, jr_002_4e99

    jr nz, jr_002_4e9b

    jr nz, @+$22

    jr nz, jr_002_4e4b

    add b
    ld d, h
    ld h, l
    ld [hl], d
    ld l, l

jr_002_4e84:
    ld l, c

jr_002_4e85:
    ld l, [hl]

jr_002_4e86:
    ld h, c
    ld [hl], h

jr_002_4e88:
    ld l, a
    ld [hl], d

jr_002_4e8a:
    jr nz, jr_002_4ebe

jr_002_4e8c:
    jr nz, jr_002_4eae

    jr nz, jr_002_4eb0

    call Call_002_5480
    ld h, l
    ld [hl], d
    ld l, l
    ld l, c

jr_002_4e97:
    ld l, [hl]
    ld h, c

jr_002_4e99:
    ld [hl], h
    ld l, a

jr_002_4e9b:
    ld [hl], d
    jr nz, jr_002_4ed0

    jr nz, jr_002_4ef4

    ld h, c
    ld h, a
    adc $80
    ld d, h
    ld h, l
    ld [hl], h
    ld [hl], d
    ld l, c
    ld [hl], e

jr_002_4eaa:
    jr nz, jr_002_4ecc

    jr nz, @+$22

jr_002_4eae:
    jr nz, jr_002_4ed0

jr_002_4eb0:
    jr nz, @+$22

    jr nz, jr_002_4ed4

    rst $08
    add b
    ld d, h
    ld h, l
    ld [hl], h
    ld [hl], d
    ld l, c
    ld [hl], e
    jr nz, jr_002_4f0e

jr_002_4ebe:
    ld l, h
    ld [hl], l
    ld [hl], e
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_002_4e97

    add b
    ld d, h
    ld l, c
    ld [hl], h
    ld [hl], l

jr_002_4ecc:
    ld [hl], e
    jr nz, jr_002_4f23

    ld l, b

jr_002_4ed0:
    ld h, l
    jr nz, @+$48

    ld l, a

jr_002_4ed4:
    ld a, b
    jr nz, @+$22

    jr nz, jr_002_4eaa

    add b
    ld d, h
    ld c, l
    ld c, [hl]
    ld d, h
    jr nz, jr_002_4f00

    jr nz, jr_002_4f02

    jr nz, jr_002_4f04

    jr nz, jr_002_4f06

    jr nz, jr_002_4f08

    jr nz, jr_002_4f0a

    jp nc, Jump_002_5480

    ld c, l
    ld c, [hl]
    ld d, h
    jr nz, jr_002_4f24

    jr nz, @+$22

jr_002_4ef4:
    jr nz, jr_002_4f16

jr_002_4ef6:
    jr nz, jr_002_4f18

    jr nz, jr_002_4f1a

    jr nz, jr_002_4f1c

    db $d3
    add b
    ld d, h
    ld c, l

jr_002_4f00:
    ld c, [hl]
    ld d, h

jr_002_4f02:
    jr nz, jr_002_4f37

jr_002_4f04:
    jr nz, jr_002_4f26

jr_002_4f06:
    jr nz, jr_002_4f28

jr_002_4f08:
    jr nz, @+$22

jr_002_4f0a:
    jr nz, jr_002_4f2c

    jr nz, jr_002_4f2e

jr_002_4f0e:
    call nc, Call_002_5480
    ld l, a
    ld [hl], b
    jr nz, jr_002_4f5c

    ld h, l

jr_002_4f16:
    ld h, c
    ld [hl], d

jr_002_4f18:
    jr nz, jr_002_4f6a

jr_002_4f1a:
    ld l, a
    ld h, e

jr_002_4f1c:
    ld l, e
    ld h, l
    ld [hl], h
    jr nz, jr_002_4ef6

    add b
    ld d, h

jr_002_4f23:
    ld l, a

jr_002_4f24:
    ld [hl], l
    ld [hl], d

jr_002_4f26:
    jr nz, jr_002_4f6c

jr_002_4f28:
    ld h, l
    jr nz, jr_002_4f7f

    ld l, b

jr_002_4f2c:
    ld [hl], d
    ld h, c

jr_002_4f2e:
    ld [hl], e
    ld l, b
    jr nz, jr_002_4f52

    sub $80
    ld d, h
    ld [hl], d
    ld h, c

jr_002_4f37:
    ld a, b
    jr nz, jr_002_4f5a

    jr nz, jr_002_4f5c

    jr nz, jr_002_4f5e

    jr nz, jr_002_4f60

    jr nz, @+$22

jr_002_4f42:
    jr nz, @+$22

    rst $10
    add b
    ld d, h
    ld [hl], d
    ld l, c
    ld [hl], b
    jr nz, jr_002_4fa3

    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    jr nz, jr_002_4f72

jr_002_4f52:
    jr nz, jr_002_4f74

    jr nz, jr_002_4f76

    ret c

    add b
    ld d, h
    ld [hl], d

jr_002_4f5a:
    ld [hl], l
    ld h, l

jr_002_4f5c:
    jr nz, jr_002_4faa

jr_002_4f5e:
    ld l, c
    ld h, l

jr_002_4f60:
    ld [hl], e
    jr nz, jr_002_4f83

    jr nz, jr_002_4f85

    jr nz, jr_002_4f87

    jr nz, jr_002_4f42

    add b

jr_002_4f6a:
    ld d, h
    ld [hl], l

jr_002_4f6c:
    ld l, l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_002_4fc2

jr_002_4f72:
    ld l, a
    ld [hl], b

jr_002_4f74:
    jr nz, @+$22

jr_002_4f76:
    jr nz, @+$22

    jr nz, @+$22

    jp c, Jump_002_5480

    ld [hl], l
    ld [hl], d

jr_002_4f7f:
    ld l, a
    ld l, e
    jr nz, jr_002_4fa3

jr_002_4f83:
    jr nz, jr_002_4fa5

jr_002_4f85:
    jr nz, jr_002_4fa7

jr_002_4f87:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @-$23

    add b
    ld d, h
    ld [hl], l
    ld [hl], d
    ld l, a
    ld l, e
    jr nz, jr_002_4fc7

    jr nz, jr_002_4fb7

    jr nz, jr_002_4fb9

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @-$22

    add b
    ld d, h
    ld [hl], l
    ld [hl], d

jr_002_4fa3:
    ld [hl], d
    ld l, c

jr_002_4fa5:
    ld h, e
    ld h, c

jr_002_4fa7:
    ld l, [hl]
    jr nz, jr_002_4fca

jr_002_4faa:
    jr nz, jr_002_4fcc

    jr nz, jr_002_4fce

    jr nz, jr_002_4fd0

    db $dd
    add b
    ld d, h
    ld [hl], a
    ld l, a
    ld [hl], l
    ld h, d

jr_002_4fb7:
    ld l, h
    ld h, l

jr_002_4fb9:
    ld hl, $2020
    jr nz, jr_002_4fde

    jr nz, jr_002_4fe0

    jr nz, @+$22

jr_002_4fc2:
    sbc $80
    ld d, [hl]
    ld l, a
    ld l, h

jr_002_4fc7:
    ld l, h
    ld h, l
    ld a, c

jr_002_4fca:
    ld h, d
    ld h, c

jr_002_4fcc:
    ld l, h
    ld l, h

jr_002_4fce:
    jr nz, jr_002_4ff0

jr_002_4fd0:
    jr nz, jr_002_4ff2

    jr nz, jr_002_4ff4

    rst $18
    add b
    ld d, a
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_002_501f

    ld l, h

jr_002_4fde:
    ld h, c
    ld [hl], e

jr_002_4fe0:
    ld [hl], h
    jr nz, jr_002_5003

    jr nz, @+$22

    jr nz, jr_002_4fc7

    add b
    ld d, a
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a

jr_002_4fed:
    jr nz, @+$4e

    ld h, c

jr_002_4ff0:
    ld l, [hl]
    ld h, h

jr_002_4ff2:
    jr nz, @+$22

jr_002_4ff4:
    jr nz, @+$22

    jr nz, @+$22

    pop hl
    add b
    ld d, a
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_002_504d

    ld h, c
    ld l, [hl]

jr_002_5003:
    ld h, h
    jr nz, @+$4b

    ld c, c
    jr nz, jr_002_5029

    jr nz, jr_002_4fed

    add b
    ld d, a
    ld h, c
    ld [hl], d
    ld a, d
    ld l, a
    ld l, [hl]
    ld h, l

jr_002_5013:
    jr nz, jr_002_5035

    jr nz, jr_002_5037

    jr nz, jr_002_5039

    jr nz, @+$22

    jr nz, @-$1b

    add b
    ld d, a

jr_002_501f:
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_002_507c

    ld l, a

jr_002_5026:
    ld [hl], d
    ld l, h
    ld h, h

jr_002_5029:
    jr nz, jr_002_504b

    jr nz, jr_002_504d

    jr nz, jr_002_5013

    add b
    ld d, a
    ld h, l
    daa
    ld [hl], d
    ld h, l

jr_002_5035:
    jr nz, jr_002_5079

jr_002_5037:
    ld h, c
    ld h, e

jr_002_5039:
    ld l, e
    jr nz, jr_002_507e

    ld b, e
    jr nz, jr_002_505f

    jr nz, jr_002_5026

    add b
    ld d, a
    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_002_5092

jr_002_504b:
    ld l, a

jr_002_504c:
    ld h, c

jr_002_504d:
    ld l, h
    jr nz, jr_002_5070

    jr nz, jr_002_5072

    and $80
    ld d, a
    ld d, a
    ld b, [hl]
    jr nz, jr_002_50ab

    ld h, c
    ld [hl], a
    jr nz, jr_002_507d

    jr nz, jr_002_507f

jr_002_505f:
    jr nz, jr_002_5081

    jr nz, jr_002_5083

    jr nz, jr_002_504c

    add b
    ld e, c
    ld l, a
    ld h, a
    ld l, c
    ld [hl], e
    jr nz, jr_002_50b4

    ld l, a
    ld l, h
    ld h, h

jr_002_5070:
    jr nz, jr_002_50c4

jr_002_5072:
    ld [hl], l
    ld [hl], e
    ld l, b
    jr nz, jr_002_5077

jr_002_5077:
    nop
    nop

jr_002_5079:
    nop
    nop
    nop

jr_002_507c:
    nop

jr_002_507d:
    nop

jr_002_507e:
    nop

jr_002_507f:
    nop
    nop

jr_002_5081:
    nop
    nop

jr_002_5083:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_5092:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_50ab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_50b4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_50c4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_002_5380:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_002_5480:
Jump_002_5480:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_002_5dd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp d
    ld bc, $8001
    ld c, h
    ld l, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_002_602b

    jr nz, jr_002_602d

    jr nz, jr_002_602f

    jr nz, @+$03

    ld b, $2f
    add $02
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6063

    ld h, l
    ld h, c
    ld l, h
    ld [hl], h
    ld l, b
    jr nz, jr_002_6042

    ld bc, $0a10
    call c, $8002
    ld c, c
    ld l, [hl]
    ld h, [hl]

jr_002_602b:
    jr nz, jr_002_6079

jr_002_602d:
    ld l, c
    db $76

jr_002_602f:
    ld h, l
    ld [hl], e
    jr nz, @+$22

    jr nz, jr_002_6036

    inc bc

jr_002_6036:
    add hl, bc
    call c, $8003
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6087

    ld h, l
    ld h, c
    ld l, h

jr_002_6042:
    ld [hl], h
    ld l, b
    jr nz, jr_002_6066

    ld bc, $a399
    rst $00
    inc bc
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6099

    ld d, b
    jr nz, @+$22

    jr nz, jr_002_6076

    jr nz, jr_002_6078

    ld bc, $a108
    rst $00
    inc bc
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_60af

jr_002_6063:
    ld l, c
    db $76
    ld h, l

jr_002_6066:
    ld [hl], e
    jr nz, jr_002_6089

    jr nz, jr_002_606c

    inc bc

jr_002_606c:
    sbc a
    rst $00
    inc b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$44

    ld h, c

jr_002_6076:
    ld l, h
    ld l, h

jr_002_6078:
    ld [hl], e

jr_002_6079:
    jr nz, jr_002_609b

    jr nz, jr_002_607e

    nop

jr_002_607e:
    ld [hl], h
    adc $04
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_60da

jr_002_6087:
    ld [hl], h
    ld [hl], d

jr_002_6089:
    ld l, c
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, jr_002_6090

    nop

jr_002_6090:
    ld [hl], l
    adc $05
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

jr_002_6099:
    ld l, c
    db $76

jr_002_609b:
    ld h, l
    ld [hl], e
    jr nz, jr_002_60bf

    jr nz, jr_002_60a2

    inc bc

jr_002_60a2:
    ld b, h
    jp z, $8006

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$43

    ld l, c
    ld [hl], d
    jr nz, jr_002_60cf

jr_002_60af:
    jr nz, jr_002_60d1

    jr nz, jr_002_60b4

    ld h, e

jr_002_60b4:
    ld a, h
    jp nz, $8007

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_60bf:
    ld h, l
    ld [hl], e
    jr nz, jr_002_60e3

    jr nz, jr_002_60c6

    inc bc

jr_002_60c6:
    ld l, c
    pop bc
    ld [$4980], sp
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

jr_002_60cf:
    ld l, c
    ld l, l

jr_002_60d1:
    ld h, l
    jr nz, jr_002_60f4

    jr nz, jr_002_60f6

    ld bc, $7095
    pop bc

jr_002_60da:
    add hl, bc
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c
    ld l, l

jr_002_60e3:
    ld h, l
    jr nz, jr_002_6106

    jr nz, jr_002_6108

    ld bc, $4515
    jp $800a


    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_613f

    ld l, c

jr_002_60f4:
    db $76
    ld h, l

jr_002_60f6:
    ld [hl], e
    jr nz, jr_002_6119

    jr nz, jr_002_60fc

    inc bc

jr_002_60fc:
    dec bc
    call c, $800b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c

jr_002_6106:
    ld l, l
    ld h, l

jr_002_6108:
    jr nz, jr_002_612a

    jr nz, jr_002_612c

    ld bc, $efea
    ret nz

    inc c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6163

    ld l, c
    db $76

jr_002_6119:
    ld h, l
    ld [hl], e
    jr nz, jr_002_613d

    jr nz, jr_002_6120

    inc bc

jr_002_6120:
    dec e
    jp nz, $800c

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_617d

    ld l, c

jr_002_612a:
    ld l, l
    ld h, l

jr_002_612c:
    jr nz, jr_002_614e

    jr nz, jr_002_6150

    ld bc, $1663
    jp nz, $800d

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6180

    ld l, [hl]
    ld h, l

jr_002_613d:
    ld [hl], d
    ld h, a

jr_002_613f:
    ld a, c
    jr nz, jr_002_6162

    ld bc, $9105
    db $dd
    ld c, $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6192

    ld l, [hl]

jr_002_614e:
    ld h, l
    ld [hl], d

jr_002_6150:
    ld h, a
    ld a, c
    jr nz, jr_002_6174

    ld bc, $c804
    ret nz

    ld c, $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_61ab

    ld l, c
    db $76
    ld h, l

jr_002_6162:
    ld [hl], e

jr_002_6163:
    jr nz, jr_002_6185

    jr nz, jr_002_6168

    inc bc

jr_002_6168:
    rst $00
    ret nz

    rrca
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_61bd

    ld l, c
    ld h, [hl]
    ld h, l

jr_002_6174:
    jr nz, jr_002_6196

    jr nz, jr_002_6198

    ld bc, $2007
    ret nz

    db $10

jr_002_617d:
    add b
    ld c, c
    ld l, [hl]

jr_002_6180:
    ld h, [hl]
    jr nz, jr_002_61d7

    ld l, c
    ld l, l

jr_002_6185:
    ld h, l
    jr nz, jr_002_61a8

    jr nz, jr_002_61aa

    ld bc, $ad43
    push bc
    ld de, $4980
    ld l, [hl]

jr_002_6192:
    ld h, [hl]
    jr nz, jr_002_61e1

    ld l, c

jr_002_6196:
    db $76
    ld h, l

jr_002_6198:
    ld [hl], e
    jr nz, jr_002_61bb

    jr nz, jr_002_619e

    inc bc

jr_002_619e:
    ld b, $c3
    ld de, $4f80
    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_002_61d9

jr_002_61a8:
    jr nz, jr_002_61ef

jr_002_61aa:
    ld l, [hl]

jr_002_61ab:
    ld h, l
    ld l, l
    ld a, c
    ld bc, $f401
    jp nz, $8012

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_61fe

    ld l, [hl]
    ld h, l

jr_002_61bb:
    ld [hl], d
    ld h, a

jr_002_61bd:
    ld a, c
    jr nz, jr_002_61e0

    ld bc, $0d2f
    add $12
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6217

    ld l, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_002_61f1

    jr nz, jr_002_61d4

    inc bc

jr_002_61d4:
    ld c, $c6
    inc de

jr_002_61d7:
    add b
    ld c, c

jr_002_61d9:
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6229

    ld l, c
    db $76
    ld h, l

jr_002_61e0:
    ld [hl], e

jr_002_61e1:
    jr nz, jr_002_6203

    jr nz, jr_002_61e6

    inc bc

jr_002_61e6:
    ld a, [c]
    rst $10
    inc d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6234

jr_002_61ef:
    ld l, [hl]
    ld h, l

jr_002_61f1:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_6216

    ld bc, $9a04
    jp nc, $8014

    ld c, c
    ld l, [hl]

jr_002_61fe:
    ld h, [hl]
    jr nz, jr_002_624d

    ld l, c
    db $76

jr_002_6203:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6227

    jr nz, jr_002_620a

    inc bc

jr_002_620a:
    ld de, $15d1
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6258

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_6216:
    ld h, a

jr_002_6217:
    ld a, c
    jr nz, jr_002_623a

    ld bc, $0c05
    ret


    dec d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_6227:
    ld h, l
    ld [hl], e

jr_002_6229:
    jr nz, jr_002_624b

    jr nz, jr_002_622e

    inc bc

jr_002_622e:
    ld sp, hl
    jp z, $8016

    ld c, c
    ld l, [hl]

jr_002_6234:
    ld h, [hl]
    jr nz, jr_002_627c

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_623a:
    ld h, a
    ld a, c
    jr nz, jr_002_625e

    ld bc, $7c84
    jp nz, $8017

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_628e

    ld l, [hl]
    ld h, l

jr_002_624b:
    ld [hl], d
    ld h, a

jr_002_624d:
    ld a, c
    jr nz, jr_002_6270

    ld bc, $0309
    add $18
    add b
    ld c, c
    ld l, [hl]

jr_002_6258:
    ld h, [hl]
    jr nz, jr_002_62a7

    ld l, c
    db $76
    ld h, l

jr_002_625e:
    ld [hl], e
    jr nz, jr_002_6281

    jr nz, jr_002_6264

    add hl, bc

jr_002_6264:
    ld de, $19c1
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_62c1

    ld l, c
    ld l, l
    ld h, l

jr_002_6270:
    jr nz, jr_002_6292

    jr nz, jr_002_6294

    ld bc, $efa9
    ret nz

    ld a, [de]
    add b
    ld c, c
    ld l, [hl]

jr_002_627c:
    ld h, [hl]
    jr nz, jr_002_62d3

    ld l, c
    ld l, l

jr_002_6281:
    ld h, l
    jr nz, jr_002_62a4

    jr nz, jr_002_62a6

    ld bc, $1127
    pop bc
    dec de
    add b
    ld c, c
    ld l, [hl]

jr_002_628e:
    ld h, [hl]
    jr nz, @+$56

    ld l, c

jr_002_6292:
    ld l, l
    ld h, l

jr_002_6294:
    jr nz, jr_002_62b6

    jr nz, jr_002_62b8

    ld bc, $8606
    push bc
    inc e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_62ef

    ld l, c

jr_002_62a4:
    db $76
    ld h, l

jr_002_62a6:
    ld [hl], e

jr_002_62a7:
    jr nz, jr_002_62c9

    jr nz, jr_002_62ac

    inc bc

jr_002_62ac:
    ld b, $c1
    inc e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c

jr_002_62b6:
    ld l, l
    ld h, l

jr_002_62b8:
    jr nz, jr_002_62da

    jr nz, jr_002_62dc

    ld bc, $3304
    ret nz

    inc e

jr_002_62c1:
    add b
    ld c, c
    ld l, [hl]
    db $76
    ld l, c
    ld l, [hl]
    ld h, e
    ld l, c

jr_002_62c9:
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_002_62ee

    ld bc, $2259
    ret z

    dec e

jr_002_62d3:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_631e

    ld l, [hl]

jr_002_62da:
    ld h, l
    ld [hl], d

jr_002_62dc:
    ld h, a
    ld a, c
    jr nz, jr_002_6300

    ld bc, $1c12
    call $801d
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6337

    ld l, c
    db $76
    ld h, l

jr_002_62ee:
    ld [hl], e

jr_002_62ef:
    jr nz, jr_002_6311

    jr nz, jr_002_62f4

    db $dd

jr_002_62f4:
    dec h
    call z, $801e
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6349

    ld l, c
    db $76
    ld h, l

jr_002_6300:
    ld [hl], e
    jr nz, jr_002_6323

    jr nz, jr_002_6306

jr_002_6305:
    inc bc

jr_002_6306:
    rst $18
    ret nz

    ld e, $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6363

    ld l, c
    ld l, l

jr_002_6311:
    ld h, l
    jr nz, jr_002_6334

    jr nz, jr_002_6336

    ld bc, $dca9
    ret nz

    rra
    add b
    ld c, c
    ld l, [hl]

jr_002_631e:
    ld h, [hl]
    jr nz, @+$56

    ld l, c
    ld l, l

jr_002_6323:
    ld h, l
    jr nz, jr_002_6346

    jr nz, jr_002_6348

    ld bc, $eb36
    jp c, $8020

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_637f

    ld l, c

jr_002_6334:
    db $76
    ld h, l

jr_002_6336:
    ld [hl], e

jr_002_6337:
    jr nz, jr_002_6359

    jr nz, jr_002_633c

    inc bc

jr_002_633c:
    rlca
    adc $21
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_638d

    ld h, l

jr_002_6346:
    ld h, c
    ld l, h

jr_002_6348:
    ld [hl], h

jr_002_6349:
    ld l, b
    jr nz, jr_002_636c

    ld bc, $c303
    sbc $21
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_63a3

    ld l, c
    db $76

jr_002_6359:
    ld h, l
    ld [hl], e
    jr nz, jr_002_637d

    jr nz, @+$03

    jr nc, jr_002_6305

    sbc $21

jr_002_6363:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_63bd

    ld l, c
    ld l, l
    ld h, l

jr_002_636c:
    jr nz, jr_002_638e

    jr nz, jr_002_6390

    ld bc, $6303
    call c, $8022
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_63c7

    ld l, c
    db $76

jr_002_637d:
    ld h, l
    ld [hl], e

jr_002_637f:
    jr nz, jr_002_63a1

    jr nz, jr_002_6384

    dec b

jr_002_6384:
    inc l
    jp $8023


    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_63d9

jr_002_638d:
    ld l, c

jr_002_638e:
    db $76
    ld h, l

jr_002_6390:
    ld [hl], e
    jr nz, jr_002_63b3

    jr nz, jr_002_6396

    inc b

jr_002_6396:
    ret


    ret nz

    inc h
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_63eb

    ld l, c
    db $76

jr_002_63a1:
    ld h, l
    ld [hl], e

jr_002_63a3:
    jr nz, jr_002_63c5

    jr nz, jr_002_63a8

    inc bc

jr_002_63a8:
    ld d, $c5
    inc h
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6405

    ld l, c
    ld l, l

jr_002_63b3:
    ld h, l
    jr nz, jr_002_63d6

    jr nz, jr_002_63d8

    ld bc, $1295
    push bc

jr_002_63bc:
    dec h

jr_002_63bd:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6406

    ld [hl], d
    ld h, l

jr_002_63c5:
    ld h, h
    ld l, c

jr_002_63c7:
    ld [hl], h
    ld [hl], e
    jr nz, jr_002_63cc

    inc b

jr_002_63cc:
    dec l
    push de

jr_002_63ce:
    ld h, $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4f

    ld l, a

jr_002_63d6:
    ld l, [hl]
    ld h, l

jr_002_63d8:
    ld a, c

jr_002_63d9:
    jr nz, jr_002_63fb

    jr nz, jr_002_63de

    rst $38

jr_002_63de:
    ret c

    ret nz

    ld h, $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6434

    ld l, a
    ld l, [hl]
    ld h, l
    ld a, c

jr_002_63eb:
    jr nz, jr_002_640d

    jr nz, jr_002_63f0

    rst $38

jr_002_63f0:
    jp c, Jump_000_26c0

    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6446

    ld l, a
    ld l, [hl]

jr_002_63fb:
    ld h, l
    ld a, c
    jr nz, jr_002_641f

    jr nz, jr_002_6402

    rst $38

jr_002_6402:
    call c, Call_000_26c0

jr_002_6405:
    add b

jr_002_6406:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4f

    ld l, a
    ld l, [hl]

jr_002_640d:
    ld h, l
    ld a, c
    jr nz, jr_002_6431

    jr nz, jr_002_6414

    rst $38

jr_002_6414:
    sbc $d0
    daa
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6469

    ld l, c
    db $76

jr_002_641f:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6443

    jr nz, jr_002_6426

    inc bc

jr_002_6426:
    ld d, $c5
    daa
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6483

    ld l, c
    ld l, l

jr_002_6431:
    ld h, l
    jr nz, jr_002_6454

jr_002_6434:
    jr nz, jr_002_6456

    ld bc, $1295
    push bc
    jr z, jr_002_63bc

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6489

    ld h, l
    ld h, c

jr_002_6443:
    ld l, h
    ld [hl], h
    ld l, b

jr_002_6446:
    jr nz, jr_002_6468

    ld bc, $130f
    push bc
    jr z, jr_002_63ce

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_649f

    ld l, c

jr_002_6454:
    db $76
    ld h, l

jr_002_6456:
    ld [hl], e
    jr nz, jr_002_6479

    jr nz, jr_002_645c

    ld [bc], a

jr_002_645c:
    ld d, h
    rst $00
    add hl, hl
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_64b1

    ld l, c
    db $76
    ld h, l

jr_002_6468:
    ld [hl], e

jr_002_6469:
    jr nz, jr_002_648b

    jr nz, jr_002_646e

    inc bc

jr_002_646e:
    and b
    jp nz, $802a

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_6479:
    ld h, l
    ld [hl], e
    jr nz, jr_002_649d

    jr nz, jr_002_6480

    inc b

jr_002_6480:
    and b
    add $2b

jr_002_6483:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_64dd

jr_002_6489:
    ld l, c
    ld l, l

jr_002_648b:
    ld h, l
    jr nz, jr_002_64ae

    jr nz, jr_002_64b0

    ld bc, $a328
    rst $00
    inc l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_64e0

    ld l, [hl]
    ld h, l

jr_002_649d:
    ld [hl], d
    ld h, a

jr_002_649f:
    ld a, c
    jr nz, jr_002_64c2

    ld bc, $6ef0
    pop de
    inc l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_64f9

    ld l, c

jr_002_64ae:
    db $76
    ld h, l

jr_002_64b0:
    ld [hl], e

jr_002_64b1:
    jr nz, jr_002_64d3

    jr nz, jr_002_64b6

    inc b

jr_002_64b6:
    ld l, e
    pop de

jr_002_64b8:
    dec l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$43

    ld l, l
    ld l, l
    ld l, a

jr_002_64c2:
    jr nz, jr_002_64e4

    jr nz, jr_002_64e6

    ld bc, $2509
    sbc $2d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_651d

    ld l, c
    db $76

jr_002_64d3:
    ld h, l
    ld [hl], e
    jr nz, jr_002_64f7

    jr nz, jr_002_64da

    dec b

jr_002_64da:
    rra
    sbc $2e

jr_002_64dd:
    add b
    ld c, c
    ld l, [hl]

jr_002_64e0:
    ld h, [hl]
    jr nz, jr_002_652f

    ld l, c

jr_002_64e4:
    db $76
    ld h, l

jr_002_64e6:
    ld [hl], e
    jr nz, jr_002_6509

    jr nz, jr_002_64ec

    add hl, bc

jr_002_64ec:
    sub $ce
    ld l, $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6541

    ld l, c
    db $76

jr_002_64f7:
    ld h, l
    ld [hl], e

jr_002_64f9:
    jr nz, jr_002_651b

    jr nz, jr_002_64fe

    add hl, bc

jr_002_64fe:
    rst $10
    adc $2e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$55

    ld l, h
    ld l, [hl]

jr_002_6509:
    ld h, a
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $d909
    adc $2e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$55

    ld l, h
    ld l, [hl]

jr_002_651b:
    ld h, a
    ld [hl], e

jr_002_651d:
    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $da09
    adc $2f
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6577

    ld l, c
    db $76
    ld h, l
    ld [hl], e

jr_002_652f:
    jr nz, jr_002_6551

    jr nz, jr_002_6534

    ld [bc], a

jr_002_6534:
    adc b
    ret z

    jr nc, jr_002_64b8

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6589

    ld l, c
    db $76
    ld h, l
    ld [hl], e

jr_002_6541:
    jr nz, jr_002_6563

    jr nz, jr_002_6546

    inc bc

jr_002_6546:
    ret c

    pop bc
    ld sp, $4980
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_659b

    ld l, c
    db $76

jr_002_6551:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6575

    jr nz, jr_002_6558

    add hl, bc

jr_002_6558:
    or h
    jp $8031


    ld c, l
    ld h, c
    ld a, b
    jr nz, jr_002_65ac

    ld h, l
    ld a, c

jr_002_6563:
    ld [hl], e
    jr nz, jr_002_6586

    jr nz, @+$22

    ld bc, $4208
    call c, $8032
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_65bf

    ld l, c
    db $76

jr_002_6575:
    ld h, l
    ld [hl], e

jr_002_6577:
    jr nz, jr_002_6599

    jr nz, jr_002_657c

    inc bc

jr_002_657c:
    rst $28
    add $32
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$55

    ld l, l

jr_002_6586:
    ld [hl], h
    jr nz, jr_002_65cb

jr_002_6589:
    ld l, a
    ld l, l
    ld h, d
    ld bc, $f004
    add $33
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_65dc

    ld l, [hl]
    ld h, l

jr_002_6599:
    ld [hl], d
    ld h, a

jr_002_659b:
    ld a, c
    jr nz, jr_002_65be

    ld bc, $9828
    reti


    inc sp
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_65f5

    ld l, c
    db $76
    ld h, l

jr_002_65ac:
    ld [hl], e
    jr nz, jr_002_65cf

    jr nz, jr_002_65b2

    inc bc

jr_002_65b2:
    sbc [hl]
    reti


jr_002_65b4:
    inc [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6607

    ld l, c
    db $76
    ld h, l

jr_002_65be:
    ld [hl], e

jr_002_65bf:
    jr nz, jr_002_65e1

    jr nz, jr_002_65c4

    inc b

jr_002_65c4:
    ld a, l
    add $35
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]

jr_002_65cb:
    jr nz, @+$44

    ld l, a
    ld l, l

jr_002_65cf:
    ld h, d
    ld [hl], e
    jr nz, jr_002_65f3

    jr nz, jr_002_65d6

    inc b

jr_002_65d6:
    ld [$35d4], a
    add b
    ld c, c
    ld l, [hl]

jr_002_65dc:
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_65e1:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6605

    jr nz, jr_002_65e8

    inc b

jr_002_65e8:
    add sp, -$2c
    dec [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_663d

    ld l, c
    db $76

jr_002_65f3:
    ld h, l
    ld [hl], e

jr_002_65f5:
    jr nz, jr_002_6617

    jr nz, jr_002_65fa

    dec b

jr_002_65fa:
    and e
    pop de
    ld [hl], $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_664f

    ld l, c
    db $76

jr_002_6605:
    ld h, l
    ld [hl], e

jr_002_6607:
    jr nz, jr_002_6629

    jr nz, jr_002_660c

    inc bc

jr_002_660c:
    rst $00
    db $d3
    ld [hl], $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6661

    ld l, c
    db $76

jr_002_6617:
    ld h, l
    ld [hl], e
    jr nz, jr_002_663b

    jr nz, jr_002_661e

    inc bc

jr_002_661e:
    ld d, c
    jp nz, $8037

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_666d

    ld [hl], l
    ld h, l

jr_002_6629:
    ld l, h
    jr nz, jr_002_664c

    jr nz, jr_002_664e

    ld bc, $1142
    ret nz

    jr c, jr_002_65b4

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_667e

    ld l, [hl]
    ld h, l

jr_002_663b:
    ld [hl], d
    ld h, a

jr_002_663d:
    ld a, c
    jr nz, jr_002_6660

    ld bc, $5a09
    rst $08
    jr c, @-$7e

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c

jr_002_664c:
    db $76
    ld h, l

jr_002_664e:
    ld [hl], e

jr_002_664f:
    jr nz, jr_002_6671

    jr nz, jr_002_6654

    inc bc

jr_002_6654:
    rst $20
    adc $38
    add b
    ld d, e
    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_002_66b2

    ld l, c
    ld l, l

jr_002_6660:
    ld h, l

jr_002_6661:
    ld [hl], d
    jr nz, jr_002_6684

    ld bc, $0736
    rst $08
    add hl, sp
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]

jr_002_666d:
    jr nz, jr_002_66bb

    ld l, c
    db $76

jr_002_6671:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6695

    jr nz, jr_002_6678

    inc bc

jr_002_6678:
    sub [hl]
    call nz, $803a
    ld c, c
    ld l, [hl]

jr_002_667e:
    ld h, [hl]
    jr nz, jr_002_66cd

    ld l, c
    db $76
    ld h, l

jr_002_6684:
    ld [hl], e
    jr nz, jr_002_66a7

    jr nz, jr_002_668a

    inc bc

jr_002_668a:
    ld b, e
    jp c, $803a

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_66e7

    ld l, c
    ld l, l

jr_002_6695:
    ld h, l
    jr nz, jr_002_66b8

    jr nz, jr_002_66ba

    ld bc, $11ff
    rst $00
    dec sp
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_66ea

    ld l, [hl]
    ld h, l

jr_002_66a7:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_66cc

    ld bc, $982f
    call nz, $803b

jr_002_66b2:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6703

    ld l, c

jr_002_66b8:
    db $76
    ld h, l

jr_002_66ba:
    ld [hl], e

jr_002_66bb:
    jr nz, jr_002_66dd

    jr nz, jr_002_66c0

    inc b

jr_002_66c0:
    sbc c
    call nz, $803c
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_670e

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_66cc:
    ld h, a

jr_002_66cd:
    ld a, c
    jr nz, jr_002_66f0

    ld bc, $3864
    add $3c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6727

    ld l, c
    db $76

jr_002_66dd:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6701

    jr nz, jr_002_66e4

    dec b

jr_002_66e4:
    inc e
    add $3d

jr_002_66e7:
    add b
    ld c, c
    ld l, [hl]

jr_002_66ea:
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76
    ld h, l

jr_002_66f0:
    ld [hl], e
    jr nz, jr_002_6713

    jr nz, jr_002_66f6

    ld a, [bc]

jr_002_66f6:
    jr c, jr_002_66bb

    ld a, $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_674b

    ld l, c
    db $76

jr_002_6701:
    ld h, l
    ld [hl], e

jr_002_6703:
    jr nz, jr_002_6725

    jr nz, jr_002_6708

    inc bc

jr_002_6708:
    ld [hl], a
    jp nz, $803e

    ld c, c
    ld l, [hl]

jr_002_670e:
    ld h, [hl]
    jr nz, jr_002_6764

    ld l, l
    ld [hl], h

jr_002_6713:
    jr nz, jr_002_6757

    ld l, a
    ld l, l
    ld h, d
    ld bc, $7803
    jp nz, $803f

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6768

    ld l, [hl]
    ld h, l

jr_002_6725:
    ld [hl], d
    ld h, a

jr_002_6727:
    ld a, c
    jr nz, jr_002_674a

    ld bc, $f632
    jp nz, $803f

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6789

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_002_675a

    jr nz, jr_002_675c

    ld bc, $c227
    jp nz, $8040

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_678c

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_674a:
    ld h, a

jr_002_674b:
    ld a, c
    jr nz, jr_002_676e

    ld bc, $1103
    ret


    ld b, b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]

jr_002_6757:
    jr nz, jr_002_67a5

    ld l, c

jr_002_675a:
    db $76
    ld h, l

jr_002_675c:
    ld [hl], e
    jr nz, jr_002_677f

    jr nz, jr_002_6762

    inc bc

jr_002_6762:
    ld [de], a
    ret


jr_002_6764:
    ld b, c
    add b
    ld c, c
    ld l, [hl]

jr_002_6768:
    ld h, [hl]
    jr nz, jr_002_67b0

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_676e:
    ld h, a
    ld a, c
    jr nz, jr_002_6792

    ld bc, $1108
    ret


    ld b, c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_67c9

    ld l, c
    db $76

jr_002_677f:
    ld h, l
    ld [hl], e
    jr nz, jr_002_67a3

    jr nz, jr_002_6786

    inc bc

jr_002_6786:
    ld [de], a
    ret


    ld b, d

jr_002_6789:
    add b
    ld b, d
    ld l, a

jr_002_678c:
    ld l, l
    ld h, d
    jr nz, jr_002_67e0

    ld h, c
    ld [hl], e

jr_002_6792:
    ld [hl], e
    jr nz, @+$22

    jr nz, jr_002_6798

    ld [bc], a

jr_002_6798:
    dec b
    call nz, $8042
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    jr nz, @+$52

    ld h, c

jr_002_67a3:
    ld [hl], e
    ld [hl], e

jr_002_67a5:
    jr nz, jr_002_67c7

    jr nz, jr_002_67aa

    ld [bc], a

jr_002_67aa:
    rlca
    call nz, $8042
    ld c, l
    ld l, [hl]

jr_002_67b0:
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_002_67ff

    ld l, l
    ld l, l
    ld [hl], l
    ld l, [hl]
    ld bc, $0902
    call nz, $8042
    ld c, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_002_6819

    ld [hl], b

jr_002_67c7:
    ld h, l
    ld h, l

jr_002_67c9:
    ld h, h
    jr nz, jr_002_67ec

    ld bc, $0802
    call nz, $8042
    ld d, a
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_002_6828

    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_002_67fd

    jr nz, jr_002_67e0

    ld [bc], a

jr_002_67e0:
    ld b, $c4
    ld b, e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]

jr_002_67e7:
    jr nz, jr_002_682e

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_67ec:
    ld h, a
    ld a, c
    jr nz, jr_002_6810

    ld bc, $d764
    pop bc
    ld b, e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6847

    ld l, c
    db $76

jr_002_67fd:
    ld h, l
    ld [hl], e

jr_002_67ff:
    jr nz, jr_002_6821

    jr nz, jr_002_6804

    ld a, [bc]

jr_002_6804:
    sub $c1
    ld b, e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_685d

    ld l, h
    ld h, c
    ld [hl], e

jr_002_6810:
    ld l, l
    ld h, c
    jr nz, jr_002_6834

    ld bc, $93e8
    pop bc
    ld b, h

jr_002_6819:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_686b

    ld l, c
    db $76

jr_002_6821:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6845

    jr nz, jr_002_6828

    rst $38

jr_002_6828:
    rst $38
    rst $38
    ld b, l
    add b
    ld c, c
    ld l, [hl]

jr_002_682e:
    ld h, [hl]
    jr nz, jr_002_6876

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_6834:
    ld h, a
    ld a, c
    jr nz, jr_002_6858

    ld bc, $9430
    jp c, $8047

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld [hl], l
    ld [hl], d

jr_002_6845:
    ld h, d
    ld l, a

jr_002_6847:
    jr nz, jr_002_6869

    jr nz, @+$03

    jr nc, jr_002_67e7

    jp $8046


    ld e, d
    ld h, l
    ld [hl], d
    ld l, a
    jr nz, jr_002_68aa

    ld l, c
    ld l, l

jr_002_6858:
    ld h, l
    jr nz, jr_002_687b

    jr nz, jr_002_685e

jr_002_685d:
    nop

jr_002_685e:
    ld c, $c6

jr_002_6860:
    ld c, b
    add b
    ld b, [hl]
    ld [hl], d
    ld h, l
    ld h, l
    ld a, d
    ld h, l
    ld [hl], e

jr_002_6869:
    jr nz, jr_002_68bf

jr_002_686b:
    ld l, c
    ld l, l
    ld h, l
    ld bc, $4e00
    jp c, $8049

    ld c, c
    ld l, [hl]

jr_002_6876:
    ld h, [hl]
    jr nz, jr_002_68c5

    ld l, c
    db $76

jr_002_687b:
    ld h, l
    ld [hl], e
    jr nz, jr_002_689f

    jr nz, jr_002_6882

    ld [bc], a

jr_002_6882:
    jr z, jr_002_6860

    ld c, c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_002_68b0

    jr nz, jr_002_68b2

    ld bc, $2009
    call c, $804a
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4f

    ld l, a
    ld l, [hl]

jr_002_689f:
    ld h, l
    ld a, c
    jr nz, jr_002_68c3

    jr nz, jr_002_68a6

    sbc c

jr_002_68a6:
    adc a
    call z, $804a

jr_002_68aa:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_68fc

    ld l, a

jr_002_68b0:
    ld l, [hl]
    ld h, l

jr_002_68b2:
    ld a, c
    jr nz, jr_002_68d5

    jr nz, jr_002_68b8

    sbc c

jr_002_68b8:
    adc [hl]
    call z, $804a
    ld c, c
    ld l, [hl]
    ld h, [hl]

jr_002_68bf:
    jr nz, jr_002_690e

    ld l, a
    ld l, [hl]

jr_002_68c3:
    ld h, l
    ld a, c

jr_002_68c5:
    jr nz, jr_002_68e7

    jr nz, jr_002_68ca

    sbc c

jr_002_68ca:
    adc l
    call z, $804b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_691f

    ld l, c
    db $76

jr_002_68d5:
    ld h, l
    ld [hl], e
    jr nz, jr_002_68f9

    jr nz, jr_002_68dc

    inc bc

jr_002_68dc:
    xor [hl]
    jp nz, $804b

    ld l, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_693c

    ld h, c
    ld [hl], h

jr_002_68e7:
    ld h, l
    ld [hl], d
    jr nz, jr_002_690b

    jr nz, jr_002_68ee

    rst $38

jr_002_68ee:
    di
    jp nz, $804c

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_694b

    ld l, c
    ld l, l

jr_002_68f9:
    ld h, l
    jr nz, jr_002_691c

jr_002_68fc:
    jr nz, jr_002_691e

    ld bc, $1168
    pop bc
    ld c, l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_695d

    ld l, c
    ld l, l

jr_002_690b:
    ld h, l
    jr nz, jr_002_692e

jr_002_690e:
    jr nz, jr_002_6930

    ld bc, $ba89
    pop bc
    ld c, [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c

jr_002_691c:
    db $76
    ld h, l

jr_002_691e:
    ld [hl], e

jr_002_691f:
    jr nz, jr_002_6941

    jr nz, jr_002_6924

    inc bc

jr_002_6924:
    ld a, [hl-]
    pop bc
    ld c, a
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6979

    ld l, c

jr_002_692e:
    db $76
    ld h, l

jr_002_6930:
    ld [hl], e
    jr nz, jr_002_6953

    jr nz, jr_002_6936

    inc bc

jr_002_6936:
    dec c
    pop bc
    ld d, b
    add b
    ld c, c
    ld l, [hl]

jr_002_693c:
    ld h, [hl]
    jr nz, jr_002_698b

    ld l, c
    db $76

jr_002_6941:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6995

    ld sp, $0501
    ld d, l
    pop bc
    ld d, c

jr_002_694b:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_699d

    ld l, c
    db $76

jr_002_6953:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6977

    jr nz, jr_002_695a

    inc bc

jr_002_695a:
    add a
    ret


    ld d, c

jr_002_695d:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_69b7

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_002_6988

    jr nz, jr_002_698a

    ld bc, $8e39
    ret


    ld d, d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_69c1

    ld l, c
    db $76

jr_002_6977:
    ld h, l
    ld [hl], e

jr_002_6979:
    jr nz, jr_002_699b

    jr nz, jr_002_697e

    inc bc

jr_002_697e:
    add b
    call z, $8053
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4f

    ld l, c

jr_002_6988:
    ld [hl], e
    ld [hl], e

jr_002_698a:
    ld h, l

jr_002_698b:
    ld [hl], e
    jr nz, jr_002_69ae

    ld bc, $8200
    pop bc
    ld d, h
    add b
    ld c, c

jr_002_6995:
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_699b:
    ld h, l
    ld [hl], e

jr_002_699d:
    jr nz, jr_002_69bf

    jr nz, jr_002_69a2

    inc bc

jr_002_69a2:
    dec de
    call z, $8055
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$52

    ld l, b
    ld h, c
    ld [hl], e

jr_002_69ae:
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_002_69b4

    ld h, e

jr_002_69b4:
    dec bc
    db $db
    ld d, [hl]

jr_002_69b7:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6a02

    ld l, [hl]
    ld h, l

jr_002_69bf:
    ld [hl], d
    ld h, a

jr_002_69c1:
    ld a, c
    jr nz, jr_002_69e4

    ld bc, $4104
    rst $10
    ld d, [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6a1b

    ld l, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_002_69f5

    jr nz, jr_002_69d8

    dec b

jr_002_69d8:
    dec a
    rst $10
    ld d, a
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6a27

    ld [hl], l
    ld h, l
    ld l, h

jr_002_69e4:
    jr nz, jr_002_6a06

    jr nz, jr_002_6a08

    ld bc, $eff7
    call z, $8058
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6a3b

    ld h, l
    ld h, c

jr_002_69f5:
    ld l, h
    ld [hl], h
    ld l, b
    jr nz, jr_002_6a1a

    ld bc, $2a10
    jp $8058


    ld c, c
    ld l, [hl]

jr_002_6a02:
    ld h, [hl]
    jr nz, jr_002_6a51

    ld l, c

jr_002_6a06:
    db $76
    ld h, l

jr_002_6a08:
    ld [hl], e
    jr nz, jr_002_6a2b

    jr nz, jr_002_6a0e

    ld [bc], a

jr_002_6a0e:
    ld h, e
    jp $8059


    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6a63

    ld l, c
    db $76
    ld h, l

jr_002_6a1a:
    ld [hl], e

jr_002_6a1b:
    jr nz, jr_002_6a3d

    jr nz, jr_002_6a20

    inc bc

jr_002_6a20:
    push bc
    push bc
    ld e, d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]

jr_002_6a27:
    jr nz, jr_002_6a71

    ld h, l
    ld h, c

jr_002_6a2b:
    ld l, h
    ld [hl], h
    ld l, b
    jr nz, jr_002_6a50

    ld bc, $c608
    ret nz

    ld e, d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6a87

jr_002_6a3b:
    ld l, c
    db $76

jr_002_6a3d:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6a61

    jr nz, jr_002_6a44

    ld [bc], a

jr_002_6a44:
    push bc
    ret nz

    ld e, e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6a99

    ld l, c
    db $76
    ld h, l

jr_002_6a50:
    ld [hl], e

jr_002_6a51:
    jr nz, jr_002_6a73

    jr nz, jr_002_6a56

    inc bc

jr_002_6a56:
    rrca
    pop bc
    ld e, l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6aa7

    ld h, l
    ld a, b

jr_002_6a61:
    jr nz, jr_002_6ab3

jr_002_6a63:
    ld sp, $2020
    ld bc, $bd09
    rst $10
    ld e, l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

jr_002_6a71:
    ld h, a
    ld b, h

jr_002_6a73:
    ld l, c
    ld h, c
    jr nz, jr_002_6ac7

    ld sp, $0901
    jp nz, Jump_002_5dd7

    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6acf

    ld h, a
    ld d, h
    ld [hl], d
    ld l, c

jr_002_6a87:
    jr nz, jr_002_6ad9

    ld sp, $0901
    pop bc
    rst $10
    ld e, l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6ae8

    ld l, l
    ld b, h
    ld l, c
    ld h, c

jr_002_6a99:
    jr nz, jr_002_6aeb

    ld sp, $0901
    cp a
    rst $10
    ld e, l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6afa

jr_002_6aa7:
    ld l, l
    ld d, h
    ld [hl], d
    ld l, c
    jr nz, jr_002_6afd

    ld sp, $0901
    cp [hl]
    rst $10
    ld e, l

jr_002_6ab3:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6b0d

    ld [hl], d
    ld h, c
    ld [hl], b
    jr nz, jr_002_6b0e

    ld sp, $0120
    add hl, bc
    ret nz

    rst $10
    ld e, l
    add b
    ld c, l

jr_002_6ac7:
    ld h, c
    ld a, b
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l

jr_002_6acf:
    jr nz, jr_002_6af1

    jr nz, jr_002_6ad4

    rst $38

jr_002_6ad4:
    cp $d7
    ld e, [hl]
    add b
    ld c, c

jr_002_6ad9:
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6b22

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_6b04

    ld bc, $4303
    pop bc

jr_002_6ae8:
    ld e, [hl]
    add b
    ld c, c

jr_002_6aeb:
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6b3b

    ld l, c
    db $76

jr_002_6af1:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6b15

    jr nz, jr_002_6af8

    inc bc

jr_002_6af8:
    dec sp
    pop bc

jr_002_6afa:
    ld e, a
    add b
    ld c, c

jr_002_6afd:
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6b46

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_6b04:
    ld h, a
    ld a, c
    jr nz, jr_002_6b28

    ld bc, $2703
    sbc $5f

jr_002_6b0d:
    add b

jr_002_6b0e:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6b5f

    ld l, c
    db $76

jr_002_6b15:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6b39

    jr nz, jr_002_6b1c

    add c

jr_002_6b1c:
    dec de
    sbc $5c
    add b
    ld c, c
    ld l, [hl]

jr_002_6b22:
    ld h, [hl]
    jr nz, jr_002_6b78

    ld [hl], h
    ld h, c
    ld l, l

jr_002_6b28:
    ld l, c
    ld l, [hl]
    ld h, c
    jr nz, jr_002_6b2e

    and a

jr_002_6b2e:
    inc l
    ret z

    ld h, b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6b83

    ld l, c
    db $76

jr_002_6b39:
    ld h, l
    ld [hl], e

jr_002_6b3b:
    jr nz, jr_002_6b5d

    jr nz, jr_002_6b40

    add hl, bc

jr_002_6b40:
    jp z, $61d5

    add b
    ld c, c
    ld l, [hl]

jr_002_6b46:
    ld h, [hl]
    jr nz, jr_002_6b8e

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_6b70

    ld bc, $1f6f
    db $db
    ld h, c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$49

    ld [hl], d
    ld h, l

jr_002_6b5d:
    ld l, [hl]
    ld h, c

jr_002_6b5f:
    ld h, h
    ld h, l
    ld [hl], e
    ld bc, $2608
    db $db
    ld h, c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76
    ld h, l

jr_002_6b70:
    ld [hl], e
    jr nz, jr_002_6b93

    jr nz, jr_002_6b76

    inc bc

jr_002_6b76:
    cpl
    db $db

jr_002_6b78:
    ld h, d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6bcf

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d

jr_002_6b83:
    jr nz, jr_002_6ba5

    jr nz, jr_002_6b88

    or d

jr_002_6b88:
    ld c, $c2
    ld h, e
    add b
    ld d, e
    ld [hl], h

jr_002_6b8e:
    ld l, a
    ld [hl], b
    jr nz, jr_002_6be6

    ld l, c

jr_002_6b93:
    ld l, l
    ld h, l
    ld [hl], d
    jr nz, jr_002_6bb8

    ld bc, $e200
    add $64
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6be5

    ld h, c
    ld l, h

jr_002_6ba5:
    ld l, h
    ld [hl], e
    jr nz, jr_002_6bc9

    jr nz, jr_002_6bac

    nop

jr_002_6bac:
    adc [hl]
    db $db
    ld h, h
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6c04

    ld [hl], l
    ld [hl], h
    ld [hl], e

jr_002_6bb8:
    jr nz, jr_002_6bda

    jr nz, jr_002_6bdc

    ld bc, $8f00
    db $db
    ld h, l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6c13

    ld l, c
    db $76

jr_002_6bc9:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6bed

    jr nz, jr_002_6bd0

jr_002_6bcf:
    inc bc

jr_002_6bd0:
    adc b
    ret z

    ld h, l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c

jr_002_6bda:
    ld l, l
    ld h, l

jr_002_6bdc:
    jr nz, jr_002_6bfe

    jr nz, jr_002_6c00

    ld bc, $7f09
    ret z

    ld h, [hl]

jr_002_6be5:
    add b

jr_002_6be6:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6c33

    ld l, h
    ld [hl], h

jr_002_6bed:
    ld l, b
    jr nz, jr_002_6c40

    ld sp, $0120
    ret nz

    sbc $c3
    ld h, a
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6c45

    ld h, l

jr_002_6bfe:
    ld h, c
    ld l, h

jr_002_6c00:
    ld [hl], h
    ld l, b
    jr nz, jr_002_6c24

jr_002_6c04:
    ld bc, $1cff
    ret nc

    ld l, b
    add b
    ld c, c
    ld l, [hl]
    db $76
    ld l, c
    ld l, [hl]
    ld h, e
    ld l, c
    ld h, d
    ld l, h

jr_002_6c13:
    ld h, l
    jr nz, jr_002_6c36

    ld bc, $f546
    db $d3
    ld l, c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4f

    ld l, c
    ld [hl], e
    ld [hl], e

jr_002_6c24:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6c48

    ld bc, $b600
    jp nz, $806a

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6c7b

jr_002_6c33:
    ld h, l
    ld h, c
    ld l, h

jr_002_6c36:
    ld [hl], h
    ld l, b
    jr nz, jr_002_6c5a

    ld bc, $c014
    pop bc
    ld l, d
    add b

jr_002_6c40:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$49

jr_002_6c45:
    ld l, a
    ld l, h
    ld h, h

jr_002_6c48:
    jr nz, jr_002_6c6a

    jr nz, jr_002_6c6c

    ld bc, $28ff
    call nz, $806b
    ld c, l
    ld h, c
    ld a, b
    jr nz, @+$4f

    ld l, a
    ld l, [hl]
    ld h, l

jr_002_6c5a:
    ld a, c
    jr nz, jr_002_6c7d

    jr nz, jr_002_6c60

    sbc c

jr_002_6c60:
    db $76
    sub $6b
    add b
    ld c, l
    ld h, c
    ld a, b
    jr nz, jr_002_6cb6

    ld l, a

jr_002_6c6a:
    ld l, [hl]
    ld h, l

jr_002_6c6c:
    ld a, c
    jr nz, jr_002_6c8f

    jr nz, jr_002_6c72

    sbc c

jr_002_6c72:
    ld [hl], a
    sub $6b
    add b
    ld c, l
    ld h, c
    ld a, b
    jr nz, @+$4f

jr_002_6c7b:
    ld l, a
    ld l, [hl]

jr_002_6c7d:
    ld h, l
    ld a, c
    jr nz, jr_002_6ca1

    jr nz, jr_002_6c84

    sbc c

jr_002_6c84:
    ld a, b
    sub $6c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6cd2

    ld l, [hl]
    ld h, l

jr_002_6c8f:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_6cb4

    ld bc, $0c06
    pop bc
    ld l, h
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6ceb

    ld l, c
    db $76

jr_002_6ca1:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6cc5

    jr nz, jr_002_6ca8

    inc bc

jr_002_6ca8:
    inc b
    pop bc
    ld l, h
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6d05

    ld l, c
    ld l, l
    ld h, l

jr_002_6cb4:
    jr nz, jr_002_6cd6

jr_002_6cb6:
    jr nz, jr_002_6cd8

    ld bc, $06a9
    pop bc
    ld l, l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6d0f

    ld l, c
    db $76

jr_002_6cc5:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6ce9

    jr nz, @+$03

    jr nc, @+$5a

    pop bc
    ld l, [hl]
    add b
    ld c, c
    ld l, [hl]

jr_002_6cd2:
    ld h, [hl]
    jr nz, jr_002_6d16

    ld [hl], d

jr_002_6cd6:
    ld [hl], d
    ld l, a

jr_002_6cd8:
    ld [hl], a
    ld [hl], e
    jr nz, jr_002_6cfc

    ld bc, $4530
    db $db
    ld l, [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6d29

    ld l, a
    ld l, l

jr_002_6ce9:
    ld h, d
    ld [hl], e

jr_002_6ceb:
    jr nz, jr_002_6d0d

    jr nz, @+$03

    jr nc, jr_002_6d3e

    db $db
    ld l, [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6d41

    ld h, l
    ld h, c
    ld l, h

jr_002_6cfc:
    ld [hl], h
    ld l, b
    jr nz, jr_002_6d20

    ld bc, $5a18
    db $db
    ld l, [hl]

jr_002_6d05:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6d5b

    ld l, a
    ld [hl], a

jr_002_6d0d:
    ld h, h
    ld h, l

jr_002_6d0f:
    ld [hl], d
    jr nz, jr_002_6d32

    ld bc, $4c20
    db $db

jr_002_6d16:
    ld l, [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6d6f

    ld [hl], l
    ld [hl], b
    ld h, l

jr_002_6d20:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6d44

    ld bc, $5d09
    db $db
    ld l, [hl]

jr_002_6d29:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6d81

    ld [hl], l
    ld [hl], b
    ld h, l

jr_002_6d32:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6d56

    ld bc, $5e99
    db $db
    ld l, a
    add b
    ld c, c
    ld l, [hl]

jr_002_6d3e:
    ld h, [hl]
    jr nz, jr_002_6d86

jr_002_6d41:
    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_6d44:
    ld h, a
    ld a, c
    jr nz, jr_002_6d68

    ld bc, $9a04
    push bc
    ld l, a
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76
    ld h, l

jr_002_6d56:
    ld [hl], e
    jr nz, jr_002_6d79

    jr nz, jr_002_6d5c

jr_002_6d5b:
    inc b

jr_002_6d5c:
    sbc e
    push bc
    ld [hl], b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6daa

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_6d68:
    ld h, a
    ld a, c
    jr nz, jr_002_6d8c

    ld bc, $6b03

jr_002_6d6f:
    pop bc
    ld [hl], b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_6d79:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6d9d

    jr nz, jr_002_6d80

    inc bc

jr_002_6d80:
    inc bc

jr_002_6d81:
    ret nz

    ld [hl], c
    add b
    ld c, c
    ld l, [hl]

jr_002_6d86:
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76
    ld h, l

jr_002_6d8c:
    ld [hl], e
    jr nz, jr_002_6daf

    jr nz, jr_002_6d92

    inc bc

jr_002_6d92:
    xor d
    ret nz

    ld [hl], d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6def

    ld l, c
    ld l, l

jr_002_6d9d:
    ld h, l
    jr nz, @+$44

    ld h, c
    ld [hl], d
    ld bc, $3563
    add $73
    add b
    ld c, c
    ld l, [hl]

jr_002_6daa:
    ld h, [hl]
    jr nz, jr_002_6df0

    ld l, a
    ld l, l

jr_002_6daf:
    ld [hl], b
    ld [hl], d
    jr nz, jr_002_6dd3

    jr nz, jr_002_6db6

    ld l, a

jr_002_6db6:
    ld c, h
    ld b, $73
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6e05

    ld [hl], l
    ld h, l
    ld l, h
    jr nz, jr_002_6de4

    jr nz, jr_002_6de6

    ld bc, $e66f
    ret nz

    add c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c
    ld l, l

jr_002_6dd3:
    ld h, l
    jr nz, jr_002_6df6

    jr nz, jr_002_6df8

    ld bc, $7f63
    sub $82
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6e28

    ld l, [hl]

jr_002_6de4:
    ld h, l
    ld [hl], d

jr_002_6de6:
    ld h, a
    ld a, c
    jr nz, jr_002_6e1b

    ld bc, $2040
    db $dd
    add e

jr_002_6def:
    add b

jr_002_6df0:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c

jr_002_6df6:
    ld l, l
    ld h, l

jr_002_6df8:
    jr nz, jr_002_6e1a

    jr nz, jr_002_6e1c

    ld bc, $df09
    ret nz

    add e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]

jr_002_6e05:
    jr nz, jr_002_6e4f

    ld h, l
    ld h, c
    ld l, h
    ld [hl], h
    ld l, b
    jr nz, jr_002_6e3f

    ld bc, $14ff
    call $8083
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6e65

    ld l, c

jr_002_6e1a:
    db $76

jr_002_6e1b:
    ld h, l

jr_002_6e1c:
    ld [hl], e
    jr nz, jr_002_6e50

    jr nz, jr_002_6e22

    inc bc

jr_002_6e22:
    db $db
    call nc, $8083
    ld c, [hl]
    ld l, a

jr_002_6e28:
    jr nz, @+$4a

    ld h, l
    ld h, c
    ld l, h
    ld [hl], h
    ld l, b
    jr nz, jr_002_6e63

    jr nz, @+$03

    ld bc, $cd54
    add h
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6e85

    ld h, l
    ld h, c

jr_002_6e3f:
    ld l, h
    ld [hl], h
    ld l, b
    jr nz, jr_002_6e75

    ld bc, $14ff
    call $8084
    ld c, [hl]
    ld l, a
    jr nz, @+$4a

    ld h, l

jr_002_6e4f:
    ld h, c

jr_002_6e50:
    ld l, h
    ld [hl], h
    ld l, b
    jr nz, jr_002_6e87

    jr nz, jr_002_6e58

    nop

jr_002_6e58:
    ld d, h
    call $8074
    ld sp, $7473
    jr nz, @+$52

    ld l, h
    ld h, c

jr_002_6e63:
    ld h, e
    ld h, l

jr_002_6e65:
    jr nz, jr_002_6eb4

    jr nz, @+$03

    ld bc, $c4dc
    ld [hl], h
    add b
    ld sp, $7473
    jr nz, jr_002_6ec3

    ld l, h
    ld h, c

jr_002_6e75:
    ld h, e
    ld h, l
    jr nz, @+$55

    jr nz, @+$03

    ld bc, $c2c0
    ld [hl], l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6eca

jr_002_6e85:
    ld l, [hl]
    ld h, l

jr_002_6e87:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_6eac

    ld bc, $d005
    db $d3
    ld [hl], l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6ee3

    ld l, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_002_6ebd

    jr nz, jr_002_6ea0

    inc b

jr_002_6ea0:
    ld a, c
    db $d3
    db $76
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6eee

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_6eac:
    ld h, a
    ld a, c
    jr nz, jr_002_6ed0

    ld bc, $a3a0
    rst $18

jr_002_6eb4:
    db $76
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6f07

    ld l, c
    db $76

jr_002_6ebd:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6ee1

    jr nz, jr_002_6ec4

jr_002_6ec3:
    ld a, [bc]

jr_002_6ec4:
    ld [$77c1], sp
    add b
    ld c, c
    ld l, [hl]

jr_002_6eca:
    ld h, [hl]
    jr nz, jr_002_6f12

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_6ed0:
    ld h, a
    ld a, c
    jr nz, jr_002_6ef4

    ld bc, $ae98
    sbc $78
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6f24

    ld l, [hl]
    ld h, l

jr_002_6ee1:
    ld [hl], d
    ld h, a

jr_002_6ee3:
    ld a, c
    jr nz, jr_002_6f06

    ld bc, $9e98
    sbc $78
    add b
    ld c, c
    ld l, [hl]

jr_002_6eee:
    ld h, [hl]
    jr nz, jr_002_6f3d

    ld l, c
    db $76
    ld h, l

jr_002_6ef4:
    ld [hl], e
    jr nz, jr_002_6f17

    jr nz, jr_002_6efa

    inc bc

jr_002_6efa:
    inc [hl]
    rst $18
    ld a, c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6f4f

    ld l, c
    db $76
    ld h, l

jr_002_6f06:
    ld [hl], e

jr_002_6f07:
    jr nz, jr_002_6f29

    jr nz, jr_002_6f0c

    dec e

jr_002_6f0c:
    add h
    add $7a
    add b
    ld c, c
    ld l, [hl]

jr_002_6f12:
    ld h, [hl]
    jr nz, @+$4f

    ld l, c
    ld [hl], e

jr_002_6f17:
    ld [hl], e
    ld l, c
    ld l, h
    ld h, l
    ld [hl], e
    ld bc, $5339
    ret nc

    ld a, d
    add b
    ld c, c
    ld l, [hl]

jr_002_6f24:
    db $76
    ld l, c
    ld l, [hl]
    ld h, e
    ld l, c

jr_002_6f29:
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_002_6f4e

    ld bc, $8487
    ret nc

    ld a, e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6f85

    ld l, c
    db $76
    ld h, l
    ld [hl], e

jr_002_6f3d:
    jr nz, jr_002_6f5f

    jr nz, jr_002_6f42

    dec b

jr_002_6f42:
    inc l
    jp $807c


    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76
    ld h, l

jr_002_6f4e:
    ld [hl], e

jr_002_6f4f:
    jr nz, jr_002_6f71

    jr nz, jr_002_6f54

    inc bc

jr_002_6f54:
    ld h, [hl]
    db $db
    ld a, l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_6f5f:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6fa6

    jr nz, jr_002_6f66

    inc bc

jr_002_6f66:
    and b
    add $7d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6fbb

    ld l, c
    db $76

jr_002_6f71:
    ld h, l
    ld [hl], e
    jr nz, jr_002_6fc2

    jr nz, jr_002_6f78

    inc bc

jr_002_6f78:
    add hl, hl
    sub $7e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6fcd

    ld l, c
    db $76
    ld h, l
    ld [hl], e

jr_002_6f85:
    jr nz, jr_002_6fa7

    jr nz, jr_002_6f8a

    inc bc

jr_002_6f8a:
    xor b
    add $7e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6fe7

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_002_6fb8

    jr nz, jr_002_6fba

    ld bc, $d812
    ret z

    ld a, a
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_6ff9

    ld l, c

jr_002_6fa6:
    ld l, l

jr_002_6fa7:
    ld h, l
    jr nz, jr_002_6fca

    jr nz, jr_002_6fcc

    ld bc, $7009
    adc $80
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7003

    ld l, c

jr_002_6fb8:
    db $76
    ld h, l

jr_002_6fba:
    ld [hl], e

jr_002_6fbb:
    jr nz, jr_002_6fdd

    jr nz, jr_002_6fc0

    inc b

jr_002_6fc0:
    dec sp
    ret nz

jr_002_6fc2:
    add l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7015

    ld l, c

jr_002_6fca:
    db $76
    ld h, l

jr_002_6fcc:
    ld [hl], e

jr_002_6fcd:
    jr nz, jr_002_6fef

    jr nz, jr_002_6fd2

    inc bc

jr_002_6fd2:
    xor $c8
    add [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7020

    ld l, [hl]
    ld h, l

jr_002_6fdd:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_7002

    ld bc, $f103
    ret c

    add [hl]

jr_002_6fe7:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_6fef:
    ld h, l
    ld [hl], e
    jr nz, jr_002_7013

    jr nz, jr_002_6ff6

    inc bc

jr_002_6ff6:
    ld a, [c]
    ret c

    add a

jr_002_6ff9:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_704b

    ld l, c
    db $76
    ld h, l

jr_002_7002:
    ld [hl], e

jr_002_7003:
    jr nz, @+$22

    jr nz, jr_002_7008

    inc bc

jr_002_7008:
    add b
    ret c

    adc b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_705d

    ld l, c
    db $76

jr_002_7013:
    ld h, l
    ld [hl], e

jr_002_7015:
    jr nz, @+$22

    jr nz, jr_002_701a

    inc bc

jr_002_701a:
    db $f4
    db $d3
    adc c
    add b
    ld c, c
    ld l, [hl]

jr_002_7020:
    ld h, [hl]
    jr nz, jr_002_706b

    ld d, b
    jr nz, @+$22

    jr nz, jr_002_7048

    jr nz, jr_002_704a

    ld bc, $b214
    rst $10
    adc c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7081

    ld d, b
    jr nz, @+$22

    jr nz, jr_002_705a

    jr nz, jr_002_705c

    ld bc, $583f
    ret c

    adc d
    add b
    ld d, h
    ld l, l
    ld sp, $4e20
    ld l, a

jr_002_7048:
    jr nz, @+$47

jr_002_704a:
    ld a, b

jr_002_704b:
    jr nz, jr_002_709a

    ld [hl], d
    ld bc, $ea20
    pop bc
    adc d
    add b
    ld d, h
    ld l, l
    ld sp, $4820
    ld l, c

jr_002_705a:
    jr nz, @+$47

jr_002_705c:
    ld a, b

jr_002_705d:
    jr nz, jr_002_70ac

    ld [hl], d
    ld bc, $ea00
    pop bc
    adc d
    add b
    ld d, h
    ld l, l
    ld [hl-], a
    jr nz, @+$4a

jr_002_706b:
    ld l, c
    jr nz, @+$47

    ld a, b
    jr nz, jr_002_70be

    ld [hl], d
    ld bc, $eb00
    pop bc
    adc d
    add b
    ld d, h
    ld l, l
    ld [hl-], a
    jr nz, jr_002_70cb

    ld l, a
    jr nz, @+$47

    ld a, b

jr_002_7081:
    jr nz, jr_002_70d0

    ld [hl], d
    ld bc, $eb20
    pop bc
    adc e
    add b
    ld d, h
    ld h, l
    ld h, c
    ld l, l
    jr nz, jr_002_70d1

    jr nz, jr_002_70c2

    jr nz, jr_002_70b4

    jr nz, jr_002_70b6

    ld bc, $7900
    push de

jr_002_709a:
    adc e
    add b
    ld d, h
    ld h, l
    ld h, c
    ld l, l
    jr nz, @+$43

    jr nz, jr_002_70d5

    dec [hl]
    jr nc, @+$22

    jr nz, jr_002_70aa

    sub [hl]

jr_002_70aa:
    ld a, c
    push de

jr_002_70ac:
    adc e
    add b
    ld d, h
    ld h, l
    ld h, c
    ld l, l
    jr nz, jr_002_70f6

jr_002_70b4:
    jr nz, jr_002_70e6

jr_002_70b6:
    jr nz, jr_002_70d8

    jr nz, jr_002_70da

    ld bc, $7b00
    push de

jr_002_70be:
    adc e
    add b
    ld d, h
    ld h, l

jr_002_70c2:
    ld h, c
    ld l, l
    jr nz, jr_002_7108

    jr nz, jr_002_70f9

    dec [hl]
    jr nc, @+$22

jr_002_70cb:
    jr nz, jr_002_70ce

    sub [hl]

jr_002_70ce:
    ld a, e
    push de

jr_002_70d0:
    adc h

jr_002_70d1:
    add b
    ld b, c
    ld [hl], a
    ld h, c

jr_002_70d5:
    ld a, c
    jr nz, jr_002_7108

jr_002_70d8:
    jr nz, jr_002_70fa

jr_002_70da:
    jr nz, jr_002_70fc

    jr nz, jr_002_70fe

    ld bc, $5000
    jp z, $808c

    ld b, c
    ld [hl], a

jr_002_70e6:
    ld h, c
    ld a, c
    jr nz, jr_002_711f

    jr nc, jr_002_710c

    jr nz, jr_002_710e

    jr nz, jr_002_7110

    ld bc, $5032
    jp z, $808c

jr_002_70f6:
    ld c, b
    ld l, a
    ld l, l

jr_002_70f9:
    ld h, l

jr_002_70fa:
    jr nz, jr_002_712c

jr_002_70fc:
    jr nz, @+$22

jr_002_70fe:
    jr nz, jr_002_7120

    jr nz, jr_002_7122

    ld bc, $5200
    jp z, $808c

jr_002_7108:
    ld c, b
    ld l, a
    ld l, l
    ld h, l

jr_002_710c:
    jr nz, jr_002_7143

jr_002_710e:
    jr nc, @+$22

jr_002_7110:
    jr nz, jr_002_7132

    jr nz, jr_002_7134

    ld bc, $5232
    jp z, $808d

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7164

jr_002_711f:
    ld l, [hl]

jr_002_7120:
    ld h, l
    ld [hl], d

jr_002_7122:
    ld h, a
    ld a, c
    jr nz, jr_002_7146

    ld bc, $9b06
    ret nz

    adc l
    add b

jr_002_712c:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_717d

    ld l, c

jr_002_7132:
    db $76
    ld h, l

jr_002_7134:
    ld [hl], e
    jr nz, jr_002_7157

    jr nz, jr_002_713a

    inc bc

jr_002_713a:
    sbc h
    ret nz

    adc [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4f

jr_002_7143:
    ld l, c
    ld [hl], e
    ld [hl], e

jr_002_7146:
    dec l
    ld b, [hl]
    ld [hl], d
    jr nz, jr_002_714c

    nop

jr_002_714c:
    ld hl, $8ec2
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_71a2

    ld l, c
    ld [hl], e

jr_002_7157:
    ld [hl], e
    dec l
    ld d, e
    ld [hl], b
    ld l, h
    ld bc, $2200
    jp nz, $808e

    ld c, c
    ld l, [hl]

jr_002_7164:
    ld h, [hl]
    jr nz, @+$4f

    ld l, c
    ld [hl], e
    ld [hl], e
    dec l
    ld b, [hl]
    ld [hl], d
    jr nz, jr_002_7170

    nop

jr_002_7170:
    ld h, b
    jp nz, $808e

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4f

    ld l, c
    ld [hl], e
    ld [hl], e
    dec l

jr_002_717d:
    ld d, e
    ld [hl], b
    ld l, h
    ld bc, $6100
    jp nz, $808f

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_002_71b1

    jr nz, jr_002_7194

    inc b

jr_002_7194:
    db $fd
    push de
    adc a
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_71f1

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_002_71c2

jr_002_71a2:
    jr nz, jr_002_71c4

    ld bc, $fb55
    push de
    sub b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_71fb

    ld l, c
    db $76

jr_002_71b1:
    ld h, l
    ld [hl], e
    jr nz, jr_002_71d5

    jr nz, jr_002_71b8

    inc b

jr_002_71b8:
    dec h
    call nz, $8091
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_720d

    ld l, c

jr_002_71c2:
    db $76
    ld h, l

jr_002_71c4:
    ld [hl], e
    jr nz, jr_002_71e7

    jr nz, jr_002_71ca

    inc bc

jr_002_71ca:
    sub a
    db $dd
    sub d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7218

    ld h, a
    ld h, a

jr_002_71d5:
    ld [hl], e
    jr nz, jr_002_71f8

    jr nz, jr_002_71fa

    ld bc, $7003
    jp nz, $8093

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7227

    ld h, c
    ld l, h

jr_002_71e7:
    ld l, h
    ld [hl], e
    jr nz, jr_002_720b

    jr nz, @+$03

    ld bc, $d4f1
    sub h

jr_002_71f1:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_723b

    ld l, c

jr_002_71f8:
    ld [hl], e
    ld [hl], h

jr_002_71fa:
    ld h, c

jr_002_71fb:
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $0206
    pop bc
    sub l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_724e

    ld l, [hl]
    ld h, l

jr_002_720b:
    ld [hl], d
    ld h, a

jr_002_720d:
    ld a, c
    jr nz, @+$22

    ld bc, $1e56
    call nz, $8096
    add hl, sp
    add hl, sp

jr_002_7218:
    jr nz, jr_002_7261

    ld h, l
    ld l, l
    ld [hl], e
    jr nz, jr_002_723f

    jr nz, jr_002_7241

    jr nz, jr_002_7224

    add hl, bc

jr_002_7224:
    add hl, de
    add $96

jr_002_7227:
    add b
    add hl, sp
    add hl, sp
    jr nz, jr_002_7273

    ld h, l
    ld l, l
    ld [hl], e
    jr nz, jr_002_7251

    jr nz, jr_002_7253

    jr nz, jr_002_7236

    add hl, bc

jr_002_7236:
    ld a, [de]
    add $96
    add b
    ld c, c

jr_002_723b:
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7287

jr_002_723f:
    ld h, l
    ld h, c

jr_002_7241:
    ld l, h
    ld [hl], h
    ld l, b
    jr nz, jr_002_7266

    ld bc, $1b56
    add $96
    add b
    ld c, c
    ld l, [hl]

jr_002_724e:
    ld h, [hl]
    jr nz, jr_002_729d

jr_002_7251:
    ld l, c
    db $76

jr_002_7253:
    ld h, l
    ld [hl], e
    jr nz, jr_002_7277

    jr nz, jr_002_725a

    dec b

jr_002_725a:
    jr @-$38

    sbc b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]

jr_002_7261:
    jr nz, jr_002_72af

    ld l, c
    db $76
    ld h, l

jr_002_7266:
    ld [hl], e
    jr nz, jr_002_7289

    jr nz, jr_002_726c

    inc bc

jr_002_726c:
    pop af
    pop bc
    sbc b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]

jr_002_7273:
    jr nz, jr_002_72c9

    ld l, c
    ld l, l

jr_002_7277:
    ld h, l
    jr nz, @+$22

    jr nz, jr_002_729c

    ld bc, $fa3b
    pop bc
    sub a
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_72cc

jr_002_7287:
    ld l, [hl]
    ld h, l

jr_002_7289:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_72ae

    ld bc, $5008
    jp $80eb


    ld d, e
    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_002_72fd

    ld [hl], e

jr_002_729c:
    ld [hl], h

jr_002_729d:
    ld h, l
    ld [hl], d
    jr nz, jr_002_72a2

    ld [bc], a

jr_002_72a2:
    adc l
    call nc, $80eb
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_72ed

    ld h, c
    ld l, h
    ld l, h

jr_002_72ae:
    ld [hl], e

jr_002_72af:
    jr nz, jr_002_72d1

    jr nz, jr_002_72b4

    ld [bc], a

jr_002_72b4:
    sbc l
    call nc, $80eb
    ld b, d
    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$75

    db $76
    ld [hl], d
    jr nz, @+$71

    ld l, [hl]
    jr nz, @+$81

    rst $38
    rst $38
    rst $38
    db $eb

jr_002_72c9:
    add b
    ld b, c
    ld [hl], e

jr_002_72cc:
    jr nz, @+$63

    ld h, d
    ld l, a
    db $76

jr_002_72d1:
    ld h, l
    jr nz, jr_002_72f4

    jr nz, jr_002_72f6

    ld a, a
    rst $38
    rst $38
    rst $38
    db $eb
    add b
    ld b, c
    ld [hl], e
    jr nz, @+$63

    ld h, d
    ld l, a
    db $76
    ld h, l
    jr nz, jr_002_7306

    jr nz, jr_002_7308

    ld a, a
    rst $38
    rst $38
    rst $38
    db $eb

jr_002_72ed:
    add b
    ld b, c
    ld [hl], e
    jr nz, @+$63

    ld h, d
    ld l, a

jr_002_72f4:
    db $76
    ld h, l

jr_002_72f6:
    jr nz, jr_002_7318

    jr nz, jr_002_731a

    ld a, a
    rst $38
    rst $38

jr_002_72fd:
    rst $38
    db $eb
    add b
    ld l, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, c

jr_002_7306:
    ld l, l
    ld h, l

jr_002_7308:
    jr nz, jr_002_732a

    jr nz, @+$22

    ld a, a
    rst $38
    rst $38
    rst $38
    db $eb
    add b
    ld l, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$6d

    ld l, c

jr_002_7318:
    ld h, e
    ld l, e

jr_002_731a:
    ld h, d
    ld h, e
    ld l, e
    jr nz, jr_002_7320

    add hl, hl

jr_002_7320:
    dec e
    push de
    add sp, -$80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7392

    ld [hl], h

jr_002_732a:
    ld l, l
    ld sp, $2020
    jr nz, jr_002_7350

    ld bc, $1f63
    db $d3
    add sp, -$80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_73a4

    ld [hl], h
    ld l, l
    ld [hl-], a
    jr nz, jr_002_7360

    jr nz, jr_002_7362

    ld bc, $2163
    db $d3
    add sp, -$80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_73b6

    ld [hl], h
    ld l, l
    inc sp

jr_002_7350:
    jr nz, jr_002_7372

    jr nz, jr_002_7374

    ld bc, $2363
    db $d3
    add sp, -$80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_73c8

    ld [hl], h

jr_002_7360:
    ld l, l
    inc [hl]

jr_002_7362:
    jr nz, jr_002_7384

    jr nz, @+$22

    ld bc, $2563
    db $d3
    add sp, -$80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_73da

    ld [hl], h

jr_002_7372:
    ld l, l
    dec [hl]

jr_002_7374:
    jr nz, jr_002_7396

    jr nz, jr_002_7398

    ld bc, $2763
    db $d3
    add sp, -$80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_73ec

    ld [hl], h

jr_002_7384:
    ld l, l
    ld [hl], $20
    jr nz, jr_002_73a9

    jr nz, jr_002_738c

    ld h, e

jr_002_738c:
    add hl, hl
    db $d3
    add sp, -$80
    ld c, c
    ld l, [hl]

jr_002_7392:
    ld h, [hl]
    jr nz, jr_002_73fe

    ld [hl], h

jr_002_7396:
    ld l, l
    scf

jr_002_7398:
    jr nz, jr_002_73ba

    jr nz, jr_002_73bc

    ld bc, $2b63
    db $d3
    add sp, -$80
    ld c, c
    ld l, [hl]

jr_002_73a4:
    ld h, [hl]
    jr nz, jr_002_7410

    ld [hl], h
    ld l, l

jr_002_73a9:
    jr c, jr_002_73cb

    jr nz, jr_002_73cd

    jr nz, jr_002_73b0

    ld h, e

jr_002_73b0:
    dec l
    db $d3
    add sp, -$80
    ld c, c
    ld l, [hl]

jr_002_73b6:
    ld h, [hl]
    jr nz, jr_002_7422

    ld [hl], h

jr_002_73ba:
    ld l, l
    add hl, sp

jr_002_73bc:
    jr nz, jr_002_73de

    jr nz, @+$22

    ld bc, $2f63
    db $d3
    add sp, -$80
    ld c, c
    ld l, [hl]

jr_002_73c8:
    ld h, [hl]
    jr nz, jr_002_7434

jr_002_73cb:
    ld [hl], h
    ld l, l

jr_002_73cd:
    ld sp, $2030
    jr nz, @+$22

    ld bc, $3163
    db $d3
    add sp, -$80
    ld c, c
    ld l, [hl]

jr_002_73da:
    ld h, [hl]
    jr nz, @+$52

    ld d, b

jr_002_73de:
    ld sp, $2020
    jr nz, jr_002_7403

    jr nz, @+$03

    jr z, jr_002_7414

    ret nc

    add sp, -$80
    ld c, c
    ld l, [hl]

jr_002_73ec:
    ld h, [hl]
    jr nz, jr_002_743f

    ld d, b
    ld [hl-], a
    jr nz, jr_002_7413

    jr nz, jr_002_7415

    jr nz, @+$03

    jr z, @+$30

    ret nc

    add sp, -$80
    ld c, c
    ld l, [hl]

jr_002_73fe:
    ld h, [hl]
    jr nz, jr_002_7451

    ld d, b
    inc sp

jr_002_7403:
    jr nz, jr_002_7425

    jr nz, @+$22

    jr nz, @+$03

    jr z, @+$31

    ret nc

    add sp, -$80
    ld c, c
    ld l, [hl]

jr_002_7410:
    ld h, [hl]
    jr nz, @+$52

jr_002_7413:
    ld d, b

jr_002_7414:
    inc [hl]

jr_002_7415:
    jr nz, jr_002_7437

    jr nz, jr_002_7439

    jr nz, @+$03

    jr z, jr_002_744d

    ret nc

    add sp, -$80
    ld c, [hl]
    ld l, l

jr_002_7422:
    ld h, l
    jr nz, jr_002_7493

jr_002_7425:
    ld l, a
    jr nz, jr_002_7489

    ld [hl], h
    ld l, e
    jr nz, @+$22

    ld bc, $e970
    rst $08
    add sp, -$80
    ld b, c
    ld [hl], e

jr_002_7434:
    ld l, b
    jr nz, jr_002_747d

jr_002_7437:
    ld d, a
    ld b, h

jr_002_7439:
    jr nz, jr_002_745b

    jr nz, jr_002_745d

    jr nz, jr_002_7440

jr_002_743f:
    nop

jr_002_7440:
    add hl, bc
    pop bc
    add sp, -$80
    ld b, c
    ld [hl], e
    ld l, b
    jr nz, jr_002_748f

    ld d, a
    ld b, h
    jr nz, jr_002_749f

jr_002_744d:
    jr nz, jr_002_746f

    jr nz, @+$03

jr_002_7451:
    ld bc, $c109
    add sp, -$80
    ld b, c
    ld [hl], e
    ld l, b
    jr nz, jr_002_74a1

jr_002_745b:
    ld d, a
    ld b, h

jr_002_745d:
    ld [hl-], a
    jr nz, jr_002_7480

    jr nz, jr_002_7482

    ld bc, $0902
    pop bc
    jp hl


    add b
    ld sp, $7473
    jr nz, jr_002_74ae

    ld [hl], h
    ld [hl], h

jr_002_746f:
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_002_7494

    ld bc, $7239
    pop de
    jp hl


    add b
    ld [hl-], a
    ld l, [hl]
    ld h, h

jr_002_747d:
    jr nz, jr_002_74c0

    ld [hl], h

jr_002_7480:
    ld [hl], h
    ld h, c

jr_002_7482:
    ld h, e
    ld l, e
    jr nz, jr_002_74a6

    ld bc, $7339

jr_002_7489:
    pop de
    jp hl


    add b
    inc sp
    ld [hl], d
    ld h, h

jr_002_748f:
    jr nz, jr_002_74d2

    ld [hl], h
    ld [hl], h

jr_002_7493:
    ld h, c

jr_002_7494:
    ld h, e
    ld l, e
    jr nz, jr_002_74b8

    ld bc, $7439
    pop de
    jp hl


    add b
    inc [hl]

jr_002_749f:
    ld [hl], h
    ld l, b

jr_002_74a1:
    jr nz, jr_002_74e4

    ld [hl], h
    ld [hl], h
    ld h, c

jr_002_74a6:
    ld h, e
    ld l, e
    jr nz, jr_002_74ca

    ld bc, $7539
    pop de

jr_002_74ae:
    jp hl


    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_74f8

    ld h, c
    ld [hl], e
    ld l, b

jr_002_74b8:
    jr nz, jr_002_74da

    jr nz, jr_002_74dc

    ld bc, $4699
    db $d3

jr_002_74c0:
    jp hl


    add b
    ld b, c
    ld [hl], e
    jr nz, @+$63

    ld h, d
    ld l, a
    db $76
    ld h, l

jr_002_74ca:
    jr nz, jr_002_74ec

    jr nz, jr_002_74ee

    ld bc, $4799
    db $d3

jr_002_74d2:
    jp hl


    add b
    ld b, c
    ld [hl], e
    jr nz, @+$63

    ld h, d
    ld l, a

jr_002_74da:
    db $76
    ld h, l

jr_002_74dc:
    jr nz, jr_002_74fe

    jr nz, jr_002_7500

    ld bc, $4899
    db $d3

jr_002_74e4:
    jp hl


    add b
    ld d, l
    ld l, [hl]
    ld l, h
    ld l, c
    ld l, l
    ld l, c

jr_002_74ec:
    ld [hl], h
    ld h, l

jr_002_74ee:
    ld h, h
    jr nz, @+$4a

    ld d, b
    ld bc, $15ff
    ret nc

    jp hl


    add b

jr_002_74f8:
    ld l, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$52

    ld d, b

jr_002_74fe:
    jr nz, jr_002_7531

jr_002_7500:
    jr nz, jr_002_7522

    jr nz, jr_002_7524

    ld bc, $2c28
    ret nc

    jp hl


    add b
    ld l, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_755f

    ld d, b
    jr nz, @+$34

    jr nz, jr_002_7534

    jr nz, jr_002_7536

    ld bc, $2d28
    ret nc

    jp hl


    add b
    ld l, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$52

    ld d, b

jr_002_7522:
    jr nz, jr_002_7557

jr_002_7524:
    jr nz, jr_002_7546

    jr nz, jr_002_7548

    ld bc, $2e28
    ret nc

    jp hl


    add b
    ld l, c
    ld l, [hl]
    ld h, [hl]

jr_002_7531:
    jr nz, jr_002_7583

    ld d, b

jr_002_7534:
    jr nz, jr_002_756a

jr_002_7536:
    jr nz, jr_002_7558

    jr nz, jr_002_755a

    ld bc, $2f28
    ret nc

    sbc c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_758a

    ld l, [hl]

jr_002_7546:
    ld h, l
    ld [hl], d

jr_002_7548:
    ld h, a
    ld a, c
    jr nz, jr_002_756c

    ld bc, $5903
    db $dd
    sbc c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_75a3

jr_002_7557:
    ld l, c

jr_002_7558:
    db $76
    ld h, l

jr_002_755a:
    ld [hl], e
    jr nz, jr_002_757d

    jr nz, jr_002_7560

jr_002_755f:
    ld [bc], a

jr_002_7560:
    db $76
    db $dd
    sbc d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_75ae

    ld l, [hl]

jr_002_756a:
    ld h, l
    ld [hl], d

jr_002_756c:
    ld h, a
    ld a, c
    jr nz, jr_002_7590

    ld bc, $ad1f
    call nc, $809a
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_75cb

    ld l, a
    ld [hl], a

jr_002_757d:
    ld h, l
    ld [hl], d
    jr nz, jr_002_75a1

    jr nz, jr_002_7584

jr_002_7583:
    rrca

jr_002_7584:
    ld b, [hl]
    push de
    sbc e
    add b
    ld c, c
    ld l, [hl]

jr_002_758a:
    ld h, [hl]
    jr nz, jr_002_75d0

    ld [hl], d
    ld h, l
    ld h, h

jr_002_7590:
    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_002_7596

    sbc c

jr_002_7596:
    ld c, $cf
    sbc e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_75e2

    ld [hl], d
    ld h, l

jr_002_75a1:
    ld h, h
    ld l, c

jr_002_75a3:
    ld [hl], h
    ld [hl], e
    jr nz, jr_002_75a8

    sbc c

jr_002_75a8:
    rrca
    rst $08
    sbc e
    add b
    ld c, c
    ld l, [hl]

jr_002_75ae:
    ld h, [hl]
    jr nz, jr_002_75f4

    ld [hl], d
    ld h, l
    ld h, h
    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_002_75ba

    sbc c

jr_002_75ba:
    db $10
    rst $08
    sbc e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7606

    ld [hl], d
    ld h, l
    ld h, h
    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_002_75cc

jr_002_75cb:
    sbc c

jr_002_75cc:
    ld de, $9ccf
    add b

jr_002_75d0:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7621

    ld l, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_002_75fb

    jr nz, jr_002_75de

    inc c

jr_002_75de:
    inc b
    call z, $809d

jr_002_75e2:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7633

    ld l, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_002_760d

    jr nz, jr_002_75f0

    inc bc

jr_002_75f0:
    ld e, e
    pop bc
    sbc [hl]
    add b

jr_002_75f4:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7645

    ld l, c
    db $76

jr_002_75fb:
    ld h, l
    ld [hl], e
    jr nz, jr_002_761f

    jr nz, jr_002_7602

    inc bc

jr_002_7602:
    rst $28
    ret nz

    sbc [hl]
    add b

jr_002_7606:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c
    ld l, l

jr_002_760d:
    ld h, l
    jr nz, jr_002_7630

    jr nz, jr_002_7632

    ld bc, $7163
    jp $809f


    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_761f:
    ld h, l
    ld [hl], e

jr_002_7621:
    jr nz, jr_002_7643

    jr nz, jr_002_7626

    dec b

jr_002_7626:
    inc sp
    push bc
    and c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7677

    ld h, l

jr_002_7630:
    ld h, c
    ld l, h

jr_002_7632:
    ld [hl], h

jr_002_7633:
    ld l, b
    jr nz, jr_002_7656

    ld bc, $1805
    pop bc
    and b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_768d

    ld l, c
    db $76

jr_002_7643:
    ld h, l
    ld [hl], e

jr_002_7645:
    jr nz, jr_002_7667

    jr nz, jr_002_764a

    ld [bc], a

jr_002_764a:
    daa
    jp nz, $80a2

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_769b

    ld h, l
    ld h, c
    ld l, h

jr_002_7656:
    ld [hl], h
    ld l, b
    jr nz, jr_002_767a

    ld bc, $2663
    call nc, $80a3
    ld sp, $4820
    ld l, c
    ld [hl], h
    jr nz, jr_002_76bc

jr_002_7667:
    ld [hl], b
    jr nz, @+$4e

    db $76
    ld l, h
    ld bc, $1d04
    call z, $80a3
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_76c3

jr_002_7677:
    ld l, c
    db $76
    ld h, l

jr_002_767a:
    ld [hl], e
    jr nz, jr_002_769d

    jr nz, jr_002_7680

    dec b

jr_002_7680:
    ld a, [bc]
    call z, $80a4
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_76ce

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a

jr_002_768d:
    ld a, c
    jr nz, jr_002_76b0

    ld bc, $3363
    call c, $80a4
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_76e7

jr_002_769b:
    ld l, c
    db $76

jr_002_769d:
    ld h, l
    ld [hl], e
    jr nz, jr_002_76c1

    jr nz, jr_002_76a4

    inc bc

jr_002_76a4:
    ld [hl-], a
    call c, $80a4
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$55

    ld l, b
    ld l, c
    ld h, l

jr_002_76b0:
    ld l, h
    ld h, h
    jr nz, jr_002_76d4

    ld bc, $3103
    call c, $80a4
    ld c, c
    ld l, [hl]

jr_002_76bc:
    ld h, [hl]
    jr nz, jr_002_7713

    ld l, a
    ld [hl], d

jr_002_76c1:
    ld [hl], b
    ld h, l

jr_002_76c3:
    ld h, h
    ld l, a
    ld [hl], e
    ld bc, $3003
    call c, $80a5
    ld c, c
    ld l, [hl]

jr_002_76ce:
    ld h, [hl]
    jr nz, jr_002_7719

    ld h, l
    ld h, c
    ld l, h

jr_002_76d4:
    ld [hl], h
    ld l, b
    jr nz, jr_002_7709

    ld bc, $9d20
    ret nz

    and [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7728

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a

jr_002_76e7:
    ld a, c
    jr nz, jr_002_770a

    ld bc, $a370
    rst $18
    and [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7741

    ld l, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_002_771b

    jr nz, jr_002_76fe

    inc bc

jr_002_76fe:
    ld [$a7c1], sp
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_7709:
    ld h, l

jr_002_770a:
    ld [hl], e
    jr nz, jr_002_772d

    jr nz, jr_002_7710

    inc bc

jr_002_7710:
    ld d, e
    pop bc
    xor b

jr_002_7713:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_775e

jr_002_7719:
    ld l, [hl]
    ld h, l

jr_002_771b:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_7740

    ld bc, $b703
    ret nz

    xor b
    add b
    ld c, c
    ld l, [hl]

jr_002_7728:
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_772d:
    ld h, l
    ld [hl], e
    jr nz, jr_002_7751

    jr nz, jr_002_7734

    inc bc

jr_002_7734:
    or [hl]
    ret nz

    xor d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7789

    ld l, c
    db $76
    ld h, l

jr_002_7740:
    ld [hl], e

jr_002_7741:
    jr nz, jr_002_7763

    jr nz, jr_002_7746

    dec b

jr_002_7746:
    rrca
    sbc $aa
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_77a3

    ld l, c
    ld l, l

jr_002_7751:
    ld h, l
    jr nz, jr_002_7774

    jr nz, jr_002_7776

    ld bc, $8e39
    jp nc, $80a9

    ld c, c
    ld l, [hl]

jr_002_775e:
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_7763:
    ld h, l
    ld [hl], e
    jr nz, jr_002_7787

    jr nz, jr_002_776a

    dec b

jr_002_776a:
    inc c
    sbc $a9
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_77c7

    ld l, c

jr_002_7774:
    ld l, l
    ld h, l

jr_002_7776:
    jr nz, jr_002_7798

    jr nz, jr_002_779a

    ld bc, $7a39
    jp $80ab


    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_77ca

    ld l, [hl]
    ld h, l

jr_002_7787:
    ld [hl], d
    ld h, a

jr_002_7789:
    ld a, c
    jr nz, jr_002_77ac

    ld bc, $8f0f
    pop de
    xor e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_77e3

    ld l, c

jr_002_7798:
    db $76
    ld h, l

jr_002_779a:
    ld [hl], e
    jr nz, jr_002_77bd

    jr nz, jr_002_77a0

    inc b

jr_002_77a0:
    dec a
    pop de
    xor h

jr_002_77a3:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_77fd

    ld l, c
    ld l, l
    ld h, l

jr_002_77ac:
    jr nz, jr_002_77ce

    jr nz, jr_002_77d0

    ld bc, $8758
    push bc
    xor l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7800

    ld l, [hl]
    ld h, l

jr_002_77bd:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_77e2

    ld bc, $9b06
    ret nz

    xor l

jr_002_77c7:
    add b
    ld c, c
    ld l, [hl]

jr_002_77ca:
    ld h, [hl]
    jr nz, jr_002_7819

    ld l, c

jr_002_77ce:
    db $76
    ld h, l

jr_002_77d0:
    ld [hl], e
    jr nz, jr_002_77f3

    jr nz, jr_002_77d6

    inc bc

jr_002_77d6:
    sbc h
    ret nz

    xor [hl]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7824

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_77e2:
    ld h, a

jr_002_77e3:
    ld a, c
    jr nz, jr_002_7806

    ld bc, $5605
    pop bc
    xor a
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7836

    ld l, [hl]
    ld h, l

jr_002_77f3:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_7818

    ld bc, $2b5f
    pop bc
    xor a

jr_002_77fd:
    add b
    ld c, c
    ld l, [hl]

jr_002_7800:
    ld h, [hl]
    jr nz, jr_002_784f

    ld l, c
    db $76
    ld h, l

jr_002_7806:
    ld [hl], e
    jr nz, jr_002_7829

    jr nz, jr_002_780c

    inc bc

jr_002_780c:
    ld d, b
    pop bc
    or b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_785a

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_7818:
    ld h, a

jr_002_7819:
    ld a, c
    jr nz, jr_002_783c

    ld bc, $9100
    inc l
    or b
    add b
    ld c, c
    ld l, [hl]

jr_002_7824:
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_7829:
    ld h, l
    ld [hl], e
    jr nz, jr_002_784d

    jr nz, jr_002_7830

    inc bc

jr_002_7830:
    inc hl
    call $80b0
    ld c, c
    ld l, [hl]

jr_002_7836:
    ld h, [hl]
    jr nz, @+$56

    ld l, c
    ld l, l
    ld h, l

jr_002_783c:
    jr nz, jr_002_785e

    jr nz, jr_002_7860

    ld bc, $5805
    call $80b1
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7890

    ld l, [hl]
    ld h, l

jr_002_784d:
    ld [hl], d
    ld h, a

jr_002_784f:
    ld a, c
    jr nz, jr_002_7872

    ld bc, $35ff
    pop bc
    or d
    add b
    ld c, c
    ld l, [hl]

jr_002_785a:
    ld h, [hl]
    jr nz, jr_002_78a9

    ld l, c

jr_002_785e:
    db $76
    ld h, l

jr_002_7860:
    ld [hl], e
    jr nz, jr_002_7883

    jr nz, jr_002_7866

    inc bc

jr_002_7866:
    or [hl]
    reti


    or d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_78c3

    ld l, c
    ld l, l
    ld h, l

jr_002_7872:
    jr nz, jr_002_7894

    jr nz, jr_002_7896

    ld bc, $cd08
    reti


    or e
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_78d5

    ld l, c
    ld l, l

jr_002_7883:
    ld h, l
    jr nz, jr_002_78a6

    jr nz, jr_002_78a8

    ld bc, $9200
    jp $80b4


    ld c, c
    ld l, [hl]

jr_002_7890:
    ld h, [hl]
    jr nz, jr_002_78e7

    ld l, c

jr_002_7894:
    ld l, l
    ld h, l

jr_002_7896:
    jr nz, @+$22

    jr nz, jr_002_78ba

    ld bc, $9a40
    call nz, $80b5
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_78f1

    ld l, c

jr_002_78a6:
    db $76
    ld h, l

jr_002_78a8:
    ld [hl], e

jr_002_78a9:
    jr nz, jr_002_78cb

    jr nz, jr_002_78ae

    ld [bc], a

jr_002_78ae:
    sub l
    rst $08
    or [hl]
    add b
    ld b, c
    ld l, h
    ld l, c
    ld h, l
    ld l, [hl]
    jr nz, jr_002_7909

    ld h, l

jr_002_78ba:
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_002_78c0

    inc b

jr_002_78c0:
    add hl, de
    pop de
    or [hl]

jr_002_78c3:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_791c

    ld l, b
    ld l, c

jr_002_78cb:
    ld [hl], b
    ld [hl], e
    jr nz, jr_002_78ef

    jr nz, jr_002_78d2

    ld [bc], a

jr_002_78d2:
    ld l, c
    rst $10
    or a

jr_002_78d5:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7927

    ld l, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_002_7901

    jr nz, jr_002_78e4

    inc bc

jr_002_78e4:
    cp b
    rst $18
    cp b

jr_002_78e7:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7935

    ld h, l
    ld h, c

jr_002_78ef:
    ld l, h
    ld [hl], h

jr_002_78f1:
    ld l, b
    jr nz, jr_002_7914

    ld bc, $f820
    pop de
    cp b
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_7901:
    ld h, l
    ld [hl], e
    jr nz, jr_002_7925

    jr nz, jr_002_7908

    inc bc

jr_002_7908:
    and l

jr_002_7909:
    pop de
    cp c
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7965

    ld l, c
    ld l, l
    ld h, l

jr_002_7914:
    jr nz, jr_002_7936

    jr nz, jr_002_7938

    ld bc, $c099
    ret nz

jr_002_791c:
    cp d
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_796f

    ld l, c
    db $76

jr_002_7925:
    ld h, l
    ld [hl], e

jr_002_7927:
    jr nz, jr_002_7949

    jr nz, jr_002_792c

    inc b

jr_002_792c:
    ld de, $bad1
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$55

jr_002_7935:
    ld l, b

jr_002_7936:
    ld l, c
    ld h, l

jr_002_7938:
    ld l, h
    ld h, h
    jr nz, jr_002_795c

    ld bc, $6d09
    jp nc, $80ba

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c
    ld l, l

jr_002_7949:
    ld h, l
    jr nz, jr_002_796c

    jr nz, jr_002_796e

    ld bc, $5212
    jp nc, $80bb

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_79a5

    ld l, c
    db $76
    ld h, l

jr_002_795c:
    ld [hl], e
    jr nz, jr_002_797f

    jr nz, jr_002_7962

    inc bc

jr_002_7962:
    inc de
    push bc
    cp h

jr_002_7965:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_79b7

    ld l, c

jr_002_796c:
    db $76
    ld h, l

jr_002_796e:
    ld [hl], e

jr_002_796f:
    jr nz, jr_002_7991

    jr nz, jr_002_7974

    inc bc

jr_002_7974:
    db $f4
    push bc
    cp l
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_79c0

    ld l, a
    ld l, [hl]

jr_002_797f:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld [hl], l
    ld h, l
    ld bc, $a309
    jp z, $80be

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4f

    ld l, a
    db $76

jr_002_7991:
    ld h, l
    ld [hl], e
    jr nz, jr_002_79b5

    jr nz, jr_002_7998

    dec b

jr_002_7998:
    db $dd
    call nz, $80be
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld [hl], e

jr_002_79a5:
    jr nz, jr_002_79c7

    jr nz, jr_002_79aa

    dec b

jr_002_79aa:
    push de
    call nz, $80bf
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_79f8

    ld l, [hl]
    ld h, l

jr_002_79b5:
    ld [hl], d
    ld h, a

jr_002_79b7:
    ld a, c
    jr nz, jr_002_79ec

    ld bc, $c020
    pop bc
    ret nz

    add b

jr_002_79c0:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld [hl], l
    ld [hl], d

jr_002_79c7:
    ld h, d
    ld l, a
    ld [hl], e
    jr nz, jr_002_79ec

    ld bc, $7709
    call nz, $80c0
    ld d, a
    ld l, c
    ld l, [hl]
    jr nz, jr_002_79f7

    jr nz, jr_002_79f9

    jr nz, jr_002_79fb

    jr nz, jr_002_79fd

    jr nz, jr_002_79e0

    dec b

jr_002_79e0:
    ld [bc], a
    call nz, $80c1
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$44

    ld h, c
    ld l, h
    ld l, h

jr_002_79ec:
    ld [hl], e
    jr nz, jr_002_7a0f

    jr nz, jr_002_79f2

    add hl, bc

jr_002_79f2:
    ld [hl], h
    pop bc
    jp nz, $4980

jr_002_79f7:
    ld l, [hl]

jr_002_79f8:
    ld h, [hl]

jr_002_79f9:
    jr nz, @+$44

jr_002_79fb:
    ld l, a
    ld l, a

jr_002_79fd:
    ld [hl], e
    ld [hl], h
    ld [hl], e
    jr nz, jr_002_7a22

    ld bc, $0602
    call nz, $80c2
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c
    ld l, l

jr_002_7a0f:
    ld h, l
    jr nz, jr_002_7a32

    jr nz, jr_002_7a34

    ld bc, $e401
    jp $80c3


    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7a73

    ld l, c
    ld l, l
    ld h, l

jr_002_7a22:
    jr nz, jr_002_7a44

    jr nz, jr_002_7a46

    ld bc, $0332
    ret


    call nz, $4980
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7a74

    ld l, a

jr_002_7a32:
    ld l, [hl]
    ld [hl], h

jr_002_7a34:
    ld l, c
    ld l, [hl]
    ld [hl], l
    ld h, l
    ld bc, $0209
    ret nz

    call nz, $4980
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7a8f

    ld l, c

jr_002_7a44:
    db $76
    ld h, l

jr_002_7a46:
    ld [hl], e
    jr nz, jr_002_7a69

    jr nz, @+$03

    ld bc, $da15
    call nz, $4980
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7aa9

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_002_7a7a

    jr nz, jr_002_7a7c

    ld bc, $6199
    jp c, $80c5

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7ab3

    ld l, c
    db $76

jr_002_7a69:
    ld h, l
    ld [hl], e
    jr nz, jr_002_7a8d

    jr nz, jr_002_7aee

    rst $38
    rst $38
    rst $38
    push bc

jr_002_7a73:
    add b

jr_002_7a74:
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7acd

    ld l, c

jr_002_7a7a:
    ld l, l
    ld h, l

jr_002_7a7c:
    jr nz, jr_002_7a9e

    jr nz, jr_002_7aa0

    ld a, a
    rst $38
    rst $38
    rst $38
    add $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7ad7

    ld l, c
    db $76

jr_002_7a8d:
    ld h, l
    ld [hl], e

jr_002_7a8f:
    jr nz, jr_002_7ab1

    jr nz, @+$81

    rst $38
    rst $38
    rst $38
    add $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7af1

    ld l, c

jr_002_7a9e:
    ld l, l
    ld h, l

jr_002_7aa0:
    jr nz, jr_002_7ac2

    jr nz, jr_002_7ac4

    ld a, a
    rst $38
    rst $38
    rst $38
    rst $00

jr_002_7aa9:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7af7

    ld h, l
    ld h, c

jr_002_7ab1:
    ld l, h
    ld [hl], h

jr_002_7ab3:
    ld l, b
    jr nz, jr_002_7ad6

    ld bc, $2d28
    pop bc
    ret z

    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7b09

    ld h, l

jr_002_7ac2:
    ld h, c
    ld l, h

jr_002_7ac4:
    ld [hl], h
    ld l, b
    jr nz, jr_002_7ae8

    ld bc, $5605
    pop bc
    ret


jr_002_7acd:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7b18

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_7ad6:
    ld h, a

jr_002_7ad7:
    ld a, c
    jr nz, jr_002_7afa

    ld bc, $ad10
    pop bc
    ret


    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76
    ld h, l

jr_002_7ae8:
    ld [hl], e
    jr nz, jr_002_7b0b

    jr nz, jr_002_7aee

    dec b

jr_002_7aee:
    xor h
    pop bc
    ret


jr_002_7af1:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

jr_002_7af7:
    ld l, c
    ld l, l
    ld h, l

jr_002_7afa:
    jr nz, jr_002_7b1c

    jr nz, jr_002_7b1e

    ld bc, $ba09
    pop bc
    jp z, $4980

    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7b4e

jr_002_7b09:
    ld l, [hl]
    ld h, l

jr_002_7b0b:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_7b30

    ld bc, $ad10
    pop bc
    jp z, $4980

    ld l, [hl]

jr_002_7b18:
    ld h, [hl]
    jr nz, jr_002_7b67

    ld l, c

jr_002_7b1c:
    db $76
    ld h, l

jr_002_7b1e:
    ld [hl], e
    jr nz, jr_002_7b41

    jr nz, jr_002_7b24

    dec b

jr_002_7b24:
    xor h
    pop bc
    jp z, $4980

    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c
    ld l, l
    ld h, l

jr_002_7b30:
    jr nz, jr_002_7b52

    jr nz, jr_002_7b54

    ld bc, $ba09
    pop bc
    res 0, b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7b84

    ld l, [hl]
    ld h, l

jr_002_7b41:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_7b66

    ld bc, $2b09
    jp nz, $80cb

    ld c, c
    ld l, [hl]

jr_002_7b4e:
    ld h, [hl]
    jr nz, jr_002_7b9d

    ld l, c

jr_002_7b52:
    db $76
    ld h, l

jr_002_7b54:
    ld [hl], e
    jr nz, jr_002_7b77

    jr nz, jr_002_7b5a

    inc bc

jr_002_7b5a:
    add hl, hl
    jp nz, $80cc

    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7ba8

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_7b66:
    ld h, a

jr_002_7b67:
    ld a, c
    jr nz, jr_002_7b8a

    ld bc, $bde0
    db $db
    call z, $4980
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

    ld l, c
    ld l, l

jr_002_7b77:
    ld h, l
    jr nz, jr_002_7b9a

    jr nz, jr_002_7b9c

    ld bc, $5164
    call c, $80cd
    ld c, c
    ld l, [hl]

jr_002_7b84:
    ld h, [hl]
    jr nz, @+$4f

    ld l, c
    ld [hl], e
    ld [hl], e

jr_002_7b8a:
    ld l, c
    ld l, h
    ld h, l
    ld [hl], e
    ld bc, $f81b
    db $dd
    adc $80
    ld d, e
    ld [hl], h
    ld [hl], d
    jr nz, @+$52

    ld l, c

jr_002_7b9a:
    ld h, l
    ld h, e

jr_002_7b9c:
    ld h, l

jr_002_7b9d:
    ld [hl], e
    jr nz, jr_002_7bc0

    ld bc, $0309
    jp nz, $80cf

    ld d, e
    ld [hl], h

jr_002_7ba8:
    ld [hl], d
    jr nz, @+$52

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e
    jr nz, jr_002_7bd2

    ld bc, $8604
    add $d0
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7c02

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_7bc0:
    ld h, a
    ld a, c
    jr nz, jr_002_7be4

    ld bc, $3705
    jp $80d0


    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7c1b

    ld l, c
    db $76
    ld h, l

jr_002_7bd2:
    ld [hl], e
    jr nz, jr_002_7bf5

    jr nz, jr_002_7bd8

    inc bc

jr_002_7bd8:
    jr c, jr_002_7b9d

    pop de
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7c29

    ld h, l
    ld h, c
    ld l, h

jr_002_7be4:
    ld [hl], h
    ld l, b
    jr nz, jr_002_7c08

    ld bc, $8109
    ret


    jp nc, $4980

    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7c3b

    ld h, l
    ld h, c

jr_002_7bf5:
    ld l, h
    ld [hl], h
    ld l, b
    jr nz, jr_002_7c1a

    ld bc, $b30c
    rst $00
    db $d3
    add b
    ld c, c
    ld l, [hl]

jr_002_7c02:
    ld h, [hl]
    jr nz, jr_002_7c4d

    ld h, l
    ld h, c
    ld l, h

jr_002_7c08:
    ld [hl], h
    ld l, b
    jr nz, jr_002_7c2c

    ld bc, $4c06
    pop bc
    db $d3
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7c63

    ld l, c
    db $76
    ld h, l

jr_002_7c1a:
    ld [hl], e

jr_002_7c1b:
    jr nz, jr_002_7c3d

    jr nz, jr_002_7c20

    inc bc

jr_002_7c20:
    ld a, [$d4c0]
    add b
    ld d, b
    ld l, h
    ld h, c
    ld h, e
    ld h, l

jr_002_7c29:
    jr nz, jr_002_7c5c

    ld [hl], e

jr_002_7c2c:
    ld [hl], h
    jr nz, jr_002_7c4f

    jr nz, @+$03

    ld bc, $c12e
    push de
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$56

jr_002_7c3b:
    ld l, c
    ld l, l

jr_002_7c3d:
    ld h, l
    jr nz, jr_002_7c60

    jr nz, jr_002_7c62

    ld bc, $c909
    jp $80d6


    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7c92

jr_002_7c4d:
    ld l, [hl]
    ld h, l

jr_002_7c4f:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_7c74

    ld bc, $7806
    jp nz, $80d7

    ld c, c
    ld l, [hl]

jr_002_7c5c:
    ld h, [hl]
    jr nz, jr_002_7cab

    ld l, c

jr_002_7c60:
    db $76
    ld h, l

jr_002_7c62:
    ld [hl], e

jr_002_7c63:
    jr nz, jr_002_7c85

    jr nz, jr_002_7c68

    inc bc

jr_002_7c68:
    pop hl
    ret nz

    ret c

    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7cb3

    ld [hl], l
    ld l, h
    ld l, h

jr_002_7c74:
    ld h, l
    ld [hl], h
    ld [hl], e
    jr nz, jr_002_7c7a

    rrca

jr_002_7c7a:
    ret nz

    jp $80d8


    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7cc8

    ld l, [hl]
    ld h, l

jr_002_7c85:
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, @+$22

    ld bc, $8914
    jp z, $80d9

    ld c, c
    ld l, [hl]

jr_002_7c92:
    ld h, [hl]
    jr nz, @+$4f

    ld l, a
    ld l, [hl]
    ld h, l
    ld a, c
    jr nz, jr_002_7cbb

    jr nz, jr_002_7c9e

    ld h, e

jr_002_7c9e:
    cp b
    ret nc

    jp c, Jump_000_3980

    add hl, sp
    jr nz, jr_002_7ced

    ld h, l
    ld l, l
    ld [hl], e
    jr nz, jr_002_7ccb

jr_002_7cab:
    jr nz, jr_002_7ccd

    jr nz, jr_002_7cb0

    ld h, e

jr_002_7cb0:
    add b
    sbc $da

jr_002_7cb3:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7cfa

    ld [hl], d
    ld [hl], d

jr_002_7cbb:
    ld l, a
    ld [hl], a
    ld [hl], e
    jr nz, jr_002_7ce0

    ld bc, $a163
    pop bc
    jp c, $4980

    ld l, [hl]

jr_002_7cc8:
    ld h, [hl]
    jr nz, jr_002_7d13

jr_002_7ccb:
    ld h, l
    ld h, c

jr_002_7ccd:
    ld l, h
    ld [hl], h
    ld l, b
    jr nz, jr_002_7cf2

    ld bc, $f909
    ret nz

    jp c, $4980

    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7d29

    ld l, c
    db $76
    ld h, l

jr_002_7ce0:
    ld [hl], e
    jr nz, jr_002_7d03

    jr nz, jr_002_7ce6

    ld a, [bc]

jr_002_7ce6:
    ld a, [$dbc0]
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]

jr_002_7ced:
    jr nz, jr_002_7d34

    ld l, [hl]
    ld h, l
    ld [hl], d

jr_002_7cf2:
    ld h, a
    ld a, c
    jr nz, jr_002_7d16

    ld bc, $a963
    pop bc

jr_002_7cfa:
    db $db
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7d4d

    ld l, c
    db $76

jr_002_7d03:
    ld h, l
    ld [hl], e
    jr nz, jr_002_7d27

    jr nz, jr_002_7d0a

    ld a, [bc]

jr_002_7d0a:
    xor e
    pop bc
    call c, $4980
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$44

jr_002_7d13:
    ld [hl], l
    ld l, h
    ld l, h

jr_002_7d16:
    ld h, l
    ld [hl], h
    ld [hl], e
    jr nz, jr_002_7d1c

    inc bc

jr_002_7d1c:
    cp $c4
    call c, $4980
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7d67

    ld [hl], l
    ld a, d

jr_002_7d27:
    ld a, d
    ld [hl], e

jr_002_7d29:
    ld h, c
    ld [hl], a
    ld [hl], e
    ld bc, $c303
    push bc
    call c, $4980
    ld l, [hl]

jr_002_7d34:
    ld h, [hl]
    jr nz, @+$49

    ld [hl], d
    ld h, l
    ld l, [hl]
    ld h, c
    ld h, h
    ld h, l
    ld [hl], e
    ld bc, $0103
    push bc
    call c, $4980
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7d95

    ld l, c
    db $76
    ld h, l
    ld [hl], e

jr_002_7d4d:
    jr nz, jr_002_7d6f

    jr nz, jr_002_7d52

    inc bc

jr_002_7d52:
    db $dd
    push bc
    call c, $4980
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$52

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, h
    ld l, c
    ld l, [hl]
    ld bc, $0403
    push bc
    db $dd

jr_002_7d67:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4a

    ld h, l
    ld h, c

jr_002_7d6f:
    ld l, h
    ld [hl], h
    ld l, b
    jr nz, jr_002_7d94

    ld bc, $b408
    rst $08
    db $dd
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7dcb

    ld l, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, @+$22

    jr nz, jr_002_7d88

    rrca

jr_002_7d88:
    or e
    rst $08
    sbc $80
    ld d, h
    ld h, l
    ld h, c
    ld l, l
    jr nz, jr_002_7dc3

    jr nz, jr_002_7de0

jr_002_7d94:
    ld l, a

jr_002_7d95:
    ld [hl], e
    ld h, l
    ld [hl], e
    ld bc, $1f00
    pop bc
    sbc $80
    ld d, h
    ld h, l
    ld h, c
    ld l, l
    jr nz, jr_002_7dd5

    jr nz, @+$4e

    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], e
    ld bc, $2000
    pop bc
    sbc $80
    ld d, h
    ld h, l
    ld h, c
    ld l, l
    jr nz, jr_002_7de8

    jr nz, jr_002_7e04

    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], e
    ld bc, $2500
    pop bc
    sbc $80
    ld d, h

jr_002_7dc3:
    ld h, l
    ld h, c
    ld l, l
    jr nz, jr_002_7dfa

    jr nz, @+$4e

    ld l, a

jr_002_7dcb:
    ld [hl], e
    ld h, l
    ld [hl], e
    ld bc, $2600
    pop bc
    rst $18
    add b
    ld c, c

jr_002_7dd5:
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7e2d

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_002_7dfe

    jr nz, jr_002_7e00

jr_002_7de0:
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [$80], a
    ld c, c
    ld l, [hl]

jr_002_7de8:
    ld h, [hl]
    jr nz, @+$52

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld [hl], l
    ld [hl], b
    jr nz, jr_002_7e72

    rst $38
    rst $38
    rst $38
    ldh [$80], a
    ld c, c
    ld l, [hl]

jr_002_7dfa:
    ld h, [hl]
    jr nz, jr_002_7e51

    ld l, c

jr_002_7dfe:
    ld l, l
    ld h, l

jr_002_7e00:
    jr nz, @+$22

    jr nz, jr_002_7e24

jr_002_7e04:
    ld a, a
    rst $38
    rst $38
    rst $38
    pop hl
    add b
    ld d, c
    ld [hl], l
    ld l, c
    ld h, e
    ld l, e
    jr nz, jr_002_7e54

    ld l, a
    ld l, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_002_7e18

    add hl, bc

jr_002_7e18:
    ld c, $d5
    pop hl
    add b
    ld d, c
    ld [hl], l
    ld l, c
    ld h, e
    ld l, e
    jr nz, jr_002_7e66

    ld l, a

jr_002_7e24:
    ld l, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_002_7e2a

    sbc c

jr_002_7e2a:
    rrca
    push de
    ld [c], a

jr_002_7e2d:
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7e78

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_7e6b

    ld bc, $4d90
    add $e2
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7e99

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_002_7e6a

    jr nz, jr_002_7e6c

    ld bc, $1100
    db $dd
    ld [c], a

jr_002_7e51:
    add b
    ld c, [hl]
    ld l, a

jr_002_7e54:
    jr nz, jr_002_7e9b

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_002_7e8f

    jr nz, jr_002_7e60

    ld a, [bc]

jr_002_7e60:
    ld c, h
    rst $00
    ld [c], a
    add b
    ld c, [hl]
    ld l, a

jr_002_7e66:
    jr nz, jr_002_7ead

    ld l, [hl]
    ld h, l

jr_002_7e6a:
    ld [hl], d

jr_002_7e6b:
    ld h, a

jr_002_7e6c:
    ld a, c
    jr nz, jr_002_7ea1

    jr nz, jr_002_7e72

    ld a, [bc]

jr_002_7e72:
    ld c, l
    rst $00
    ld [c], a
    add b
    ld d, c
    ld [hl], l

jr_002_7e78:
    ld l, c
    ld h, e
    ld l, e
    jr nz, jr_002_7ecd

    ld l, c
    ld l, [hl]
    jr nz, jr_002_7ea1

    jr nz, jr_002_7e84

    inc bc

jr_002_7e84:
    dec c
    db $dd
    db $e3
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, @+$4e

    ld l, c
    db $76

jr_002_7e8f:
    ld h, l
    ld [hl], e
    jr nz, jr_002_7eb3

    jr nz, jr_002_7e96

    inc b

jr_002_7e96:
    ld a, [c]
    ret c

    db $e3

jr_002_7e99:
    add b
    ld c, c

jr_002_7e9b:
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7eec

    ld l, c
    ld [hl], e

jr_002_7ea1:
    ld [hl], e
    ld l, c
    ld l, h
    ld h, l
    ld [hl], e
    ld bc, $f105
    ret c

    db $e4
    add b
    ld c, c

jr_002_7ead:
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7efd

    ld l, c
    db $76

jr_002_7eb3:
    ld h, l
    ld [hl], e
    jr nz, jr_002_7ed7

    jr nz, jr_002_7eba

    inc b

jr_002_7eba:
    or [hl]
    pop de
    db $e4
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7f17

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_002_7ee8

    jr nz, jr_002_7eea

    ld bc, $7b27

jr_002_7ecd:
    pop de
    push hl
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7f29

    ld l, c
    ld l, l

jr_002_7ed7:
    ld h, l
    jr nz, jr_002_7efa

    jr nz, jr_002_7efc

    ld bc, $2c40
    ret nz

    and $80
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7f2c

    ld l, [hl]

jr_002_7ee8:
    ld h, l
    ld [hl], d

jr_002_7eea:
    ld h, a
    ld a, c

jr_002_7eec:
    jr nz, jr_002_7f1f

    ld bc, $1054
    rst $08
    rst $20
    add b
    ld c, c
    ld l, [hl]
    ld h, [hl]
    jr nz, jr_002_7f45

    ld l, c

jr_002_7efa:
    db $76
    ld h, l

jr_002_7efc:
    ld [hl], e

jr_002_7efd:
    jr nz, jr_002_7f1f

    jr nz, jr_002_7f02

    inc bc

jr_002_7f02:
    ld a, [c]
    jp nz, Jump_000_109d

    ld b, l
    ld l, [hl]
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_002_7f51

    ld l, a
    ld h, h
    ld h, l
    ld [hl], e
    ldh a, [rP1]
    rlca
    ld [bc], a
    nop

jr_002_7f17:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_7f1f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_7f29:
    nop
    nop
    nop

jr_002_7f2c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_7f45:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_7f51:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
