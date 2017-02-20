" Vim syntax file
" Language: 65816, spc700 and SuperFX assembly, for ca65, wdc816as, bass
" Version 0.1
" Maintainer: ARM9

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

" change include to your assembler
so <sfile>:p:h/include/ca65.vim
" so <sfile>:p:h/include/bass.vim

so <sfile>:p:h/include/instr_65816.vim
so <sfile>:p:h/include/instr_spc700.vim
so <sfile>:p:h/include/instr_gsu.vim

if version >= 508 || !exists("did_snes_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_snes_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  endif
  HiLink snesNumericOperator Operator
  HiLink snesNumbers         Number

  HiLink snesLabel           Label
  HiLink snesDirective       Identifier
" PreProc
  HiLink snesString          String
  HiLink snesComment         Comment
  HiLink snesTodo            Todo

  HiLink asm65Reg       Type
  HiLink asm65816Ops    Function

  HiLink asmSpc700Reg   Type
  HiLink asmSpc700Ops   Function

  HiLink asmGsuReg      Type
  HiLink asmGsuOps      Function

  delcommand HiLink
endif

let b:current_syntax="snes"

