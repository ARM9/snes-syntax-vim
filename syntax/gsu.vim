" Vim syntax file
" Language: SuperFX assembly
" Version 0.1
" Maintainer: ARM9

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

"so <sfile>:p:h/include/bass.vim
so <sfile>:p:h/include/ca65.vim
so <sfile>:p:h/include/instr_gsu.vim

if version >= 508 || !exists("did_gsu_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_gsu_syntax_inits = 1
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
  
  HiLink asmGsuReg      Type
  HiLink asmGsuOps      Function
  
  delcommand HiLink
endif

let b:current_syntax="gsu"

