highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "forest"

hi Normal          guifg=#e8e8c8  guibg=#1a2b1e  ctermfg=254  ctermbg=234
hi CursorLine      guibg=#243328  ctermbg=235    cterm=NONE   gui=NONE
hi CursorLineNr    guifg=#7ee86b  guibg=NONE     cterm=NONE
hi LineNr          guifg=#4a755d  guibg=NONE     ctermfg=240
hi StatusLine      guifg=#1a2b1e  guibg=#4a755d  ctermfg=234  ctermbg=65   cterm=NONE gui=NONE
hi StatusLineNC    guifg=#3d5c46  guibg=#243328  ctermfg=240  ctermbg=235  cterm=NONE gui=NONE
hi Visual          guibg=#2b4a35  ctermbg=236
hi ColorColumn     guibg=#3d5c46  ctermbg=237
hi VertSplit       guifg=#3d5c46  guibg=NONE  ctermfg=240
hi SignColumn      guibg=#1a2b1e  ctermbg=234
hi Pmenu           guifg=#e8e8c8  guibg=#243328  ctermfg=254  ctermbg=235
hi PmenuSel        guifg=#1a2b1e  guibg=#7ee86b  ctermfg=234  ctermbg=113
hi Search          guifg=#1a2b1e  guibg=#c8a84a  ctermfg=234  ctermbg=178
hi IncSearch       guifg=#1a2b1e  guibg=#e8c84a  ctermfg=234  ctermbg=220
hi Visual          guifg=#f0c8a0  guibg=#5c3d52  ctermfg=216  ctermbg=53
hi CursorLine      guibg=#2a3828  ctermbg=235    cterm=NONE   gui=NONE
hi MatchParen      guifg=#e8c84a  guibg=#4a3820  ctermfg=220  ctermbg=58

hi Comment         guifg=#8aaa84  ctermfg=108    gui=italic
hi String          guifg=#e8d898  ctermfg=222
hi Number          guifg=#f0c8a0  ctermfg=216
hi Keyword         guifg=#d4b8f0  ctermfg=183
hi Statement       guifg=#d4b8f0  ctermfg=183    gui=NONE     cterm=NONE
hi Function        guifg=#a8d8b0  ctermfg=151
hi Identifier      guifg=#a0c8e8  ctermfg=153    cterm=NONE   gui=NONE
hi Special         guifg=#8be8e8  ctermfg=116
hi Error           guifg=#e89090  guibg=NONE     ctermfg=210
hi Boolean         guifg=#e8e8c8  ctermfg=254
hi Constant        guifg=#e8e8c8  ctermfg=254
hi Type            guifg=#d4c5f0  ctermfg=183    gui=NONE     cterm=NONE
hi PreProc         guifg=#e8b8d8  ctermfg=218
hi NonText         guifg=#aaaaaa  ctermfg=247
hi SpecialKey      guifg=#3d5c46  ctermfg=240
