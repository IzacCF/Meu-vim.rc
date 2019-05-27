" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.


set history=5000        " vim history
set ruler	            " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch		    " do incremental searching
set autoread            " auto refresh 


" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif



"=============================
"  * Minhas configurações *
"=============================

set guicursor+=n-v-c:blinkon0 "cursor for gvim

" recarregar o vimrc: Shift+h
" Source the .vimrc 
"nmap <S-h> :source $HOME/.vimrc <BAR> echo "Vimrc recarregado!"<CR>
nmap <S-h> :source ~/.vimrc<CR>


"Mostra tabulações no inicio e espaços no fim das linhas
map ;t /^\t\+\\|\s\+$<cr>

"Remover espaços/tabulações no final das linhas
map ;g <Esc>mz:%s/\s\+$//g<cr>

"Mapeamento para tirar os ^M do final das linhas
map ;m :%s/\r//g


"------------------------------------
"Destacar/Remover formatação (tags) HTML

"Destaca toda a formatação que vai ser removida.
map ;q <Esc>/<[^>.]*><cr>

"Remove a formatação destacada.
map ;d <Esc>mz:%s/<[^>.]*>//g<cr>


"Remover tags  (usadas no VOL)
"Remove destaque
map ;u <Esc>/\<cr>

"Remove a formatação destacada.
map ;c <Esc>mz:nohlsearch<cr>



"----------------------------------------------------
"Inserindo caracteres:  ( )  { }  [ ]

"Insere palavra entre parênteses
vmap <S-g> xi(<esc>pa)<esc>a
nmap <S-g> viw,hb

"Insere palavra entre chaves
vmap <S-k> xi{<esc>pa}<esc>a
nmap <S-k> viw,hb

"Insere palavra entre colchetes
vmap <S-i> xi[<esc>pa]<esc>a
nmap <S-i> viw,hb



"-------------------------------------------------
"Sinais de comentários:

"Para adicionar “ ! “ :   <C-q>
"Para adicionar “ “ “ :   <C-w>


"Função para acrescentar ! para comentar
function! FixExcla()
     :silent! s/^/!/g
endfunction
vmap <C-q> :call FixExcla()<cr>a


"Função para acrescentar " para comentar
function! FixHaspas()
     :silent! s/^/"/g
endfunction
vmap <C-w> :call FixHaspas()<cr>a




"-----------------------------------------------------
"Atalhos para pastas do Dropbox

"Nomeando e salvando arquivos na pasta Dropbox
"Para nomear/salvar dica: nd
"Para nomear/salvar artigo: na

"Pasta: Janeiro
"cabbrev nd browse w ~/Dropbox/Trabalhos/1-Jan/Dicas/
"cabbrev na browse w ~/Dropbox/Trabalhos/1-Jan/Artigos/

"Pasta: Fevereiro
"cabbrev nd browse w ~/Dropbox/Trabalhos/2-Fev/Dicas/
"cabbrev na browse w ~/Dropbox/Trabalhos/2-Fev/Artigos/

"Pasta: Março
"cabbrev nd browse w ~/Dropbox/Trabalhos/3-Mar/Dicas/
"cabbrev na browse w ~/Dropbox/Trabalhos/3-Mar/Artigos/

"Pasta: Abril
"cabbrev nd browse w ~/Dropbox/Trabalhos/4-Abr/Dicas/
"cabbrev na browse w ~/Dropbox/Trabalhos/4-Abr/Artigos/

"Pasta: Maio
cabbrev nd browse w ~/Dropbox/Trabalhos/5-Maio/Dicas/
cabbrev na browse w ~/Dropbox/Trabalhos/5-Maio/Artigos/

"Pasta: Junho
"cabbrev nd browse w ~/Dropbox/Trabalhos/6-Jun/Dicas/
"cabbrev na browse w ~/Dropbox/Trabalhos/6-Jun/Artigos/

"Pasta: Julho
"cabbrev nd browse w ~/Dropbox/Trabalhos/7-Jul/Dicas/
"cabbrev na browse w ~/Dropbox/Trabalhos/7-Jul/Artigos/

"Pasta: Agosto
"cabbrev nd browse w ~/Dropbox/Trabalhos/8-Ago/Dicas/
"cabbrev na browse w ~/Dropbox/Trabalhos/8-Ago/Artigos/

