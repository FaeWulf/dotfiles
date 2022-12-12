local conf = {
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "", -- symbol used between a key and it's label
    group = "[+] ", -- symbol prepended to a group
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 4, 4, 4, 4 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 9, -- spacing between columns
    align = "center", -- align columns left, center or right
  },
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
}

local opts = {
  mode = "n", -- NORMAL mode
  -- prefix: use "<leader>f" for example for mapping everything related to finding files
  -- the prefix is prepended to every mapping part of `mappings`
  prefix = "<leader>", 
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  e = {
    name = "Explorer",
    e = {"<cmd>NvimTreeToggle<CR>", "Toggle Explorer"},
    f = {"<cmd>NvimTreeFindFile<CR>", "Find Find In Explorer"},
    r = {"<cmd>NvimTreeRefresh<CR>", "Refresh Explorer"},
  },
  w = { "<cmd>WhichKey<C-w><CR>", "Window Controls" },
  c = { "<cmd>BufferKill<CR>", "Buffer kill" },
  h = { "<cmd>nohlsearch<CR>", "No Highlight" },
  [';'] = { "<cmd>Alpha<CR>", "Return to Dashboard" },
  j = {
    name = "Buffer Controls",
    k = { "<cmd>BufferLineCycleNext<CR>", "Next Buffer" },
    j = { "<cmd>BufferLineCyclePrev<CR>", "Previous Buffer" },
    l = { "<cmd>BufferLineMoveNext<CR>", "Move Buffer to the Right" },
    h = { "<cmd>BufferLineMovePrev<CR>", "Move Buffer to the Left" },
    e = { "<cmd>BufferLineSortByExtension<CR>", "Sort Buffers by Extension" },
    d = { "<cmd>BufferLineSortByDirectory<CR>", "Sort Buffers by Directory" },
  }
}

require("which-key").setup(conf)
require("which-key").register(mappings, opts)
