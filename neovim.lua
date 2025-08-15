-- Fluid Glass Theme for Neovim

local M = {}

-- Color palette
local colors = {
  -- Primary colors
  bg = "#0F0F14",
  bg_alt = "#1A1B26",
  fg = "#F8FAFC",
  fg_alt = "#CBD5E1",
  
  -- Glass colors
  glass_bg = "#FFFFFF0D",
  glass_border = "#FFFFFF33",
  glass_surface = "#FFFFFF1F",
  
  -- Accent colors
  blue = "#0EA5E9",
  cyan = "#06B6D4",
  green = "#10B981",
  yellow = "#F59E0B",
  red = "#EF4444",
  purple = "#8B5CF6",
  
  -- UI colors
  border = "#475569",
  comment = "#64748B",
  selection = "#0EA5E94D",
  visual = "#06B6D44D",
  
  -- Semantic colors
  error = "#EF4444",
  warning = "#F59E0B",
  info = "#0EA5E9",
  hint = "#06B6D4",
  success = "#10B981",
}

M.setup = function()
  -- Clear existing highlights
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  vim.o.termguicolors = true
  vim.g.colors_name = "fluid-glass"
  
  local highlights = {
    -- Editor
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.glass_bg },
    FloatBorder = { fg = colors.glass_border, bg = colors.glass_bg },
    Pmenu = { fg = colors.fg, bg = colors.glass_bg },
    PmenuSel = { fg = colors.fg, bg = colors.selection },
    PmenuSbar = { bg = colors.glass_surface },
    PmenuThumb = { bg = colors.blue },
    
    -- Cursor and selection
    Cursor = { fg = colors.bg, bg = colors.blue },
    CursorLine = { bg = colors.glass_bg },
    CursorColumn = { bg = colors.glass_bg },
    Visual = { bg = colors.visual },
    VisualNOS = { bg = colors.visual },
    
    -- Line numbers
    LineNr = { fg = colors.comment },
    CursorLineNr = { fg = colors.blue, bold = true },
    SignColumn = { fg = colors.comment, bg = colors.bg },
    
    -- Search
    Search = { fg = colors.bg, bg = colors.yellow },
    IncSearch = { fg = colors.bg, bg = colors.blue },
    
    -- Splits and status
    VertSplit = { fg = colors.border },
    WinSeparator = { fg = colors.border },
    StatusLine = { fg = colors.fg, bg = colors.glass_bg },
    StatusLineNC = { fg = colors.comment, bg = colors.glass_bg },
    
    -- Tabs
    TabLine = { fg = colors.fg_alt, bg = colors.glass_bg },
    TabLineFill = { bg = colors.bg },
    TabLineSel = { fg = colors.fg, bg = colors.blue },
    
    -- Syntax highlighting
    Comment = { fg = colors.comment, italic = true },
    Constant = { fg = colors.cyan },
    String = { fg = colors.green },
    Character = { fg = colors.green },
    Number = { fg = colors.cyan },
    Boolean = { fg = colors.cyan },
    Float = { fg = colors.cyan },
    
    Identifier = { fg = colors.fg },
    Function = { fg = colors.blue },
    Statement = { fg = colors.purple },
    Conditional = { fg = colors.purple },
    Repeat = { fg = colors.purple },
    Label = { fg = colors.purple },
    Operator = { fg = colors.fg_alt },
    Keyword = { fg = colors.purple },
    Exception = { fg = colors.purple },
    
    PreProc = { fg = colors.yellow },
    Include = { fg = colors.purple },
    Define = { fg = colors.purple },
    Macro = { fg = colors.yellow },
    PreCondit = { fg = colors.yellow },
    
    Type = { fg = colors.yellow },
    StorageClass = { fg = colors.purple },
    Structure = { fg = colors.yellow },
    Typedef = { fg = colors.yellow },
    
    Special = { fg = colors.blue },
    SpecialChar = { fg = colors.blue },
    Tag = { fg = colors.blue },
    Delimiter = { fg = colors.fg_alt },
    SpecialComment = { fg = colors.comment },
    Debug = { fg = colors.red },
    
    -- Diagnostics
    DiagnosticError = { fg = colors.error },
    DiagnosticWarn = { fg = colors.warning },
    DiagnosticInfo = { fg = colors.info },
    DiagnosticHint = { fg = colors.hint },
    
    -- LSP
    LspReferenceText = { bg = colors.glass_surface },
    LspReferenceRead = { bg = colors.glass_surface },
    LspReferenceWrite = { bg = colors.glass_surface },
    
    -- Git
    GitSignsAdd = { fg = colors.success },
    GitSignsChange = { fg = colors.warning },
    GitSignsDelete = { fg = colors.error },
    
    -- Tree-sitter
    ["@variable"] = { fg = colors.fg },
    ["@variable.builtin"] = { fg = colors.red },
    ["@function"] = { fg = colors.blue },
    ["@function.builtin"] = { fg = colors.cyan },
    ["@keyword"] = { fg = colors.purple },
    ["@keyword.function"] = { fg = colors.purple },
    ["@keyword.return"] = { fg = colors.purple },
    ["@string"] = { fg = colors.green },
    ["@type"] = { fg = colors.yellow },
    ["@type.builtin"] = { fg = colors.yellow },
    ["@parameter"] = { fg = colors.fg },
    ["@property"] = { fg = colors.fg },
    ["@constructor"] = { fg = colors.yellow },
    
    -- Telescope
    TelescopeNormal = { fg = colors.fg, bg = colors.glass_bg },
    TelescopeBorder = { fg = colors.glass_border, bg = colors.glass_bg },
    TelescopePromptBorder = { fg = colors.blue, bg = colors.glass_bg },
    TelescopeResultsBorder = { fg = colors.glass_border, bg = colors.glass_bg },
    TelescopePreviewBorder = { fg = colors.glass_border, bg = colors.glass_bg },
    TelescopeSelection = { bg = colors.selection },
    TelescopeSelectionCaret = { fg = colors.blue },
    
    -- NvimTree
    NvimTreeNormal = { fg = colors.fg, bg = colors.glass_bg },
    NvimTreeRootFolder = { fg = colors.blue, bold = true },
    NvimTreeGitDirty = { fg = colors.warning },
    NvimTreeGitNew = { fg = colors.success },
    NvimTreeGitDeleted = { fg = colors.error },
    NvimTreeSpecialFile = { fg = colors.purple },
    NvimTreeIndentMarker = { fg = colors.comment },
    NvimTreeImageFile = { fg = colors.cyan },
    NvimTreeSymlink = { fg = colors.cyan },
    NvimTreeFolderIcon = { fg = colors.blue },
  }
  
  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M