"Pasta: Setembro
"cabbrev nd browse w ~/Dropbox/Trabalhos/9-Set/Dicas/
"cabbrev na browse w ~/Dropbox/Trabalhos/9-Set/Artigos/

"Pasta: Outubro
"cabbrev nd browse w ~/Dropbox/Trabalhos/10-Out/Dicas/
"cabbrev na browse w ~/Dropbox/Trabalhos/10-Out/Artigos/

"Pasta: Novembro
"cabbrev nd browse w ~/Dropbox/Trabalhos/11-Nov/Dicas/
"cabbrev na browse w ~/Dropbox/Trabalhos/11-Nov/Artigos/

"Pasta: Dezembro
"cabbrev nd browse w ~/Dropbox/Trabalhos/12-Dez/Dicas/
"cabbrev na browse w ~/Dropbox/Trabalhos/12-Dez/Artigos/

"Backup
set backup
set backupdir=~/Dropbox/backup-vim


"-----------------------------------------------------
"Comando inválido,  é acionado alarme visual
set visualbell

"Exibe o modo atual de operações do VI (Inserção ou comandos)
set showmode

"Habilita o salvamento automático
set autowriteall

"Fonte
"set guifont=Cantarell\ 13
"set anti gfn=Cantarell\ 13,\ Envy\ Code\ R\ 10
"set guifont=Trebuchet\ 12
"set gfn=Trebuchet\ 12,\ Envy\ Code\ R\ 10
set guifont=Ubuntu\ 13
set anti gfn=Ubuntu\ 13,\ Envy\ Code\ R\ 10
"set guifont=Terminus\ 15
"set gfn=Terminus\ 15,\ Envy\ Code\ R\ 10


"Ajustar tamanho do Vim
set columns=110
set lines=110

"Enumerar linhas
set nu

"GVim minimalista - dica do Leandro
set guioptions=i
"Desabilita mensagem de abertura no Vim/GVim
set shortmess+=I

"Reporta ações com linhas no rodapé
set report=1

"Preserva o histórico do desfazer após o fim da sessão atual salvando-o em um arquivo
set undodir=~/.vim/undobackups
set undofile

"Barra de rolagem
au VimEnter * if line('$') > &lines | set go+=r | else | set go-=r | endif
au VimResized * if line('$') > &lines | set go+=r | else | set go-=r | endif

"===========================
"Estabelecendo cor padrão (zmrok)
"if has("gui_running")
"    colo zmrok
"    let g:zmrok_original = 1
"else
"    colo slate
"endif

colorscheme zmrok
"colorscheme tir_black
"colorscheme maroloccio3
"colorscheme RefractorMyCode
"colorscheme corporation
"colorscheme ir_black
"colorscheme allomancer
"colorscheme blackboard
"colorscheme black
"colorscheme editplus
"colorscheme cobalt
"colorscheme badwolf
"colorscheme stellarized
"colorscheme sidonia
"colorscheme simple-dark
"colorscheme gruvbox
"colorscheme onedark
"colorscheme pablo
"colorscheme battlestation
"colorscheme typewriter-night
"colorscheme greenisgood
"colorscheme monotonic
"colorscheme papirus
"colorscheme hybrid
"colorscheme sidonia
"===========================

"Número de cores disponíveis
set t_Co=256

"Tab sem expandir
set noexpandtab
"Tab complete
imap <tab> <C-n>
"Menu com as opções do Vim usando Tab
set wildmenu

"Destaca linha em uso
set cul

"Sintaxe HTML habilitada
set syntax=html
autocmd BufRead *.htm,*.html,*.txt set syntax=html
autocmd BufNewFile *.htm,*.html,*.txt set syntax=html
"set syntax=txt

"Com quebra de linhas
set linebreak
"Sem quebra de linha
"set nowrap
set listchars=extends:+

"Não permite quebra de linha em menos de 1000 colunas
autocmd FileType text setlocal textwidth=1000

"Mostra linha em edição mais clara
set cursorline

"Salvando configurações do Vim sem reabrir o editor
"autocmd! bufwritepost .vimrc source %

"Habilita o corretor ortográfico
set spell spelllang=pt
au! BufNewFile,BufRead * let b:spell_language="brasileiro"
"Habilitar a identificação automática das palavras erradas
autocmd BufNewFile,BufRead *.txt setl spell spl=pt

