//XMega65 Kernal Development Temlate
//Each function of the kernal is a no-args functions
//The functions are placed in the SYSCALLS table surrounded by JMP and NOP
  .file [name="checkpoint2.3.bin", type="bin", segments="XMega65Bin"]
.segmentdef XMega65Bin [segments="Syscall, Code, Data, Stack, Zeropage"]
.segmentdef Syscall [start=$8000, max=$81ff]
.segmentdef Code [start=$8200, min=$8200, max=$bdff]
.segmentdef Data [startAfter="Code", min=$8200, max=$bdff]
.segmentdef Stack [min=$be00, max=$beff, fill]
.segmentdef Zeropage [min=$bf00, max=$bfff, fill]
  //Some definitions of address and special valves that this program uses
  .label RASTER = $d012
  .label VIC_MEMORY = $d018
  .label SCREEN = $400
  .label BGCOL = $d021
  .label COLS = $d800
  .const BLACK = 0
  .const WHITE = 1
  //To save writing 0x4c and 0xEA all the time, we define them as constants
  .const JMP = $4c
  .const NOP = $ea
.segment Code
main: {
    rts
}
undefined_trap: {
    jsr exit_hypervisor
    rts
}
exit_hypervisor: {
    lda #1
    sta $d67f
    rts
}
CPUKIL: {
    jsr exit_hypervisor
    rts
}
VF011WR: {
    jsr exit_hypervisor
    rts
}
VF011RD: {
    jsr exit_hypervisor
    rts
}
ALTTABKEY: {
    jsr exit_hypervisor
    rts
}
RESTORKEY: {
    jsr exit_hypervisor
    rts
}
PAGFAULT: {
    jsr exit_hypervisor
    rts
}
syscall63: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall62: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall61: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall60: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall59: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall58: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall57: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall56: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall55: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall54: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall53: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall52: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall51: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall50: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall49: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall48: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall47: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall46: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall45: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall44: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall43: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall42: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall41: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall40: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall39: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall38: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall37: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall36: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall35: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall34: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall33: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall32: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall31: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall30: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall29: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall28: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall27: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall26: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall25: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall24: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall23: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall22: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall21: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall20: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall19: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
SECUREXIT: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
SECURENTR: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall16: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall15: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall14: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall13: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall12: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall11: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall10: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall9: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall8: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall7: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall6: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall5: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall4: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall3: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall2: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall1: {
    lda #'('
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
//Here are a couple sample SYSCALL handlers that just display a character on the screen
syscall0: {
    lda #')'
    sta SCREEN+$4f
    jsr exit_hypervisor
    rts
}
RESET: {
    .label sc = 4
    .label msg = 2
    // Initialize screen memory, and select correct font
    lda #$14
    sta VIC_MEMORY
    ldx #' '
    lda #<SCREEN
    sta.z memset.str
    lda #>SCREEN
    sta.z memset.str+1
    lda #<$28*$19
    sta.z memset.num
    lda #>$28*$19
    sta.z memset.num+1
    jsr memset
    ldx #WHITE
    lda #<COLS
    sta.z memset.str
    lda #>COLS
    sta.z memset.str+1
    lda #<$28*$19
    sta.z memset.num
    lda #>$28*$19
    sta.z memset.num+1
    jsr memset
    lda #<SCREEN+$28
    sta.z sc
    lda #>SCREEN+$28
    sta.z sc+1
    lda #<MESSAGE
    sta.z msg
    lda #>MESSAGE
    sta.z msg+1
  //A simple copy routine to copy the string
  b1:
    ldy #0
    lda (msg),y
    cmp #0
    bne b2
  b3:
    lda #$36
    cmp RASTER
    beq b4
    lda #$42
    cmp RASTER
    beq b4
    lda #BLACK
    sta BGCOL
    jmp b3
  b4:
    lda #WHITE
    sta BGCOL
    jmp b3
  b2:
    ldy #0
    lda (msg),y
    sta (sc),y
    inc.z sc
    bne !+
    inc.z sc+1
  !:
    inc.z msg
    bne !+
    inc.z msg+1
  !:
    jmp b1
}
// Copies the character c (an unsigned char) to the first num characters of the object pointed to by the argument str.
// memset(void* zeropage(4) str, byte register(X) c, word zeropage(2) num)
memset: {
    .label end = 2
    .label dst = 4
    .label num = 2
    .label str = 4
    lda.z num
    bne !+
    lda.z num+1
    beq breturn
  !:
    lda.z end
    clc
    adc.z str
    sta.z end
    lda.z end+1
    adc.z str+1
    sta.z end+1
  b2:
    lda.z dst+1
    cmp.z end+1
    bne b3
    lda.z dst
    cmp.z end
    bne b3
  breturn:
    rts
  b3:
    txa
    ldy #0
    sta (dst),y
    inc.z dst
    bne !+
    inc.z dst+1
  !:
    jmp b2
}
.segment Data
  //Some text to display
  MESSAGE: .text "checkpoint2.3 nort0137"
  .byte 0
.segment Syscall
  //Now we can have a nice table of up to 64 SYSCALL handlers expressed
  //in a fairly readable and easy format.
  //Each line is a instane of the struct SysCall from above, with the JMP
  //opcode value, the address of the handler routine and the NOP opcode value.
SYSCALLS:
  .byte JMP
  .word syscall0
  .byte NOP
  .byte JMP
  .word syscall1
  .byte NOP
  .byte JMP
  .word syscall2
  .byte NOP
  .byte JMP
  .word syscall3
  .byte NOP
  .byte JMP
  .word syscall4
  .byte NOP
  .byte JMP
  .word syscall5
  .byte NOP
  .byte JMP
  .word syscall6
  .byte NOP
  .byte JMP
  .word syscall7
  .byte NOP
  .byte JMP
  .word syscall8
  .byte NOP
  .byte JMP
  .word syscall9
  .byte NOP
  .byte JMP
  .word syscall10
  .byte NOP
  .byte JMP
  .word syscall11
  .byte NOP
  .byte JMP
  .word syscall12
  .byte NOP
  .byte JMP
  .word syscall13
  .byte NOP
  .byte JMP
  .word syscall14
  .byte NOP
  .byte JMP
  .word syscall15
  .byte NOP
  .byte JMP
  .word syscall16
  .byte NOP
  .byte JMP
  .word SECURENTR
  .byte NOP
  .byte JMP
  .word SECUREXIT
  .byte NOP
  .byte JMP
  .word syscall19
  .byte NOP
  .byte JMP
  .word syscall20
  .byte NOP
  .byte JMP
  .word syscall21
  .byte NOP
  .byte JMP
  .word syscall22
  .byte NOP
  .byte JMP
  .word syscall23
  .byte NOP
  .byte JMP
  .word syscall24
  .byte NOP
  .byte JMP
  .word syscall25
  .byte NOP
  .byte JMP
  .word syscall26
  .byte NOP
  .byte JMP
  .word syscall27
  .byte NOP
  .byte JMP
  .word syscall28
  .byte NOP
  .byte JMP
  .word syscall29
  .byte NOP
  .byte JMP
  .word syscall30
  .byte NOP
  .byte JMP
  .word syscall31
  .byte NOP
  .byte JMP
  .word syscall32
  .byte NOP
  .byte JMP
  .word syscall33
  .byte NOP
  .byte JMP
  .word syscall34
  .byte NOP
  .byte JMP
  .word syscall35
  .byte NOP
  .byte JMP
  .word syscall36
  .byte NOP
  .byte JMP
  .word syscall37
  .byte NOP
  .byte JMP
  .word syscall38
  .byte NOP
  .byte JMP
  .word syscall39
  .byte NOP
  .byte JMP
  .word syscall40
  .byte NOP
  .byte JMP
  .word syscall41
  .byte NOP
  .byte JMP
  .word syscall42
  .byte NOP
  .byte JMP
  .word syscall43
  .byte NOP
  .byte JMP
  .word syscall44
  .byte NOP
  .byte JMP
  .word syscall45
  .byte NOP
  .byte JMP
  .word syscall46
  .byte NOP
  .byte JMP
  .word syscall47
  .byte NOP
  .byte JMP
  .word syscall48
  .byte NOP
  .byte JMP
  .word syscall49
  .byte NOP
  .byte JMP
  .word syscall50
  .byte NOP
  .byte JMP
  .word syscall51
  .byte NOP
  .byte JMP
  .word syscall52
  .byte NOP
  .byte JMP
  .word syscall53
  .byte NOP
  .byte JMP
  .word syscall54
  .byte NOP
  .byte JMP
  .word syscall55
  .byte NOP
  .byte JMP
  .word syscall56
  .byte NOP
  .byte JMP
  .word syscall57
  .byte NOP
  .byte JMP
  .word syscall58
  .byte NOP
  .byte JMP
  .word syscall59
  .byte NOP
  .byte JMP
  .word syscall60
  .byte NOP
  .byte JMP
  .word syscall61
  .byte NOP
  .byte JMP
  .word syscall62
  .byte NOP
  .byte JMP
  .word syscall63
  .byte NOP
  //In this example we had only two SYSCALLs defined, so rather than having
  //another 62 lines, we can just ask KickC to make the TRAP table begin
  //at the next multiple of $100, i.e., at $8100.
  .align $100
SYSCALL_RESET:
  .byte JMP
  .word RESET
  .byte NOP
  .byte JMP
  .word PAGFAULT
  .byte NOP
  .byte JMP
  .word RESTORKEY
  .byte NOP
  .byte JMP
  .word ALTTABKEY
  .byte NOP
  .byte JMP
  .word VF011RD
  .byte NOP
  .byte JMP
  .word VF011WR
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word undefined_trap
  .byte NOP
  .byte JMP
  .word CPUKIL
  .byte NOP
