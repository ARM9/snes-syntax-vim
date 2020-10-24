Syntax highlighting for 65816, spc700 and SuperFX assembly, for the vim text editor.

### Installing
Copy /syntax into ~/.vim
__or with Pathogen__
Clone this repo into your ~/.vim/bundle directory.
```
git clone https://github.com/ARM9/snes-syntax-vim.git
```

### Using
In your .vimrc:
```
au BufNewFile,BufRead *.asm,*.inc set filetype=snes
```
and/or put this line near the top or bottom of your assembly file(s):
```
; vim: ft=name
```
Where name is one of the following: 65816, spc700, gsu (for SuperFX) and snes
for all of the above for ca65, or snes_bass for bass.

