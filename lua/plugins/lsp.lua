-- Así es como debe verse en tu archivo .lua de LazyVim
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = {
        settings = {
          typescript = {
            preferences = {
              -- Evita que el servidor busque en carpetas de compilación
              autoImportFileExcludePatterns = {
                "**/node_modules/**",
                "**/dist/**",
                "**/.angular/**",
              },
            },
          },
        },
      },
    },
  },
}
