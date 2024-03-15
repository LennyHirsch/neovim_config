function get_todos()
  -- Initialize an empty list to store the TODO comments
  local todos = {}

  -- Iterate over each line of the buffer and look for TODO comments
  for i, line in ipairs(vim.api.nvim_buf_get_lines(0, 0, -1, true)) do
    if string.match(line, '^%s*//%s*TODO') then
      table.insert(todos, {
        filename = vim.api.nvim_buf_get_name(0),
        lnum = i,
        text = line:gsub('^%s*//%s*', '')
      })
    end
  end

  return todos
end
