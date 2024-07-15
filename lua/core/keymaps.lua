local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap space as leader key
-- vim.g.mapleader = '<SPACE>'

-- remap
keymap('n', 's', '<Cmd>w<CR>', opts)
keymap('n', 'S', '<Cmd>wq<CR>', opts)
keymap({ 'n', 'v' }, 'K', '5k', opts)
keymap({ 'n', 'v' }, 'J', '5j', opts)
keymap({ 'n', 'v' }, 'H', '0', opts)
keymap({ 'n', 'v' }, 'L', '$', opts)
keymap('n', 'n', 'nzz', opts)
keymap('n', 'N', 'Nzz', opts)
keymap('n', 'nh', '<Cmd>nohlsearch<CR>', opts)
keymap('n', 'ev', '<Cmd>e $MYVIMRC<CR>', opts)
keymap('n', 'sj', '<Cmd>set splitbelow<CR><Cmd>split<CR>', opts)
keymap('n', 'sl', '<Cmd>set nosplitright<CR><Cmd>vsplit<CR>', opts)
keymap('n', '<SPACE>', '<Esc>/<++><CR><Cmd>nohlsearch<CR>c4l', opts)
keymap('n', 'pp', '"+p', opts)
keymap('v', 'yc', '"+y', opts)

-- lsp diagnostic
keymap('n', '<SPACE>e', vim.diagnostic.open_float, opts)
keymap('n', '<SPACE>p', vim.diagnostic.goto_prev, opts)
keymap('n', '<SPACE>n', vim.diagnostic.goto_next, opts)
keymap('n', '<SPACE>l', vim.diagnostic.setloclist, opts)

-- telescope
keymap('n', 'ff', '<Cmd>Telescope find_files<CR>', opts)
keymap('n', 'fh', '<Cmd>Telescope find_files search_dirs=~<CR>', opts)
keymap('n', 'fg', '<Cmd>Telescope git_files<CR>', opts)
keymap('n', 'fo', '<Cmd>Telescope oldfiles<CR>', opts)
keymap('n', 'fb', '<Cmd>Telescope buffers<CR>', opts)
keymap('n', 'fl', '<Cmd>Telescope live_grep<CR>', opts)
keymap('n', 'fd', '<Cmd>Telescope diagnostics<CR>', opts)
keymap('n', 'fp', '<Cmd>Telescope projects<CR>', opts)
keymap('n', 'ft', '<Cmd>TodoTelescope<CR>', opts)

-- nvim-tree
keymap('n', 'ee', '<Cmd>NvimTreeToggle<CR>', opts)

-- lazygit
keymap('n', 'gg', '<Cmd>LazyGit<CR>', opts)

-- gitsigns - hunk
keymap('n', 'hl', '<Cmd>Gitsigns preview_hunk<CR>', opts)
keymap('n', 'hn', '<Cmd>Gitsigns next_hunk<CR>', opts)
keymap('n', 'hp', '<Cmd>Gitsigns prev_hunk<CR>', opts)
keymap('n', 'hr', '<Cmd>Gitsigns reset_hunk<CR>', opts)

-- table-mode
keymap('n', '<M-T>', '<Cmd>TableModeToggle<CR>', opts)
keymap('n', '<M-R>', '<Cmd>TableModeRealign<CR>', opts)

-- 画面分割
keymap('n', 'ss', ':split<Return><C-w>w')
keymap('n', 'sv', ':vsplit<Return><C-w>w')
-- アクティブウィンドウの移動
keymap('n', 'sh', '<C-w>h')
keymap('n', 'sk', '<C-w>k')
keymap('n', 'sj', '<C-w>j')
keymap('n', 'sl', '<C-w>l')
