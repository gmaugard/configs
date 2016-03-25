""""""""""""""""""""""""""""""""""""""""
" Config VIM by Guily_MG
" Email guillaume.maugard@gmail.com
" Github :gmaugard
"
""""""""""""""""""""""""""""""""""""""""

	
""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""
set autoread				" Recharge un fichier lorsqu'il est modifier ailleurs
set autowrite				" Ecrire dans le fichier quand on quitte le buffer
set encoding=utf-8			" Force l'encodage en UTF-8
set ffs=unix,dos,mac			" Utilise unix comme le type de fichier standard
set timeoutlen=50			" Mapping delay 
set nocompatible			" Annule la compatibilite avec VI
set mouse=a				" Active l'utilisation de la souris
set omnifunc=syntaxcomplete#Complete	" Active l'autocompletion


""""""""""""""""""""""""""""""""""""""""
" PlugIn
""""""""""""""""""""""""""""""""""""""""

" Init Vundle
"""""""""""""""""
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" List Plugin
"""""""""""""""""
Plugin 'VundleVim/Vundle.vim'				" Installe vundle
Plugin 'tpope/vim-fugitive'				" Ajout les commandes Git dans Vim
Plugin 'tpope/vim-surround'				" Permet le remplacements de balise
Plugin 'ctrlpvim/ctrlp.vim'				" Finder pour vim
Plugin 'scrooloose/nerdtree'				" Affiche un arbre de navigation
Plugin 'scrooloose/syntastic'				" Verificateur de syntaxe
Plugin 'majutsushi/tagbar'				" Affichage des différents tags dans une barre
Plugin 'vim-airline/vim-airline'			" Ajoute une barre de notifications 
Plugin 'vim-airline/vim-airline-themes'			" Prends en charge des themes pour Airline
Plugin 'nanotech/jellybeans.vim'			" Theme Jelly Beans
Plugin 'airblade/vim-gitgutter'				" Affiche les modifications git
Plugin 'terryma/vim-multiple-cursors'			" Multiple curseurs		
Plugin 'garbas/vim-snipmate'				" Autocompletion
Plugin 'MarcWeber/vim-addon-mw-utils'			" Snipmate - dependance
Plugin 'tomtom/tlib_vim'				" Snipmate - dependance
Plugin 'honza/vim-snippets'				" Snipmate - dependance
Plugin 'junegunn/goyo.vim'
Plugin 'raimondi/delimitmate'

" Plugin 'shougo/vimshell.vim'				" Add vim shell

call vundle#end()
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""
" Theme
""""""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme jellybeans
let g:jellybeans_overrides = {
			\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
			\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
			\              'attr': 'bold' },
			\}
let g:jellybeans_use_term_background_color = 1



""""""""""""""""""""""""""""""""""""""""
" Affichage
""""""""""""""""""""""""""""""""""""""""
syntax on 						" Active la coloration syntaxique
set title						" Met à jour le titre de la fentre
set number						" Affiche le numeros des lignes
set wrap						" Affiche les lignes trop longues sur plusieurs lignes
set showcmd						" Affiche la bar de commande
set noswapfile						" Disable swapfiles too
set hidden						" Hide buffers instead of closing them
set updatetime=500
set showtabline=0
set laststatus=2					" Affiche la ligne de status
set listchars=tab:▸\ ,eol:¬,trail:\•			" Affiche les tabulations, les espaces et les retours chariots
" set statusline=%l\|%c\ %m%=%p%%\ (%Y%R)		
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set splitright


" syntax enable
""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""
 set tabstop=4					" Definie la longueur d'une tabulation
 set shiftwidth=4
 set softtabstop=0				" Nombre d'espace inserer quand on press tab
 set noexpandtab
 set smartindent				" Indentation intelligents
 set autoindent					" Conserve l'identation sur la ligne


""""""""""""""""""""""""""""""""""""""""
" Recherche
""""""""""""""""""""""""""""""""""""""""
set ignorecase				" Ignore la casse lors de la recherche
set smartcase				" Ignore la casse sauf si il y a une majuscules dans la saisie
set incsearch				" Place le curseur sur le résultat
set hlsearch				" Surligne les resultats de recherche
set backspace=indent,eol,start		" Retour Arriere intelligent	


""""""""""""""""""""""""""""""""""""""""
" Raccourcis
""""""""""""""""""""""""""""""""""""""""
map <C-m> :resize<CR>
map <C-k> :CtrlP<CR>
map <C-b> :bn<CR>
map <C-v> :bp<CR>
map <F2> :wincmd w<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>
nnoremap <F6> :set list!<CR>
noremap <F7> :Goyo<CR>

set pastetoggle=<F5>			" F5 active paste mode, annule l'indentation lors d'un coller


""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='base16'    			" Selectionne le theme Jellybeans
let g:airline_powerline_fonts = 1   			" Utilise powerline fonts
let g:airline#extensions#tabline#enabled = 1		" Active smart tab line 
let g:airline#extensions#syntastic#enabled = 1		" Active syntastic 
let g:airline#extensions#tagbar#enabled = 1		" Active tagbar
let g:airline#extensions#whitespace#enabled = 0


""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1				
let g:syntastic_check_on_wq = 0


""""""""""""""""""""""""""""""""""""""""
" CtrlP
""""""""""""""""""""""""""""""""""""""""
set wildignore+=*/tmp/*,*.so,*.swp,*.zip	" Ignore certain type de fichier

""""""""""""""""""""""""""""""""""""""""
" Snipmate
""""""""""""""""""""""""""""""""""""""""
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
