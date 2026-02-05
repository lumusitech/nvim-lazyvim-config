-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function smart_angular_toggle(direction)
  local file_path = vim.fn.expand("%:p:r"):gsub("%.spec$", "")
  local extension = vim.fn.expand("%:e")
  -- Detectar si es un archivo de pruebas para tratarlo como una extensión única
  if vim.fn.expand("%"):match(".spec.ts$") then
    extension = "spec.ts"
  end

  local alt_extensions = { "ts", "html", "scss", "css", "spec.ts" }

  local function file_exists(path)
    local f = io.open(path, "r")
    if f then
      f:close()
      return true
    end
    return false
  end

  for i, ext in ipairs(alt_extensions) do
    if extension == ext then
      local step = direction == "next" and 1 or -1
      for j = 1, #alt_extensions do
        local idx = (i + (j * step) - 1) % #alt_extensions + 1
        local next_ext = alt_extensions[idx]

        local target
        if next_ext == "spec.ts" then
          target = file_path .. ".spec.ts"
        else
          target = file_path .. "." .. next_ext
        end

        if file_exists(target) and next_ext ~= extension then
          vim.cmd("edit " .. target)

          -- Notificación estética
          local level = next_ext == "spec.ts" and vim.log.levels.WARN or vim.log.levels.INFO
          vim.notify("Jump to: " .. next_ext:upper(), level, {
            title = "Angular Navigator",
            timeout = 1000, -- Desaparece rápido para no molestar
          })
          return
        end
      end
    end
  end
end

-- Atajos personalizados: j de "Jump"
vim.keymap.set("n", "<leader>j", function()
  smart_angular_toggle("next")
end, { desc = "Angular Jump: Siguiente" })
vim.keymap.set("n", "<leader>J", function()
  smart_angular_toggle("prev")
end, { desc = "Angular Jump: Anterior" })
