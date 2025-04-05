#target ram
#code _BOOT_,0xc000, 0x100
    .db 0xeb, 0xe9
.org 0xc01e
    ld (var_disk), a
    call print
    .ascii "SystemSX"
    .db 13,10,0
    ld hl, 0
    call load
    call load_next
1$:
    halt
    jr 1$

load_next:
    ld hl, (buffer_next)
    jr load

; hl = lba
load:
    xor a
    ld a, (var_disk)
    ld b, 1
    ld c, 0xf9
    ld de, 0
    call 0x144
    ret

print:
    pop hl
    1$:
        ld a, (hl)
        inc hl
        cp 0
        jr z, 2$
        call 0xa2
        jr 1$
    2$:
    push hl
    ret
var_disk: db 0

.org 0xc100
buffer:
buffer_next equ buffer + 502
