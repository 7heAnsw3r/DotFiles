 " --- Habilitar Resaltado de Sintaxis ---
syntax on                           " Activa el resaltado de sintaxis

" --- Configuraciones Generales ---
set mouse=a                         " Habilitar el uso del mouse
set noerrorbells                    " Deshabilita el sonido de errores
set sw=2                            " Establecer el tamaño de la indentación a 2 espacios
set expandtab                       " Usar espacios en lugar de tabulaciones
set smartindent                     " Habilitar indentación inteligente
set number                          " Muestra los números de línea
set relativenumber                  " Muestra los números relativos de línea
set numberwidth=1                   " Define el ancho de los números de línea
set nowrap                          " Desactiva el ajuste de texto
set noswapfile                      " Desactiva la creación de archivos swap
set nobackup                        " Desactiva la creación de archivos de respaldo
set incsearch                       " Habilita la búsqueda incremental
set ignorecase                      " Ignora mayúsculas/minúsculas en la búsqueda
set smartcase                       " Habilita búsqueda sensible a mayúsculas si se usa una mayúscula
set clipboard=unnamedplus           " Usa el portapapeles del sistema
set encoding=utf-8                  " Establece la codificación de caracteres a UTF-8
set cursorline                      " Resalta la línea actual del cursor
set termguicolors                   " Habilita los colores TrueColor para la terminal
set updatetime=300                  " Reduce el tiempo para mostrar el menú flotante
set completeopt=longest,menuone     " Configura las opciones de autocompletado

" --- Resaltar Columna 120 ---
set colorcolumn=120                 " Resalta la columna 120
highlight ColorColumn ctermbg=0 guibg=lightgrey " Define el color de fondo para la columna resaltada

" --- Manejo de Plugins ---
call plug#begin()                  " Inicia la configuración de plugins

" Temas
Plug 'morhetz/gruvbox'             " Tema gruvbox
Plug 'ayu-theme/ayu-vim'           " Tema ayu
Plug 'joshdick/onedark.vim'        " Tema onedark
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'} " Tema gruvbox-baby

" Plugins de Productividad
Plug 'scrooloose/nerdtree'         " NERDTree para navegación de archivos
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocompletado y LSP con CoC
Plug 'vim-airline/vim-airline'     " Barra de estado Airline
Plug 'vim-airline/vim-airline-themes' " Temas para vim-airline

" Integración de IA
Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' } " Autocompletado con TabNine

" Cierre Automático de Paréntesis y Comillas
Plug 'windwp/nvim-autopairs'      " Cierre automático de paréntesis y comillas

" Integración con Jupyter Notebook
Plug 'jupyter-vim/jupyter-vim'    "Soporte para Jupyter en vim

" Para identar las lineas
Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }

" Autocompletado y Corrección Ortográfica
Plug 'dense-analysis/ale'         " Linter y formateo
Plug 'tpope/vim-fugitive'         " Integración de Git

" Github Copilot
" Plug 'github/copilot.vim'         " Soporte para Github Copilot

" Mejora de Rendimiento
Plug 'pteroctopus/faster.nvim'    " Optimización de Neovim

" Funciones Adicionales
Plug 'nvim-lua/plenary.nvim'      " Utilidades Lua
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' } " Búsqueda avanzada con Telescope
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Resaltado de sintaxis avanzado con Treesitter
Plug 'mfussenegger/nvim-dap'      " Depuración con nvim-dap
Plug 'michaelb/sniprun', {'do': 'sh install.sh'} " Ejecución de fragmentos de código
Plug 'nvim-telescope/telescope-fzf-native.nvim'
Plug 'haya14busa/incsearch.vim'

"More Themes    
Plug 'olimorris/onedarkpro.nvim'
Plug 'yorumicolors/yorumi.nvim'
Plug 'projekt0n/github-nvim-theme'

call plug#end()                    " Finaliza la configuración de plugins

" --- Configuración de Colores y Tema ---
set background=dark                 " Usa un fondo oscuro
let ayucolor="dark"                 " Establece el color de ayu a oscuro
let g:gruvbox_contrast_dark="hard"  " Contraste fuerte en el tema gruvbox
colorscheme onedark                " Aplica el tema gruvbox

" --- Mapeos Generales ---
let mapleader = " "                 " Establece la tecla líder (spacebar)

" Recargar configuración rápidamente
nnoremap <F5> :source $MYVIMRC<CR> " Recarga la configuración de vim al presionar F5

" Deshabilitar teclas de dirección en modo normal
noremap <up> <nop>                 " Deshabilita la flecha arriba
noremap <down> <nop>               " Deshabilita la flecha abajo
noremap <left> <nop>               " Deshabilita la flecha izquierda
noremap <right> <nop>              " Deshabilita la flecha derecha

