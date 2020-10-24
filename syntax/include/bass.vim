" Vim syntax file
" Language: Assembler directive highlighting for bass v14
" Version 0.1
" Maintainer: ARM9

syn keyword snesTodo    contained todo fixme xxx warning danger note notice bug author date

syn match snesNumericOperator "[+-/*<>=&|^!#]"

syn match snesNumbers "\%(\$\x\+\|0x\x\+\|\d\+\|%[01]\+\|0b[01]\+\|0o[0-7]\+\)\>"

syn match snesLabel "\<[_a-z][_a-z0-9.]*:\?"

syn keyword snesDirective arch base constant db dd define defined dl dq dw else endian error evaluate fill global float32 float64 include insert macro map notice origin output print pullvar pushvar putchar scope variable warning while
" todo: fix if keyword so multiline comment if 0 { works

syn match   snesComment "//.*$" contains=snesTodo
syn region  snesComment start="if 0 {" skip="//.*$" end="}" contains=snesTodo

syn region snesString       start="\""  skip=+\\"+ end="\"\|$"
syn region snesString       start="'"   skip=+\\'+ end="'\|$"

syn keyword asm65816Ops adc.b adc.w adc.l and.b and.w and.l asl.b asl.w bit.b bit.w
syn keyword asm65816Ops cmp.b cmp.w cmp.l cpx.b cpx.w cpy.b cpy.w dec.b dec.w
syn keyword asm65816Ops eor.b eor.w eor.l inc.b inc.w lda.b lda.w lda.l
syn keyword asm65816Ops ldx.b ldx.w ldy.b ldy.w lsr.b lsr.w ora.b ora.w ora.l
syn keyword asm65816Ops rol.b rol.w ror.b ror.w sbc.b sbc.w sbc.l
syn keyword asm65816Ops sta.b sta.w sta.l stx.b stx.w sty.b sty.w stz.b stz.w
syn keyword asm65816Ops trb.b tbr.w tsb.b tsb.w

syn keyword asmSpc700Ops clp str

