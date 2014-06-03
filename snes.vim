" Vim syntax file
" Language: 65816 and SuperFX assembly, for ca65 and wdc816as
" Version 0.1
" Maintainer: ARM9

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

if version > 600
  runtime! syntax/base_snes_syntax.vim
  if exists("b:current_syntax")
    unlet b:current_syntax
  endif
else
  so <sfile>:p:h/base_snes_syntax.vim
endif

syn keyword asm65Reg x y a s

syn keyword asm65816Ops adc and asl bcc bcs beq bit bmi bne bpl bra brk brl bvc bvs clc cld cli clv cmp cop cpx cpy dea dec dex dey eor ina inc inx iny jml jmp jsl jsr lda ldx ldy lsr mvn mvp nop ora pea pei per pha phb phd phk php phx phy pla plb pld plp plx ply rep rol ror rti rtl rts sbc sec sed sei sep sta stp stx sty stz tax tay tcd tcs tdc trb tsb tsc tsx txa txs txy tya tyx wai wdm xba xce 

syn keyword asm65816satanism tda tad swa tsa tas 

syn keyword asmGsuOps add alt1 alt2 alt3 asr bge bic blt cache cmode color div2 fmult from getb getbh getbl getbs getc hib ibt iwt jal ldb ldw lea link ljmp lm lms lmult lob loop merge move moveb moves movew mult not or plot pop push ramb ret romb rpix sbk sex sm sms stb stop stw sub swap to umult with xor 

syn keyword asmGsuReg r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 sp lr pc

if version >= 508 || !exists("did_snes_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_snes_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  endif
  
  HiLink asm65Reg		Identifier
  HiLink asmGsuReg		Identifier
  
  HiLink asm65816Ops	Function
  HiLink asmGsuOps		Function
  
  delcommand HiLink
endif

let b:current_syntax="snes"
