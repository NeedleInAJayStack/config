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
