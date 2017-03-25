" Vim syntax file
" Language: Base rules for snes assembly, for ca65 and wdc816as
" Version 0.1
" Maintainer: ARM9

setlocal iskeyword  +=.,_

syn keyword snesTodo    contained todo fixme xxx warning danger note notice bug author date

syn match snesNumericOperator "[#+-/*<>=&|^~!?]"

syn match snesNumbers "\%(\$\x[0-9a-f_]*\|\d[0-9_]*\|%[01][01_]*\|[0-9][0-9a-f_]*h\)\>"

syn match snesDirective "\.\w\+\>"

syn match snesLabel "\%(@\|[~_]\{0,2\}\)[a-z_]\w*:\?"

syn match snesComment ";.*$" contains=snesTodo

syn region snesString start="\""  skip=+\\"+ end="\"\|$"
syn region snesString start="'"   skip=+\\'+ end="'\|$"

