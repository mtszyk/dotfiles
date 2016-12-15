nnoremap <C-p> :Denite line<CR>
nnoremap <C-f> :Denite file_mru file_rec<CR>

nnoremap <C-n> :Denite quickfix location_list<CR>

" Change mappings.
call denite#custom#map(
      \ 'insert',
      \ '<C-j>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-k>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)

call denite#custom#map(
    \ 'insert',
    \ '<C-a>',
    \ '<denite:move_caret_to_head>',
    \ 'noremap' )

" Change default prompt
call denite#custom#option('default', 'prompt', '>')

" Change ignore_globs
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