" --- Atajos Útiles ---
nnoremap <leader>w :w<CR>          " Guardar archivo
nnoremap <leader>e :e $MYVIMRC<CR> " Editar archivo de configuración
nnoremap <leader>q :bdelete<CR>    " Cerrar el buffer actual
nnoremap <leader>t :tabe<CR>       " Abrir nueva pestaña
nnoremap <leader>VS :vsp<CR>      " Abrir split vertical
nnoremap <leader>sp :sp<CR>       " Abrir split horizontal
nnoremap <leader>c :close<CR>     " Cerrar ventana
nnoremap <C-q> :q<CR>             " Salir de vim
nnoremap <C-w> :wq!<CR>           " Guardar y salir
nnoremap <C-a> :qa!<CR>           " Guardar todos los archivos
nnoremap <leader>r :w<CR>:!python3 %<CR> " Ejecutar el archivo Python actual

" --- Atajos para Manejar Pestañas ---
nnoremap <leader>tn :tabnew<CR>    " Crear nueva pestaña
nnoremap <leader>tc :tabclose<CR>  " Cerrar pestaña actual
nnoremap <leader>to :tabonly<CR>   " Cerrar todas las pestañas menos la actual
nnoremap <leader>tm :tabmove       " Mover pestaña (escribir número después)
nnoremap <leader>tl :tabnext<CR>   " Ir a la siguiente pestaña
nnoremap <leader>th :tabprevious<CR> " Ir a la pestaña anterior

" --- Navegar entre pestañas usando líder + números ---
nnoremap <leader>1 1gt             " Ir a la pestaña 1
nnoremap <leader>2 2gt             " Ir a la pestaña 2
nnoremap <leader>3 3gt             " Ir a la pestaña 3
nnoremap <leader>4 4gt             " Ir a la pestaña 4
nnoremap <leader>5 5gt             " Ir a la pestaña 5
nnoremap <leader>6 6gt             " Ir a la pestaña 6
nnoremap <leader>7 7gt             " Ir a la pestaña 7
nnoremap <leader>8 8gt             " Ir a la pestaña 8
nnoremap <leader>9 9gt             " Ir a la pestaña 9
nnoremap <leader>0 :tablast<CR>    " Ir a la última pestaña

" --- Moverse entre Splits ---
nnoremap <C-h> <C-w>h              " Moverse a la ventana izquierda
nnoremap <C-j> <C-w>j              " Moverse a la ventana inferior
nnoremap <C-k> <C-w>k              " Moverse a la ventana superior
nnoremap <C-l> <C-w>l              " Moverse a la ventana derecha

" --- Configuración para NERDTree ---
nnoremap <leader>n :NERDTreeFocus<CR> " Enfocar en NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>    " Alternar visibilidad de NERDTree
nnoremap <C-f> :NERDTreeFind<CR>      " Buscar archivo en NERDTree

" --- Uso de Telescope ---
" Buscar archivos
nnoremap <leader>ff <cmd>Telescope find_files<cr>
" Buscar contenido de archivos
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" Buscar buffers abiertos
nnoremap <leader>fb <cmd>Telescope buffers<cr>
" Buscar ayuda (tags)
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)


" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Configuración para vim-airline
let g:airline_theme='transparent'
let g:airline#extensions#tabline#enabled = 1   " Habilita la línea de pestañas

" Configuración para coc.nvim
let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-pyright',
      \ 'coc-html',
      \ 'coc-clangd',
      \ 'coc-snippets',
      \ 'coc-tabnine'
      \ ]


" 2. Configuración para aceptar sugerencias con Enter (si el menú está visible)
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Si el menú está visible, <Enter> selecciona el ítem resaltado del menú.
" Si no está visible, hace un salto de línea normal.

" Usar <Tab> y <S-Tab> para navegar por el menú de autocompletado
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-n>" : "\<S-Tab>"

"Configuración para abrir/cerrar el menú de autocompletado con Ctrl+Space
inoremap <expr> <C-Space> pumvisible() ? "\<C-e>" : "\<C-x><C-o>"
" Si el menú está visible, Ctrl+Space lo cierra.
" Si el menú no está visible, Ctrl+Space abre el menú Omni.

" Ajustar la altura del menú flotante
let g:coc_popup_menu_height = 10

" Atajos de buffers
nnoremap <leader>k :bnext<CR>
nnoremap <leader>j :bprevious<CR>

" Activar el soporte de Jupyter en vim
"let g:jupyter_automatically_open_on_start = 1
"let g:jupyter_use_existing_server = 1
"let g:jupyter_highlight_cells

" Deshabilitar errores molestos
set shortmess+=c

" Mejorar visualización del menú flotante
set pumheight=10  " Altura máxima del menú de autocompletado

