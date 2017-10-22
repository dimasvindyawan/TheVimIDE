function muInit#Vimrc()
        call vundle#begin()
        Plugin 'VundleVim/Vundle.vim'
        Plugin 'vim-syntastic/syntastic'
        Plugin 'luochen1990/rainbow'
        Plugin 'Shadowsith/vim-syntax'
        Plugin 'vim-scripts/SingleCompile'
        Plugin 'lifepillar/vim-mucomplete'
        Plugin 'lifepillar/pgsql.vim'
        Plugin 'lifepillar/vim-cheat40'
        Plugin 'octol/vim-cpp-enhanced-highlight'
        "Plugin 'maralla/completor.vim'
        Plugin 'scrooloose/nerdtree'
        call vundle#end()

        "Rainbow brakets
        let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

        "Nerdtree
        map <C-n> :NERDTreeToggle<CR>

        "Syntatisc
        set statusline+=%#warningmsg#
        set statusline+=%{SyntasticStatuslineFlag()}
        set statusline+=%*
        let g:syntastic_always_populate_loc_list = 1
        let g:syntastic_auto_loc_list = 1
        let g:syntastic_check_on_open = 1
        let g:syntastic_check_on_wq = 0

        "SingleCompile
        nmap <F9> :SCCompile<cr>
        nmap <F10> :SCCompileRun<cr>

        "Various Hotkeys
        nmap <F1> :set nu
        nmap <F2> :set nonu
        nmap <F2> :set ai
        nmap <F3> :set noai

        "µComplete
        set completeopt+=menuone
        inoremap <expr> <c-e> mucomplete#popup_exit("\<c-e>")
        inoremap <expr> <c-y> mucomplete#popup_exit("\<c-y>")
        inoremap <expr>  <cr> mucomplete#popup_exit("\<cr>")
        set completeopt+=noselect
        set shortmess+=c   " Shut off completion messages
        set belloff+=ctrlg " If Vim beeps during completion


        "pgsql Plugin
        "let g:sql_type_default = 'pgsql' "If you want use this plugin for all sql files

        "vim-cpp-enhanced-highlight
        let g:cpp_class_scope_highlight = 1
        let g:cpp_member_variable_highlight = 1
        let g:cpp_class_decl_highlight = 1
        let g:cpp_experimental_template_highlight = 1
        let g:cpp_concepts_highlight = 1


        "Vim buildin omnicompletion"
        autocmd FileType php set omnifunc=phpcomplete#CompletePHP
        autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
        autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
        autocmd FileType css set omnifunc=csscomplete#CompleteCSS
endfunction