""""""""""""""""""""""""""""""""""""""""
" Config VIM by Guily_MG
" Email guillaume.maugard@gmail.com
" Github :gmaugard
"
""""""""""""""""""""""""""""""""""""""""
	
				
""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""
set autoread			" Recharge un fichier lorsqu'il est modifier ailleurs
set autowrite			" Ecrire dans le fichier quand on quitte le buffer
set encoding=utf-8		" Force l'encodage en UTF-8
set timeoutlen=50		" Mapping delay 
set nocompatible		" Annule la compatibilite avec VI
filetype off


""""""""""""""""""""""""""""""""""""""""
" PlugIn
""""""""""""""""""""""""""""""""""""""""

" Init Vundle
"""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" List Plugin
"""""""""""""""""
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'					" Ajout les commandes Git dans Vim
Plugin 'tpope/vim-surround'					" Permet le remplacements de balise
Plugin 'ctrlpvim/ctrlp.vim'					" Finder pour vim
Plugin 'scrooloose/nerdcommenter'			" Commentaire en raccourcis
Plugin 'scrooloose/nerdtree'				" Affiche un arbre de navigation
Plugin 'scrooloose/syntastic'				" Verificateur de syntaxe
Plugin 'majutsushi/tagbar'					" Affichage des différents tags dans une barre
Plugin 'SirVer/ultisnips'					" Autocompletation
Plugin 'honza/vim-snippets'					" Autocompletation
Plugin 'vim-pandoc/vim-pandoc-syntax'		
Plugin 'vim-airline/vim-airline'			" Ajoute une barre de notifications 
Plugin 'vim-airline/vim-airline-themes'		" Prends en charge des themes pour Airline
Plugin 'bling/vim-bufferline'				" Affiche les buffers dans la bar de commande
Plugin 'nanotech/jellybeans.vim'			" Theme Jelly Beans
Plugin 'airblade/vim-gitgutter'				" Affiche les modifications git
Plugin 'vim-ctrlspace/vim-ctrlspace'

" PlugIn OFF
""""""""""""""""
" Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'tpope/vim-repeat'
" Plugin 'tpope/vim-unimpaired'

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
set title									" Met à jour le titre de la fentre
set number									" Affiche le numeros des lignes
set wrap									" Affiche les lignes trop longues sur plusieurs lignes
syntax on									" Active la coloration syntaxique
syntax enable
set showcmd									" Affiche la bar de commande
set noswapfile								" Disable swapfiles too
set hidden									" Hide buffers instead of closing them
set updatetime=500
set showtabline=0
set laststatus=2								" Affiche la ligne de status
set statusline=%f\ %l\|%c\ %m%=%p%%\ (%Y%R)		" 
set listchars=tab:▸\ ,eol:¬,trail:\•			" Affiche les tabulations, les espaces et les retours chariots

""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""
set tabstop=4			" Definie la longueur d'une tabulation
set softtabstop=0		" Nombre d'espace inserer quand on press tab
set noexpandtab
set smartindent			" Indentation intelligents
set autoindent			" Conserve l'identation sur la ligne
set paste				" Annule l'indentation lors d'un coller

""""""""""""""""""""""""""""""""""""""""
" Recherche
""""""""""""""""""""""""""""""""""""""""
set ignorecase						" Ignore la casse lors de la recherche
set smartcase						" Ignore la casse sauf si il y a une majuscules dans la saisie
set incsearch						" Place le curseur sur le résultat
set hlsearch						" Surligne les resultats de recherche
set backspace=indent,eol,start		" Retour Arriere intelligent	


""""""""""""""""""""""""""""""""""""""""
" Raccourcis
""""""""""""""""""""""""""""""""""""""""
map <C-m> :resize<CR>		" Ctrl-m maximize la fenetre courrante (:help map) 
map <C-b> :bNext<CR>		" Ctrl-b aller au tampon suivant (:help map)
map <C-a> :TagbarToggle<CR>	" F8 pour afficher Tagbar


""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""

let g:airline_theme='jellybeans'    			" Selectionne le theme Jellybeans
let g:airline_powerline_fonts = 1   			" Utilise powerline fonts
let g:airline#extensions#tabline#enabled = 0	" Active smart tab line 

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
