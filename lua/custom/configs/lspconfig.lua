local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities
local lspconfig = require("lspconfig")

--you can copy and install these LSPs by pasting below line in command mode:
--MasonInstall clangd css-lsp emmet-language-server html-lsp intelephense jdtls lemminx lua-language-server prettierd xmlformatter typescript-language-server

local servers = {"tsserver","tailwindcss","eslint", "cssls", "clangd", "html", "emmet_language_server"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
