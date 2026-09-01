-- Function to open a floating window with a command
function OpenFloatingCommand(cmd)
  -- Create a scratch buffer
  local buf = vim.api.nvim_create_buf(false, true)

  -- Set some buffer options (optional)
  -- vim.api.nvim_buf_set_option(buf, 'bufhidden', 'wipe')
  -- vim.api.nvim_buf_set_option(buf, 'filetype', 'man')

  -- Define window dimensions (centered, 80% width/height)
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  -- Open floating window
  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded', -- or 'single', 'double', 'solid', etc.
  })

  -- Run the command in the buffer
  vim.fn.termopen(cmd, {
    on_exit = function()
      -- Close the window when the command exits
      vim.api.nvim_win_close(win, true)
    end,
  })

  -- Set keymaps (optional)
  vim.api.nvim_buf_set_keymap(buf, 'n', '<Esc><Esc>', '<cmd>close<CR>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(buf, 't', '<Esc><Esc>', '<cmd>close<CR>', { noremap = true, silent = true })
end
