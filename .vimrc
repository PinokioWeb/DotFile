vimrc                                                                                                                                                           buffers 
  " Konfigurasi required dari vundle
   set nocompatible
   filetype plugin indent on
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
  
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Daftar Plugin yang terinstall
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""
   Plugin 'VundleVim/Vundle.vim'
   Plugin 'chriskempson/base16-vim'
   Plugin 'Shougo/neocomplcache.vim'
   Plugin 'vim-airline/vim-airline'
   Plugin 'vim-airline/vim-airline-themes'
   Plugin 'scrooloose/nerdtree'
   Plugin 'scrooloose/nerdcommenter'
   Plugin 'kien/ctrlp.vim'
  "Plugin 'tell-k/vim-autopep8'
   Plugin 'mattn/emmet-vim'
   Plugin 'jiangmiao/auto-pairs'
  
  """""""""""""""""""""""""""""""""""""""""""""""""""""""
  "Khusus plugin colorscheme
  """""""""""""""""""""""""""""""""""""""""""""""""""""""
   Plugin 'Yggdroot/duoduo'
  
   if version > 580
      hi clear
      if exists("syntax_on")
         syntax reset
      endif
   endif
  
  let g:colors_name = "duoduo"
""""""""""""""""""""""""""""""""""""""""""""""""""""
   "Preview color CSS dan Editor Config
  """""""""""""""""""""""""""""""""""""""""""""""""""""""
   Plugin 'ap/vim-css-color'
   Plugin 'editorconfig/editorconfig-vim'
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
 " Braket color ( tanda kurung berwarna )
   Plugin 'luochen1990/rainbow'
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""
  
  " ----- Jinja2 ----""""""""""""""""""""""""""""""""""
   Plugin 'Glench/Vim-Jinja2-Syntax'
  """""""""""""""""""""""""""""""""""""""""""""""""""""""
  
  """""""------ Django Plus ------""""""""""""""""""""""
   Plugin 'tweekmonster/django-plus.vim'
  
  
  """""""""""""""""""""""""""""""""""""""""""""""""""""""
   " Konfigurasi required dari vundle
   """""""""""""""""""""""""""""""""""""""""""""""""""""""
   call vundle#end()
   
   " dokumentasi vundle
   " :PluginList      
   " :PluginInstall
   " :PluginUpdate
   " :PluginSearch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " untuk mengatur
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""
    syntax on
    set background=dark
  "colorscheme nova
   set relativenumber
   set number
   set tabstop=4
   set shiftwidth=3
   set t_Co=256
   set laststatus=2
   set runtimepath^=~/.vim/bundle/ctrlp.vim
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
  
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Konfigurasi plugin yang terinstall
  """""""""""""""""""""""""""""""""""""""""""""""""""""""
   let g:solarized_termcolors = 256
   let g:neocomplcache_enable_at_startup = 1
   let g:airline#extensions#tabline#enabled = 1
   let g:airline#extensions#tabline#fnamemod = ':t'
   let g:airline#extensions#branch#enabled = 1
   let g:airline_powerline_fonts = 1
   let g:airline_theme = 'onedark'
   let g:airline_left_sep = ' '
   let g:airline_right_sep = ' '
   let g:airline#extensions#tabline#rigth_alt_sep = '|'
   
   
   " NERTree konfigurasi
     let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
          \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
           \ "Unmerged"  : "═",
           \ "Deleted"   : "✖",
           \ "Dirty"     : "✗",
           \ "Clean"     : "✔︎",
           \ "Unknown"   : "?"
           \ }
  
   let NERDTreeShowHidden=1
   let g:NERDTreeMinimalUI=1
   let g:NERDTreeDirArrows=1
   let g:NERTreeHighlightCursorLine=1
  
   " -- default --
   " let g:NERDTreeDirArrowExpandable = '▸'
   " let g:NERDTreeDirArrowCollapsible = '▾'
  
   " Emmet setting
   let g:user_emmet_install_global = 0
   autocmd FileType html,css EmmetInstall
  " config emmet
   let g:user_emmet_settings = {
           \    'indentation' : '  '
            \}
   " leader dari emmet
   let g:user_emmet_leader_key=','
   
   
   " Braket color seting
   let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
   
 " Configure Brakcet color
let g:rainbow_conf = {
           \  'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
           \  'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
           \  'operators': '_,_',
           \  'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
           \  'separately': {
           \      '*': {},
           \      'tex': {
           \          'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
           \      },
           \      'lisp': {
           \          'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
           \      },
           \      'vim': {
           \          'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end    =/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
           \      },
           \      'html': {
           \          'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[    -_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
           \      },
           \      'css': 0,
           \  }
           \}
  
   " -- -- Split Navigations -- -- 
   
     nnoremap <C-J> <C-W><C-J>
     nnoremap <C-K> <C-W><C-K>
     nnoremap <C-L> <C-W><C-L>
     nnoremap <C-H> <C-W><C-H>
  
  
  " Untuk Mapping
   map <C-n> :NERDTreeToggle<CR>
   map <S-n> :NERDTreeFocus<cr>
  
  " autoindent
   map <S-i> :gg=<S-g><cr>
   
   imap jj <Esc>
   nmap <leader>b :CtrlPBuffer<cr>
   nmap <leader>r :CtrlPMRUFiles<cr>
  
   nmap <leader>f :bn<cr>
   nmap <leader>d :bp<cr>
   nmap <leader>s :bd<cr>
  
   nmap <leader>cc : NERDComComment<cr>
   nmap <leader>cn : NERDComUncommentLine<cr>
   
   
   
   " Setting autopep8
   "autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
   "autocmd FileType python set equalprg=autopep8\ -
