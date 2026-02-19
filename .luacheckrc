-- Luacheck configuration for Neovim config
std = "luajit"
globals = {
  "vim",
  "unpack",
}
read_globals = {
  "vim",
}
max_line_length = 120
ignore = {
  "211", -- Unused variable
  "212", -- Unused argument
  "213", -- Unused loop variable
}

-- Ignore specific files or patterns
files["nvim/lua/plugins/example.lua"] = {
  ignore = {".", "511", "512", "542"}, -- Ignore all warnings in example file
}
files["nvim/lua/config/lazy.lua"] = {
  max_line_length = false, -- Disable line length check for lazy.lua (has long git URL)
}
