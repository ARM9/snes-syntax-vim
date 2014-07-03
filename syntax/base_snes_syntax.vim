" Vim syntax file
" Language: Base rules for snes assembly, for ca65 and wdc816as
" Version 0.1
" Maintainer: ARM9

if exists("b:current_syntax")
  finish
endif

syn match snesNumericOperator "[+-/*<>=&|^!#]"

syn match snesNumbers "[<>]\?\(\$\x\+\|\d\+\|%[01]\+\|[0-9]\x*h\)\>"

syn match snesDirective "\.\w\+\>"

syn match snesLabel "\(@\|[~_]\{0,2\}\)[a-z_]\w*:\?"

syn match snesLineComment ";.*$"

syn keyword snesTodo	contained todo fixme xxx warning danger note notice bug author date

syn region snesString		start="\"" skip=+\\"+ end="\"\|$"
syn region snesStringSingle	start="'" skip=+\\'+ end="'\|$"



hi link snesNumericOperator Number
hi link snesNumbers Number

hi link snesLabel			Label
hi link snesDirective		PreProc
hi link snesString			String
hi link snesStringSingle	String
hi link snesLineComment		Comment
hi link snesTodo			Debug
