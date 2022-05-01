local g = vim.g     -- same as vim `let ...`
local opt = vim.opt -- same as vim `set ...`
-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.clipboard = 'unnamedplus' -- Use system wide clipboard
g.mapleader = "<Space>"
-- colorscheme monokai
-----------------------------------------------------------
-- UI
-----------------------------------------------------------
 opt.cursorline = true      -- Display line a cursor possition
opt.colorcolumn = "80"      -- Line lenght marker at 80 columns
-- opt.textwidth = 80       -- Split line by marker columns
opt.splitright = true       -- Vertical split to the right
opt.splitbelow = true       -- Horizontal split to the bottom
opt.linebreak = true        -- TODO: What do this to ?
opt.termguicolors = true    -- Enable 24-bit RGB colors
-----------------------------------------------------------
-- Search
-----------------------------------------------------------
-- Maybe this one will be a pain (yes this also ignorecase for sed)
-- opt.ignorecase = true       -- Ignore case letters when search
opt.hlsearch = false        -- no search highlight
-----------------------------------------------------------
-- Ruler
-----------------------------------------------------------
opt.number = true
opt.relativenumber = true
-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true         -- Use spaces instead of tabs
opt.shiftwidth = 4           -- Shift 4 spaces when tab
opt.tabstop = 4              -- 1 tab == 4 spaces
opt.smartindent = true       -- Autoindent new lines
-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true           -- Enable background buffers
opt.history = 100           -- Remember N lines in history
opt.lazyredraw = true       -- Faster scrolling
opt.synmaxcol = 240         -- Max column for syntax highlight
opt.updatetime = 700        -- ms to wait for trigger an event
opt.swapfile = false        -- Don't use swapfile
-- TODO
-- opt.expandtab = true
-- opt.nowrap = true
-- opt.laststatus=2
--
opt.completeopt = 'menuone,noinsert,noselect'
