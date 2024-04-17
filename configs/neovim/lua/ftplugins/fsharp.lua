-- :fennel:1713452596
local fsharp_config = {install_info = {url = "https://github.com/Nsidorenco/tree-sitter-fsharp", branch = "develop", files = {"src/scanner.cc", "src/parser.c"}, generate_requires_npm = true, requires_generate_from_grammar = true}, filetype = "fsharp"}
local function _1_()
  require("ionide").setup({})
  local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
  parser_configs.fsharp = fsharp_config
  return nil
end
return {"Nsidorenco/tree-sitter-fsharp", dependencies = {"ionide/Ionide-vim", "neovim/nvim-lspconfig", "nvim-treesitter/nvim-treesitter"}, lazy = true, event = "VeryLazy", ft = {"fs", "fsproj"}, config = _1_}