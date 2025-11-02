-- Инициализация знаков диагностики для всех плагинов
local M = {}

function M.setup()
  local notify = vim.notify
  vim.notify = function(msg, ...)
    if msg:match("sign%-define") then
      return
    end
    notify(msg, ...)
  end

  local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
  if vim.fn.has("nvim-0.10") == 1 then
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = signs.Error,
          [vim.diagnostic.severity.WARN] = signs.Warn,
          [vim.diagnostic.severity.HINT] = signs.Hint,
          [vim.diagnostic.severity.INFO] = signs.Info,
        },
      },
    })
  else
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
  end

  -- Для nvim-tree
  vim.fn.sign_define("NvimTreeDiagnosticErrorIcon", {
    text = signs.Error,
    texthl = "DiagnosticError",
    numhl = "DiagnosticError",
  })
  vim.fn.sign_define("NvimTreeDiagnosticWarnIcon", {
    text = signs.Warn,
    texthl = "DiagnosticWarn",
    numhl = "DiagnosticWarn",
  })
  vim.fn.sign_define("NvimTreeDiagnosticInfoIcon", {
    text = signs.Info,
    texthl = "DiagnosticInfo",
    numhl = "DiagnosticInfo",
  })
  vim.fn.sign_define("NvimTreeDiagnosticHintIcon", {
    text = signs.Hint,
    texthl = "DiagnosticHint",
    numhl = "DiagnosticHint",
  })
  vim.notify = notify
end

return M
