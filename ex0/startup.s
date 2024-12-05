.thumb

.global _start
_start:
    .word 0x20001000 // MSP gets loaded with this value on reset (address 0)
    .word main // PC gets loaded with this value on reset (address 4)
