" Vim syntax file
" Language: 65816 assembly
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

so <sfile>:p:h/instr_65816.vim

if version >= 508 || !exists("did_65816_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_snes_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  endif
  
  HiLink asm65Reg		Type
  HiLink asm65816Ops	Function
  
  delcommand HiLink
endif

let b:current_syntax="65816"

