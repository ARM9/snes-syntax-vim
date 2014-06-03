" Vim syntax file
" Language: Base rules for snes assembly, for ca65 and wdc816as
" Version 0.1
" Maintainer: ARM9

if exists("b:current_syntax")
  finish
endif

syn match asmNumericOperator "[+-/*<>=&|^!#]"

syn match asmLabel "\%(@\|[~_]\{0,2\}\)[a-z_]\w*:\?"

syn match asmComment ";.*$"

syn keyword asmTodo	contained todo fixme xxx warning danger note notice bug author date

syn region asmString		start="\"" skip=+\\"+ end="\"\|$"
syn region asmStringSingle	start="'" skip=+\\'+ end="'\|$"

syn match asmDirective "\.\w\+\>"

syn match asmNumbers "[<>]\?\(\$\x\+\|\d\+\|%[01]\+\|[0-9]\x*h\)\>"


hi link asmNumericOperator Number
hi link asmNumbers Number

hi link asmLabel        Keyword
hi link asmDirective	Directive
hi link asmString       String
hi link asmStringSingle String
hi link asmComment      Comment
hi link asmTodo         Debug
