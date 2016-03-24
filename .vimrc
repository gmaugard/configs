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
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" List Plugin
"""""""""""""""""
Plugin 'VundleVim/Vundle.vim'			" Installe vundle
Plugin 'tpope/vim-fugitive'			" Ajout les commandes Git dans Vim
Plugin 'tpope/vim-surround'			" Permet le remplacements de balise
Plugin 'ctrlpvim/ctrlp.vim'			" Finder pour vim
Plugin 'scrooloose/nerdcommenter'		" Commentaire en raccourcis
Plugin 'scrooloose/nerdtree'			" Affiche un arbre de navigation
Plugin 'scrooloose/syntastic'			" Verificateur de syntaxe
Plugin 'majutsushi/tagbar'			" Affichage des différents tags dans une barre
Plugin 'vim-airline/vim-airline'		" Ajoute une barre de notifications 
Plugin 'vim-airline/vim-airline-themes'		" Prends en charge des themes pour Airline
Plugin 'nanotech/jellybeans.vim'		" Theme Jelly Beans
Plugin 'airblade/vim-gitgutter'			" Affiche les modifications git
Plugin 'terryma/vim-multiple-cursors'		" Multiple curseurs		
Plugin 'MarcWeber/vim-addon-mw-utils'		" 
Plugin 'tomtom/tlib_vim'			" 
Plugin 'garbas/vim-snipmate'			" Autocompletion

call vundle#end()
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""
" Theme
""""""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme jellybeans


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

" syntax enable
""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""
set tabstop=4					" Definie la longueur d'une tabulation
set softtabstop=0				" Nombre d'espace inserer quand on press tab
set noexpandtab
set smartindent					" Indentation intelligents
set autoindent					" Conserve l'identation sur la ligne


""""""""""""""""""""""""""""""""""""""""
" Recherche
""""""""""""""""""""""""""""""""""""""""
set ignorecase						" Ignore la casse lors de la recherche
set smartcase						" Ignore la casse sauf si il y a une majuscules dans la saisie
set incsearch						" Place le curseur sur le résultat
set hlsearch						" Surligne les resultats de recherche
set backspace=indent,eol,start				" Retour Arriere intelligent	


""""""""""""""""""""""""""""""""""""""""
" Raccourcis
""""""""""""""""""""""""""""""""""""""""
map <C-m> :resize<CR>			" Ctrl-m maximize la fenetre courrante (:help map) 
map <C-n> :bn<CR>			" Ctrl-b aller au buffer suivant (:help map)
map <C-b> :bp<CR>			" Ctrl-b aller au buffer précédent (:help map)
map <F2> :wincmd w<CR>			" F2 pour changer de fenêtre
map <F3> :NERDTreeToggle<CR>		" F3 pour afficher NERDTree
map <F4> :TagbarToggle<CR>		" F4 pour afficher Tagbar
set pastetoggle=<F5>			" Annule l'indentation lors d'un coller
nnoremap <F6> :set list!<CR>		" Affiche les caractère imprimable


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
