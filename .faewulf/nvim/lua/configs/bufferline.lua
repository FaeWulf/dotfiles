require('bufferline').setup{
   options = {
      numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
      close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
      right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
      left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
      middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
    -- NOTE: this plugin is designed with this icon in mind,
    -- and so changing this is NOT recommended, this is intended
    -- as an escape hatch for people who cannot bear it for whatever reason
      indicator = { style = "underline", icon = "" },
      buffer_close_icon = "",
    -- buffer_close_icon = '',
      modified_icon = "●",
      close_icon = "",
    -- close_icon = '',
      left_trunc_marker = "",
      right_trunc_marker = "",
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local s = " "
        for e, n in pairs(diagnostics_dict) do
          local sym = e == "error" and " "
          or (e == "warning" and " " or "" )
            s = s .. n .. sym
          end
          return s
      end,
      
      offsets = {{filetype = "NvimTree", text = " File Explorer", text_align = "center" }},
   }
}
