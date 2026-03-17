local M = {}

local function trim(s)
  return s:match("^%s*(.-)%s*$")
end

local function split_row(row)
  local cells = {}
  for cell in row:gmatch("[^|]+") do
    table.insert(cells, trim(cell))
  end
  return cells
end

local function detect_alignment(separator_row)
  local alignments = {}
  for cell in separator_row:gmatch("[^|]+") do
    local trimmed = trim(cell)
    local left = trimmed:match("^:")
    local right = trimmed:match(":$")
    
    if left and right then
      table.insert(alignments, "center")
    elseif right then
      table.insert(alignments, "right")
    elseif left then
      table.insert(alignments, "left")
    else
      table.insert(alignments, "left")
    end
  end
  return alignments
end

local function create_separator(widths, alignments)
  local parts = {}
  for i, width in ipairs(widths) do
    local align = alignments[i] or "left"
    local dashes = string.rep("-", width)
    
    if align == "center" then
      dashes = ":" .. dashes:sub(2, -2) .. ":"
    elseif align == "right" then
      dashes = dashes:sub(1, -2) .. ":"
    elseif align == "left" then
      dashes = ":" .. dashes:sub(2)
    end
    
    table.insert(parts, dashes)
  end
  return "| " .. table.concat(parts, " | ") .. " |"
end

local function pad_cell(text, width, alignment)
  local padding = width - vim.fn.strdisplaywidth(text)
  if padding <= 0 then
    return text
  end
  
  if alignment == "center" then
    local left_pad = math.floor(padding / 2)
    local right_pad = padding - left_pad
    return string.rep(" ", left_pad) .. text .. string.rep(" ", right_pad)
  elseif alignment == "right" then
    return string.rep(" ", padding) .. text
  else
    return text .. string.rep(" ", padding)
  end
end

local function format_row(cells, widths, alignments)
  local formatted = {}
  for i, cell in ipairs(cells) do
    local width = widths[i] or 3
    local alignment = alignments[i] or "left"
    table.insert(formatted, pad_cell(cell, width, alignment))
  end
  return "| " .. table.concat(formatted, " | ") .. " |"
end

function M.format_table()
  local start_line = vim.fn.line(".")
  local end_line = start_line
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  
  while start_line > 1 do
    local line = lines[start_line - 1]
    if not line:match("^%s*|") then
      break
    end
    start_line = start_line - 1
  end
  
  while end_line < #lines do
    local line = lines[end_line]
    if not line:match("^%s*|") then
      break
    end
    end_line = end_line + 1
  end
  
  if start_line >= end_line then
    vim.notify("No markdown table found at cursor position", vim.log.levels.WARN)
    return
  end
  
  local table_lines = {}
  for i = start_line, end_line - 1 do
    table.insert(table_lines, lines[i])
  end
  
  if #table_lines < 2 then
    vim.notify("Invalid markdown table (needs at least header and separator)", vim.log.levels.WARN)
    return
  end
  
  local rows = {}
  local separator_index = nil
  
  for i, line in ipairs(table_lines) do
    local content = line:gsub("^%s+", ""):gsub("%s+$", "")
    if content:match("^|[^|]*%-[^|]*|") and content:match("^|[%-:| ]+|$") then
      separator_index = i
      break
    end
  end
  
  if not separator_index then
    if #table_lines >= 1 then
      local first_row = split_row(table_lines[1])
      local default_separator = "| " .. string.rep("--- | ", #first_row):sub(1, -3)
      table.insert(table_lines, 2, default_separator)
      separator_index = 2
      vim.notify("Separator row created automatically", vim.log.levels.INFO)
    else
      vim.notify("No separator row found in table", vim.log.levels.WARN)
      return
    end
  end
  
  local alignments = detect_alignment(table_lines[separator_index])
  
  for i, line in ipairs(table_lines) do
    if i ~= separator_index then
      table.insert(rows, split_row(line))
    end
  end
  
  local max_cols = 0
  for _, row in ipairs(rows) do
    max_cols = math.max(max_cols, #row)
  end
  
  local widths = {}
  for i = 1, max_cols do
    widths[i] = 3
  end
  
  for _, row in ipairs(rows) do
    for i, cell in ipairs(row) do
      widths[i] = math.max(widths[i], vim.fn.strdisplaywidth(cell))
    end
  end
  
  local formatted_lines = {}
  local row_index = 1
  
  for i = 1, #table_lines do
    if i == separator_index then
      table.insert(formatted_lines, create_separator(widths, alignments))
    else
      table.insert(formatted_lines, format_row(rows[row_index], widths, alignments))
      row_index = row_index + 1
    end
  end
  
  vim.api.nvim_buf_set_lines(0, start_line - 1, end_line - 1, false, formatted_lines)
  vim.notify("Table formatted successfully", vim.log.levels.INFO)
end

return M
