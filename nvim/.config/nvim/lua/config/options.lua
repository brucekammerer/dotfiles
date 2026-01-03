-- Colorscheme and transparency
-- vim.cmd.colorscheme('habamax')
-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'None' })
-- vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'None' })
-- vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'None' })

-- Basic options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.sidescrolloff = 8
vim.opt.spelllang = { 'en', 'ru' }

-- Setting up Russian Language
vim.cmd('set keymap=russian-jcukenwin')
vim.cmd('set iminsert=0')
vim.cmd('set imsearch=-1')

-- Indentation
vim.opt.list = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Visuals
vim.opt.termguicolors = true
vim.opt.colorcolumn = '80'
vim.opt.showmode = false

-- File handling
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.autoread = true

-- Undo directory
local undodir = vim.fn.expand('~/.local/share/nvim/undodir')
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, 'p')
end
vim.opt.undodir = undodir

