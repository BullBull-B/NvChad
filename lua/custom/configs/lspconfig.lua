local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

-- mason ensure install
lspconfig.mason.setup{
  ensure_installed = {"clangd",
    "css-lsp",
    "emmet-language-server",
    "html-lsp",
    "intelephense",
    "jdtls",
    "lemminx",
    "lua-language-server",
    "prettierd",
    "xmlformatter"}
}

-- xml setup
lspconfig.intelephense.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"intelephense", "--stdio"},
  filetypes = {"php"},
  root_dir = lspconfig.util.root_pattern(
    "composer.json", ".git"
  ),
  single_file_support = true
}

-- xml setup
lspconfig.lemminx.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"xml", "xsd", "xsl", "xslt", "svg"},
  root_dir = lspconfig.util.find_git_ancestor,
  single_file_support = true
}
-- java setup
lspconfig.jdtls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"java"},
  root_dir = function ()
    vim.fn.getcwd()
  end,
  single_file_support = true
}

-- c, c++ setup
lspconfig.clangd.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"clangd"},
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_dir = lspconfig.util.root_pattern(
          '.clangd',
          '.clang-tidy',
          '.clang-format',
          'compile_commands.json',
          'compile_flags.txt',
          'configure.ac',
          '.git'
        ),
  single_file_support = true
}

-- css setup
lspconfig.cssls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "vscode-css-language-server", "--stdio" },
  filetypes =  { "css", "scss", "less" },
  root_dir = lspconfig.util.root_pattern(
    'package.json',
    '.git'
  ),
  settings = {
    css = {
      validate = true
    },
    less = {
      validate = true
    },
    scss = {
      validate = true
    }
  },
  single_file_support = true
}

-- html setup
lspconfig.html.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = {"html"},
  init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = true
  },
  root_dir = function ()
    vim.fn.getcwd()
  end,
  settings = {},
  single_file_support = true
}


-- emmet setup
lspconfig.emmet_language_server.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "emmet-language-server", "--stdio" },
  filetypes = { "astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "svelte", "typescriptreact", "vue" },
  root_dir = lspconfig.util.root_pattern(
    'git',
    'root'
  ),
  single_file_support = true
}

