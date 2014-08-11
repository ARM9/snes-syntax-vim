" Vim syntax file
" Language: 65816, spc700 and SuperFX assembly, for bass v14
" Version 0.1
" Maintainer: ARM9

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

syn match bassNumericOperator "[+-/*<>=&|^!#]"

syn match bassNumbers "\%(\$\x\+\|0x\x\+\|\d\+\|%[01]\+\|0b[01]\+\|0o[0-7]\+\)\>"

syn match bassLabel "\<[_a-z][_a-z0-9.]*:\?"

" syn match bassDirective "\<[_a-z]\w*\>"
syn keyword bassDirective arch base constant db dd define defined dl dq dw else endian error evaluate fill global include insert macro map notice origin output print pull push putchar scope variable warning while
" todo: fix if keyword so multiline comment if 0 { works

syn match bassLineComment	"//.*$"
syn region bassComment		start="if 0 {" skip="//.*$" end="}"

syn keyword bassTodo	contained todo fixme xxx danger note notice bug author date

syn region bassString		start="\"" skip=+\\"+ end="\"\|$"
syn region bassStringSingle	start="'" skip=+\\'+ end="'\|$"

so <sfile>:p:h/instr_65816.vim
so <sfile>:p:h/instr_spc700.vim
so <sfile>:p:h/instr_gsu.vim

if version >= 508 || !exists("did_bass_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_bass_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  endif

  HiLink bassNumericOperator Number
  HiLink bassNumbers Number
  
  HiLink bassLabel			Label
  HiLink bassDirective		Identifier
  HiLink bassString			String
  HiLink bassStringSingle	String
  HiLink bassLineComment	Comment
  HiLink bassComment		Comment
  HiLink bassTodo			Debug

  HiLink asm65Reg		Type
  HiLink asm65816Ops	Function

  HiLink asmSpc700Reg	Type
  HiLink asmSpc700Ops	Function

  HiLink asmGsuReg		Type
  HiLink asmGsuOps		Function

  delcommand HiLink
endif

let b:current_syntax="bass"

