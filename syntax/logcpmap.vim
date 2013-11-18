" Vim syntax file
" Language:     logcpmap
" Maintainer:   Joe Colosimo (jwcxz.com)
" Last Change:  
" Vim URL:  http://www.vim.org/lang.html

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


setlocal iskeyword=a-z,A-Z,48-57,.,_
setlocal isident=a-z,A-Z,48-57,.,_
syn case ignore


syn match logcpmapDFilld "^\s*->[^#]*[^\/]\(\s*#.*\)\?$" contains=logcpmapCommnt
syn match logcpmapDEmpty "^\s*->[^#]*\/\(\s*#.*\)\?$"    contains=logcpmapCommnt

syn match logcpmapCommnt "\s*#.*$"


hi def link logcpmapDEmpty Error
hi def link logcpmapDFilld Identifier

hi def link logcpmapCommnt Comment


noremap <C-N> /^\s*->.*$<CR>:noh<CR>$
noremap <C-P> 0?^\s*->.*$<CR>:noh<CR>$

imap <C-J> <Esc><C-N>A
imap <C-K> <Esc><C-P>A


let b:current_syntax = "logcpmap"

" vim: ts=4 sw=4 :
