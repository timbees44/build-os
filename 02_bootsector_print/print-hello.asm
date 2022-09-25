mov ah, 0x0e ; sets to tty mode (teletype terminal)
mov al, 'H'
int 0x10 ; interupting causing screen-related ISR to be invoked (like printing?)
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10 ; printing twice for double 'l'
mov ah, 'o'
int 0x10

jmp $ ; jumpt to current address = infinite loop

; add padding and the magic boot sector number
times 510 - ($-$$) db 0 ; this gives us 510 bytes of '0' with two left for our magic number
dw 0xaa55
