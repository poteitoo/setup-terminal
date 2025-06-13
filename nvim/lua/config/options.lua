local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Line wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Cursor line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Word
opt.iskeyword:append("-")

-- Mouse
opt.mouse = "a"

-- Backup
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Completion
opt.completeopt = "menuone,noselect"

-- Time
opt.updatetime = 50
opt.timeoutlen = 300

-- Encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- Show hidden characters
opt.list = true
opt.listchars = {
  tab = "→ ",
  eol = "↲",
  nbsp = "␣",
  trail = "•",
  extends = "⟩",
  precedes = "⟨",
}