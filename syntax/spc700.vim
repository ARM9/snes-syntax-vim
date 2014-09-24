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

so <sfile>:p:h/include/base_snes_syntax.vim
so <sfile>:p:h/include/instr_spc700.vim

if version >= 508 || !exists("did_spc700_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_spc700_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  endif
  
  HiLink asmSpc700Reg   Type
  HiLink asmSpc700Ops   Function
  
  delcommand HiLink
endif

let b:current_syntax="spc700"

