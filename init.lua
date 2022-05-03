-- 设置文本字符编码
vim.o.encoding = "utf-8"

-- 无操作时，交换文件刷写到磁盘的等待毫秒数
vim.o.updatetime = 100

-- 是否在屏幕最后一行显示命令
vim.o.showcmd = true

-- 设定光标上下两侧最少保留的屏幕行数
vim.o.scrolloff = 10

-- 是否显示绝对行号
vim.o.number = true

-- 是否显示相对行号
vim.o.relativenumber = true

-- 是否将 tab 替换为 space
vim.bo.expandtab = false
-- 换行或 >> << 缩进时的 space 数量    
vim.bo.shiftwidth = 4    
-- 一个 tab 占用几个 space    
vim.bo.tabstop = 4    
-- tab 和 space 的混合，和上面 2 个设置成相同即可    
vim.bo.softtabstop = 4

-- 是否开启 xterm 兼容的终端 24 位色彩支持
vim.o.termguicolors = true

-- 是否高亮当前文本行
vim.o.cursorline = true

-- 是否开启语法高亮
vim.o.syntax = "enable"

-- 是否开启在搜索时如果有大写字母，则关闭忽略大小写的选项
vim.o.smartcase = true

-- 是否开启单词拼写检查
vim.o.spell = true

-- 设定单词拼写检查的语言
vim.o.spelllang = "en_us,cjk"

require("core")