"Dicionário para procurar o auto-complemento de palavras
"Inglês
"set dictionary+=/usr/share/dict/words
"Português
set dictionary+=/usr/share/dict/portuguese
"Autocompletar
set complete+=k,.,w,t,i,b,u


"Destaque aos erros ortográficos
hi SpellCap ctermfg=Gray ctermbg=Blue
hi SpellBad ctermfg=Gray ctermbg=DarkRed


"Para definir a quantidade de sugestões do spell
set sps=10

set showcmd    "Show (partial) command in status line.
set showmatch  "Show matching brackets.
set mat=10     "Tempo de destaque
set incsearch  "Incremental search

"Habilita o salvamento automático
set autowrite
set autowrite aw
set autowriteall
"AutoWrite: gravacao automatica a cada alteracao
set aw


"Case insensitive na busca
"set ignorecase ic

"Habilita a mudança de coluna quando movimenta-se através das linhas
set startofline

"Permite Colar
set paste


"==============================
"Exibindo e formatando barra de status:
"nome_do_arquivo   

"set laststatus=2

"set statusline=%t%m%r%h%w\

"set statusline=\ Arquivo:\ %F%m%r%h\ %w\ \ Diretório\ de\ trabalho:\ %r%{getcwd()}%h\ -\ Linha:\ %l\ -\ Coluna:\ %c

set statusline=\ %{HasPaste()}\ Arquivo:\ %F%m%r%h\ %w\ \ Diretório\ de\ trabalho:\ %r%{getcwd()}%h\ -\ Linha:\ %l\ -\ Coluna:\ %c

"Retorna verdadeiro se o modo de copiar e colar estiver ativado
function! HasPaste()
        if &paste
                return 'PASTE MODE ON '
        en
                return 'PASTE MODE OFF '
endfunction


"Powerline
"let g:powerline_pycmd = 'py3'

"Botão direito do mouse
set mousemodel=popup

"Mapeando abreviações
iab linux GNU/Linux
iab Linux GNU/Linux
iab gnome GNOME
iab Gnome GNOME
iab Kde KDE
iab kde KDE
iab latex LaTeX
iab vc você
iab internet Internet
iab software Software
iab softwares Softwares
iab hardware Hardware
iab hardwares Hardwares
iab referencia referência
iab Referencia Referência
iab referencias referências
iab Referencias Referências


"======================

"Ativar plugins
filetype on
filetype plugin on


"Para destacar fechamento de tags
set matchpairs+=<:>

"Fechamento automático de caracteres
"imap { {}<left>
"imap ( ()<left>
"imap [ []<left>

"=====================
"Abas (modo visual)

" 'Ctrl+t' abre uma nova aba
nmap <C-t> :tabnew<CR>

" 'Ctrl + Tab' navegar entre abas
nmap <C-Tab> :tabprevious<CR>

" 'Ctrl+e' fecha a aba corrente
nmap <C-e> :q!<CR>

" 'Ctrl+n' divide a tela verticalmente
nmap <C-n> :vsp<CR>


"Navegador de arquivos

" 'Ctrl+b' abre navegador de arquivos NerdTree
nmap <C-b> :NERDTree<CR>



"----------------------------------------
" Teclas para copiar, recortar e colar

"Copia do Vim para o clipboard
set clipboard=unnamedplus
set clipboard=unnamed

"Ctrl+c - copiar
vmap <C-c> "+yi

"Ctrl+x - recortar
vmap <C-x> "+c

"Ctrl+v colar
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

"Ctrl+a para selecionar tudo
noremap <C-a> gggH<C-O>G
inoremap <C-a> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-a> <C-C>gggH<C-O>G
onoremap <C-a> <C-C>gggH<C-O>G
snoremap <C-a> <C-C>gggH<C-O>G
xnoremap <C-a> <C-C>ggVG

"Ctrl+s para salvar
noremap <C-s> :w!<CR>i
vnoremap <C-s> <C-C>:w!<CR>i
inoremap <C-s> <C-O>:w!<CR>i


"---------------------------------------------------------------
"Permite selecionar com SHIFT + SETA
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel
set selection=exclusive


"===================================
"Teclas de inserção
"-----------------------------------------------------------------
"Teclas:  \ + letra ou número

inoremap \1 <div>
inoremap \2 </div>

inoremap \3 <br/>
inoremap \4 <br/></br>
inoremap \5 <br/><br/><br/>