" Configuración extra para TabNine
let g:tabnine#auto_complete=1
let g:tabnine#show_prediction_strength=1


set guifont=JetBrains\ Mono:h14

lua << EOF
require("nvim-autopairs").setup {}
-- Configuración de TabNine
require('tabnine').setup({
  disable_auto_comment = true,            -- Desactiva el comentario automático
  accept_keymap = "<Tab>",                -- Asigna la tecla de autocompletado al Tab
  dismiss_keymap = "<C-]>",               -- Tecla para descartar el autocompletado
  debounce_ms = 800,                      -- Retraso en milisegundos antes de mostrar sugerencias
  suggestion_color = {gui = "#808080", cterm = 244},  -- Configura el color de las sugerencias
  exclude_filetypes = {"TelescopePrompt", "NvimTree"}, -- Excluye algunos tipos de archivo de la sugerencia
  log_file_path = nil,                    -- Puedes configurar la ruta del archivo de log
  ignore_certificate_errors = false,      -- Configura si deseas ignorar los errores de certificado
})

--vim.g.copilot_no_tab_map = false        
--vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

require('mini.indentscope').setup()

require('faster').setup()
require'nvim-treesitter.configs'.setup {
    -- Asegúrate de que ensure_installed tenga los lenguajes que deseas.
    ensure_installed = "all",  -- Puede ser "all", "maintained" o una lista específica de lenguajes

    highlight = {
      enable = true,              -- Habilita el resaltado de sintaxis
      disable = {},               -- Si hay algún lenguaje que no deseas habilitar
      additional_vim_regex_highlighting = false,  -- Para evitar conflictos con otros resaltados
    },
    
    indent = {
      enable = true,              -- Habilita la indentación automática
    },
    
    -- Otras opciones de configuración...
  }


require('telescope').setup{
  defaults = {
    prompt_prefix = "🔍 ",              -- Prefijo de búsqueda
    selection_caret = "👉 ",            -- Indicador de selección
    entry_prefix = "  ",                -- Espaciado de las opciones
    initial_mode = "insert",            -- Modo inicial de búsqueda
    layout_config = {
      width = 0.75,                     -- Ancho de la ventana de búsqueda
      height = 0.75,                    -- Altura de la ventana de búsqueda
    },
    sorting_strategy = "ascending",     -- Orden ascendente de resultados
    file_ignore_patterns = {"node_modules", "*.git", "*.log"}, -- Ignorar carpetas/archivos
    previewer = true,                   -- Vista previa habilitada
    mappings = {
      i = {
        ["<C-u>"] = false,              -- Deshabilitar "Ctrl+u" en modo insert
        ["<C-d>"] = false,              -- Deshabilitar "Ctrl+d" en modo insert
      },
    },
  },
}

-- 🌟 Mapeo de teclas para telescope con emojis
-- Buscar archivos
vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true, silent = true })

-- Buscar en contenido de archivos
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", { noremap = true, silent = true })

-- Buscar buffers abiertos
vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true, silent = true })

-- Buscar ayuda (tags)
vim.api.nvim_set_keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", { noremap = true, silent = true })

-- Buscar archivos recientes
vim.api.nvim_set_keymap('n', '<leader>fr', "<cmd>lua require('telescope.builtin').oldfiles()<cr>", { noremap = true, silent = true })

-- 🧑‍💻 Otras configuraciones y atajos de teclas
vim.api.nvim_set_keymap('n', '<leader>gg', "<cmd>lua require('telescope.builtin').git_files()<cr>", { noremap = true, silent = true }) -- Buscar archivos en git

-- 🚀 Otras funciones opcionales
vim.api.nvim_set_keymap('n', '<leader>ts', "<cmd>lua require('telescope.builtin').treesitter()<cr>", { noremap = true, silent = true }) -- Buscar en la sintaxis de Treesitter
vim.api.nvim_set_keymap('n', '<leader>cs', "<cmd>lua require('telescope.builtin').command_history()<cr>", { noremap = true, silent = true }) -- Ver historial de comandos

-- 🌈 Personalizar color del prompt
vim.cmd([[highlight TelescopePromptNormal guibg=#2e3440 guifg=#d8dee9]])
vim.cmd([[highlight TelescopeResultsNormal guibg=#3b4252 guifg=#eceff4]])
vim.cmd([[highlight TelescopeBorder guifg=#4c566a]])

-- 🎨 Visualización de árboles de sintaxis
vim.api.nvim_set_keymap('n', '<leader>tt', "<cmd>lua require('telescope.builtin').treesitter()<cr>", { noremap = true, silent = true }) -- Visualizar el árbol de sintaxis de un archivo

require'sniprun'.setup({
    display = {"NvimNotify"},
})

  display_options = {
    notification_timeout = 5   -- timeout for nvim_notify output
  }

EOF
