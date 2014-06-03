" Vim syntax file
" Language: SuperFX assembly, for ca65 and wdc816as
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

syn keyword asmGsuOps add adc alt1 alt2 alt3 and asr bcc bcs beq bge bic blt bmi bne bpl bra bvc bvs cache cmode cmp color dec div2 fmult from getb getbh getbl getbs getc hib ibt inc iwt jal jmp ldb ldw lea link ljmp lm lms lmult lob loop lsr merge move moveb moves movew mult nop not or plot pop push ramb ret rol romb ror rpix sbc sbk sex sm sms stb stop stw sub swap to umult with xor 

syn keyword asmGsuReg r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 sp lr pc

if version >= 508 || !exists("did_gsu_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_gsu_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  endif
  
  HiLink asmGsuReg		Identifier
  
  HiLink asmGsuOps		Function
  
  delcommand HiLink
endif

let b:current_syntax="gsu"