inoremap \6 [youtube]
inoremap \7 [/youtube]

inoremap \8 $ 
inoremap \9 # 

inoremap \a [code]
inoremap \b [/code]

inoremap \c [code2]
inoremap \d [/code2]

inoremap \e [quote]
inoremap \f [/quote]

inoremap \g [title]
inoremap \h [/title]

inoremap \i [blockquote]
inoremap \j [/blockquote]

inoremap \k [tab]
inoremap \l [/tab]

"E-Mail
inoremap \m <a href="mailto:endereço@email.com">endereço@email.com</a>

inoremap \n <strong>
inoremap \o </strong>

inoremap \p &nbsp;&nbsp;
inoremap \q &lt;
inoremap \r &gt;

inoremap \s <samp>
inoremap \t </samp>

inoremap \u [pre]
inoremap \v [/pre]

inoremap \w &laquo;
inoremap \x &#8594;
inoremap \y &bull;

"inoremap \z

"------------------------------

"Para teclas F2 a F12

"Tecla F2
"Palavra com ênfase
vmap <F2> xi<em><esc>pa</em><esc>a
nmap <F2> viw,hb


"Tecla F3
"Transformar em título
vmap <F3> xi<h1><esc>pa</h1><esc>a
nmap <F3> viw,hb


"Tecla F4
"Selecionar linha
" Posicionar cursor no inicio da palavra e auto-seleciona  
nmap <F4> <Esc>0v$h


"Tecla F5
"Link com título
vmap <F5> :w! ++ff=unix /tmp/links<cr>:'<,'>delete<cr>:r! $HOME/.vim/scripts/get_titulo.py<cr><esc>a
"Links simples
vmap <S-F5> xi<a href="<esc>pa"></a><esc>?><cr>:silent noh<cr>:echo "Digite \"p\" para colar a URL ou \"a\" para digitar..."<cr>


"Tecla F6
"Função para remover tags do fórum [ ] e formatação HTML
function! RemoveFormat()
     :silent! s/\%V\[[^]. ]*]//g
     :silent! s/\%V<[^>]*>//g
endfunction
vmap <F6> :call RemoveFormat()<cr>a


"Tecla F7
"Acrescentar um - na frente da linha
function! ConvertTraco()
    :silent! s/^/- /g
endfunction
vmap <F7> :call ConvertTraco()<cr>a


"Tecla F8 - desabilitada para não conflitar com Guake terminal


"Tecla F9
"Insere aspas duplas
vmap <F9> xi"<esc>pa"<esc>a
nmap <F9> viw,hb


"Tecla F10
"Palavra em negrito ma linha
"vmap <F10> xi<strong><esc>pa</strong><esc>a
vmap <F10> c<strong></strong><esc>F>p
nmap <F10> viw,hb

"Outro formato: negrito várias linhas de uma vez
vmap <S-F10> :s/$/<br\/>/g<cr>$v{<DOWN>x<UP>i<br/><br/><CR><strong><esc>p}x<UP>$4Xxa</strong><DOWN><br/><br/><esc>:silent noh<cr>


