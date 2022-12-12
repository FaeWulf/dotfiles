local init_path = debug.getinfo(1, "S").source:sub(2)
local base_dir = init_path:match("(.*[/\\])"):sub(1, -2)

if not vim.tbl_contains(vim.opt.rtp:get(), base_dir) then
  vim.opt.rtp:append(base_dir)
end

require('plugins').setup()
require 'options'
require 'mappings'

local commands = require "commands"
commands.load(commands.defaults)



require 'configs.misc'
require 'configs.feline'
require 'configs.bufferline'
require 'configs.treelua'
require 'configs.alpha'
require 'configs.indent'
require 'configs.treesitter'
require 'configs.comment'
require 'configs.whichkey'
require 'configs.lsp'
require 'configs.colorizer'
