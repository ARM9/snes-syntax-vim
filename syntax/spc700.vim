" Vim syntax file
" Language: spc700 assembly
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

syn keyword asmSpc700Ops adc addw and and1 asl bbc bbs bcc bcs beq bmi bne bpl bvc bvs bra brk call cbne clr1 clrc clrp clrv cmp cmpw daa das dbnz dec decw di div ei eor eor1 inc incw jmp lsr mov mov1 movw mul nop not1 notc or or1 pcall pop ret reti rol ror sbc set1 setc setp sleep stop subw tcall tclr1 tset1 xcn

syn keyword asmSpc700Reg x y ya a s psw

if version >= 508 || !exists("did_spc700_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_spc700_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  endif
  
  HiLink asmSpc700Reg	Type
  
  HiLink asmSpc700Ops	Function
  
  delcommand HiLink
endif

let b:current_syntax="spc700"