"Tecla F11
"Formata imagens
function! FormataImagens()

    "Verifica se o arquivo sendo editado é uma dica ou artigo
    if search("^Título:") == 1 && search("^Descrição") == 2
        let l:tipo = "artigo"
    else
        let l:tipo = "dica"
    endif

    "Extrai o código numérico do nome do arquivo
    let l:codigo = substitute(expand('%:t'), '\(^[0-9]\+\).txt', '\1', '')

    if l:codigo == expand('%:t')
        echoerr "Falha ao extrair o código numérico. O nome do arquivo está correto?"
        return
    endif

    "Vai para o início do arquivo
    execute "normal gg"

    "Inicia o contador
    let l:count = 1

    "Laço para processar as imagens
    while 1

        "Pesquisa pelas marcações de imagens (obs.: case-insensitive)
        if search('^\[\(adicionar\|inserir\|colocar\|imagem\|figura\|favor\|por favor\)\{1\}.*".\+".*\]$\c')

            "Copia o conteúdo da marcação e armazena no registro @a
            execute "normal V\"ax\<up>"

            "Verifica se é uma imagem pequena
            let l:html = 0
            if match(@a, '".\+".\+[pP].\+$') > 0
                let l:html = 1
            endif

            "Extrai o nome da imagem (que deve estar entre aspas)
            let l:imagem = substitute(@a, '.\+"\(.\+\)".\+', '\1', '')

            "Exibe o status na barra de mensagens
            if l:html
                echo l:count . ". Processando a imagem " . l:imagem . " [Pequena]"
            else
                echo l:count . ". Processando a imagem " . l:imagem
            endif

            "Se o shell padrão for o zsh, escapa alguns caracteres
            if &shell == "/bin/zsh"
                let l:imagem = shellescape(l:imagem, '[]?*&!()')
            endif

            "Constrói os argumentos do script get_imagem.sh
            "get_imagem [tipo] [codigo] [html] [imagem]
            "Onde:
            " [tipo]    - artigo ou dica
            " [codigo]  - código numérico da contribuição
            " [html]    - 1 = HTML pequeno; 0 = HTML normal
            " [imagem]  - Nome da imagem (sem aspas)

            let l:comando  = "$HOME/.vim/scripts/get_imagem.sh"
            let l:comando .= " " . l:tipo
            let l:comando .= " " . l:codigo
            let l:comando .= " " . l:html
            let l:comando .= " " . l:imagem

            "Executa o script
            let l:res = system(l:comando)

            "Se ocorrer algum erro, o script retornará 1
            if l:res == 1
                echoerr "Erro: falha ao obter imagem " . l:imagem
                execute "normal \"ap"
                break

            "Se tudo ocorrer bem, colar o código HTML gerado pelo script
            else
                let @a = l:res
                execute "normal \"ap"
            endif

            "E aumenta o contador
            let l:count+=1

        else
            break
        endif

    endwhile

endfunction

nmap <F11> :call FormataImagens()<cr>

"Insere nome de imagens entre aspas e colchetes
vmap <S-F11> xi[imagem "<esc>pa" aqui]<esc>a
nmap <S-F11> viw,hb


"Tecla <F12>
"Aplicando Script autovol.vim
"Tecle: <Esc>+F12
nmap <silent> <F12> :call FormataTudo()<CR>a
"======================================================


"Pesquisa seleção no Google (Googlagem)
"Obs.: substitua 'firefox' pelo seu navegador
if has("unix")
    function! SearchWeb(Term)
        let termo = shellescape(substitute(a:Term, '\n', ' ', 'g'), '#%!')
        :exec ':silent ! firefox http://www.google.com.br/search?q=' .termo. ' &'
    endfunction

    vmap <S-F1> "zy<esc>:call SearchWeb(@z)<cr>
endif


"=======================================================
"As seguintes marcações são válidas para busca de imagens:

"[Adicionar "imagem.png" aqui] -> Não tem diferença entre maiúsculas e minúsculas
"[ADICIONAR "imagem.png" AQUI] -> Só o nome da imagem é que deve estar certo
"[inserir "imagem.png" aqui]
"[figura "imagem.png"]
"[favor adicionar "imagem.png" AQUI]
"[imagem "imagem.png" aqui]
"[COLOCAR A IMAGEM "imagem.png" AQUI]

"Para adicionar imagens pequenas, é só acrescentar "pequena" depois do nome da imagem (ou só um "p" ou "P" mesmo):

"[Adicionar "imagem.png" pequena aqui]
"[INSERIR "imagem.png" PEQUENA]
"[Por favor, Adicione A Imagem "imagem.png" com tamanho pequeno aqui, obrigado]
"[colocar a imagem "imagem.png" p]
"[inserir "imagem.png" P]


"========================================================
"Funções
"-------------------------------------

"Função Lista ordenada em números
function! ConvertList2()
    :silent! s/- //g
    :silent! s/$/<\/li>/g
    :silent! s/^/<li> /g
    :silent! s/<li> <ol><\/li>/<ol>/g
    :silent! s/<li> <\/ol><br\/><\/li>/<\/ol><br\/>\r/g
endfunction

vmap <S-a> xi<ol><cr><esc>p}i</ol><br/><esc>v?<ol><cr> :call ConvertList2()<cr>:silent noh<cr>a
"-------------

"Função Lista ordenada em números a partir de determinado número (5 é exemplo)
function! ConvertList3()
    :silent! s/- //g
    :silent! s/$/<\/li>/g
    :silent! s/^/<li> /g
    :silent! s/<li> <ol start="5"><\/li>/<ol start="5">/g
    :silent! s/<li> <\/ol><br\/><\/li>/<\/ol><br\/>\r/g
