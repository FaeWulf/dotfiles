local M = {}

M.defaults = {
  [[ command! BufferKill lua require('functions.bufferkill').buf_kill('bd') ]],
}

M.load = function(commands)
  for _, command in ipairs(commands) do
    vim.cmd(command)
  end
end

return M
