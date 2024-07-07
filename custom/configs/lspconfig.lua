local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities


local lspconfig = require('lspconfig')

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "volar", "tailwindcss" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- local util = require 'lspconfig.util'
-- local function get_typescript_server_path(root_dir)
--
--   local global_ts = '/usr/local/lib/node_modules/typescript/lib'
--   -- Alternative location if installed as root:
--   -- local global_ts = '/usr/local/lib/node_modules/typescript/lib'
--   local found_ts = ''
--   local function check_dir(path)
--     found_ts =  util.path.join(path, 'node_modules', 'typescript', 'lib')
--     if util.path.exists(found_ts) then
--       return path
--     end
--   end
--   if util.search_ancestors(root_dir, check_dir) then
--     return found_ts
--   else
--     return global_ts
--   end
-- end
--

local mason_registry = require('mason-registry')
local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path() .. '/node_modules/@vue/language-server'


lspconfig.tsserver.setup {
  init_options = {
    plugins = {
      {
        name = '@vue/typescript-plugin',
        location = vue_language_server_path,
        languages = { 'vue' },
      },
    },
  },
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
}

-- No need to set `hybridMode` to `true` as it's the default value
lspconfig.volar.setup {}

-- lspconfig.pyright.setup { blabla}
--
