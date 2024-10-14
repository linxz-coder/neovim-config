-- define your colorscheme here
local colorscheme = 'monokai_pro'
local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

-- 确保启用真彩色支持
vim.opt.termguicolors = true

-- 自定义插入模式光标设置
vim.cmd([[
  highlight Cursor guifg=bg guibg=fg
  highlight iCursor guifg=bg guibg=white
]])

-- 设置光标样式，修改插入模式
vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver100-iCursor/lCursor,r-cr-o:hor20"
