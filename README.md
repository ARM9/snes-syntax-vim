Syntax highlighting for 65816, spc700 and SuperFX assembly, for the vim text editor.

### Installing
##### with Pathogen
Clone this repo into your ~/.vim/bundle directory.
```
git clone https://github.com/ARM9/armv4-syntax-vim.git
```
##### or
Copy the syntax folder to your ~/.vim folder.

### Using
In your .vimrc:
```
au BufNewFile,BufRead *.asm,*.inc set filetype=snes
```
and/or put this line at the top of your assembly file(s):
```
; vim: ft=name
```
Where name is one of the following: 65816 for 65816, spc700 for spc700, gsu for SuperFX and snes for all of the above.