endfunction

vmap <S-d> xi<ol start="5"><cr><esc>p}i</ol><br/><esc>v?<ol start="5"><cr> :call ConvertList3()<cr>:silent noh<cr>a
"-------------

"Função Lista ordenada em alfabeto minúsculo
function! ConvertList4()
    :silent! s/- //g
    :silent! s/$/<\/li>/g
    :silent! s/^/<li> /g
    :silent! s/<li> <ol type="a"><\/li>/<ol type="a">/g
    :silent! s/<li> <\/ol><br\/><\/li>/<\/ol><br\/>\r/g
endfunction

vmap <S-e> xi<ol type="a"><cr><esc>p}i</ol><br/><esc>v?<ol type="a"><cr> :call ConvertList4()<cr>:silent noh<cr>a


"-------------------------------------
"Função substituir caracteres estranhos e Tags do VOL
function! FixHTML()
    :silent! %s/&amp;/\&/g
    :silent! %s/&amp;/\&/g
    :silent! %s/&amp;/\&/g
    :silent! %s/&agrave;/à/g
    :silent! %s/&aacute;/á/g
    :silent! %s/&eacute;/é/g
    :silent! %s/&iacute;/í/g
    :silent! %s/&oacute;/ó/g
    :silent! %s/&uacute;/ú/g
    :silent! %s/&ccedil;/ç/g
    :silent! %s/&atilde;/ã/g
    :silent! %s/&otilde;/õ/g
    :silent! %s/&ecirc;/ê/g
    :silent! %s/&ocirc;/ô/g
    :silent! %s/&acirc;/â/g
    :silent! %s/&Agrave;/À/g
    :silent! %s/&Aacute;/Á/g
    :silent! %s/&Eacute;/É/g
    :silent! %s/&Iacute;/Í/g
    :silent! %s/&Oacute;/Ó/g
    :silent! %s/&Uacute;/Ú/g
    :silent! %s/&Ccedil;/Ç/g
    :silent! %s/&Atilde;/Ã/g
    :silent! %s/&Otilde;/Õ/g
    :silent! %s/&Ecirc;/Ê/g
    :silent! %s/&Ocirc;/Ô/g
    :silent! %s/&Acirc;/Â/g
    :silent! %s/&#039;/'/g
    :silent! %s/&quot;/"/g
    :silent! %s/&uuml;/ü/g
    :silent! %s/&reg;/®/g
    :silent! %s/&ordm;/º/g
    :silent! %s/&deg;/°/g
    :silent! %s/&ordf;/ª/g
    :silent! %s/&nbsp;/ /g
    :silent! %s/Â“/"/g
    :silent! %s/Â”/"/g
    :silent! %s/Â’/'/g
    :silent! %s/Â‘/'/g
    :silent! %s/\r//g
    :silent! %s/</\&lt;/g
    :silent! %s/>/\&gt;/g
"Remove tags do VOL
    :silent! s/\%V\[[^]. ]*]//g
    :silent! s/\%V<[^>]*>//g
"Remove o caractere de quebra de linha
    silent! %s/{FONTE}/\&#92;0/g "Converte {FONTE} para \0
    silent! %s/{TEXTO}/\&#92;0/g "Converte {TEXTO} para \0
endfunction
vmap <S-j> :call FixHTML()<cr>a



"-------------------------------------
"Função para acrescentar '$+espaço' antes de comandos
function! FixSifrao()
     :silent! s/^/$ /g
endfunction
vmap <S-l> :call FixSifrao()<cr>a


"-------------------------------------
"Função para acrescentar '#+espaço' antes de comandos
function! FixTrave()
     :silent! s/^/# /g
endfunction
vmap <S-o> :call FixTrave()<cr>a




"---------------------------------------
"Script FormataTudo
"Autor: Leandro

"Salve-o script "autovol.vim" em ~/.vim e acrescente no seu vimrc: source $HOME/.vim/autovol.vim
"Para executar, utilizar o comando:  :call FormataTudo() ou F12
source $HOME/.vim/autovol.vim


"====================================================
  if has("autocmd") && exists("+omnifunc")
autocmd Filetype *
    \ if &omnifunc == "" |
    \ setlocal omnifunc=syntaxcomplete#Complete |
    \ endif
    endif

"-------------------------------------
