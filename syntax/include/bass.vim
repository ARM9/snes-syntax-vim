" Vim syntax file
" Language: Assembler directive highlighting for bass v14
" Version 0.1
" Maintainer: ARM9

syn keyword snesTodo    contained todo fixme xxx warning danger note notice bug author date

syn match snesNumericOperator "[+-/*<>=&|^!#]"

syn match snesNumbers "\%(\$\x\+\|0x\x\+\|\d\+\|%[01]\+\|0b[01]\+\|0o[0-7]\+\)\>"

syn match snesLabel "\<[_a-z][_a-z0-9.]*:\?"

syn keyword snesDirective arch base constant db dd define defined dl dq dw else endian error evaluate fill global float32 float64 include insert macro map notice origin output print pullvar pushvar putchar scope variable warning while
" todo: fix if keyword so multiline comment if 0 { works

syn match   snesComment "//.*$" contains=snesTodo
syn region  snesComment start="if 0 {" skip="//.*$" end="}" contains=snesTodo

syn region snesString       start="\""  skip=+\\"+ end="\"\|$"
syn region snesString       start="'"   skip=+\\'+ end="'\|$"

