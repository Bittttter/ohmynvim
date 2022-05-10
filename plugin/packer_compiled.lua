-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/bitter/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/bitter/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/bitter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/bitter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/bitter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["coc.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nT\0\0\2\1\3\0\f-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0D\0\1\0X\0\2Ä'\0\2\0L\0\2\0K\0\1\0\0¿\5\17get_location\17is_available“\4\1\0\t\0 \00036\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\6\0005\5\5\0=\5\a\0045\5\t\0005\6\b\0=\6\n\0054\6\3\0005\a\v\0>\a\1\0065\a\f\0>\a\2\6=\6\r\0054\6\3\0005\a\14\0>\a\1\0065\a\16\0>\1\1\a9\b\15\0=\b\17\a>\a\2\6=\6\18\0054\6\3\0005\a\19\0005\b\20\0=\b\21\a5\b\22\0=\b\23\a>\a\1\6=\6\24\0054\6\3\0005\a\25\0>\a\1\0065\a\26\0005\b\27\0=\b\23\a>\a\2\6=\6\28\0055\6\29\0=\6\30\5=\5\31\4B\2\2\0012\0\0ÄK\0\1\0\rsections\14lualine_z\1\3\0\0\rprogress\rlocation\14lualine_y\1\0\3\bmac\aCR\tunix\aLF\bdos\tCRLF\1\2\1\0\15fileformat\18icons_enabled\2\1\3\0\0\rfiletype\rencoding\14lualine_x\fsymbols\1\0\3\tinfo\tÔÅ™ \nerror\tÔÅó \twarn\tÔÅ± \fsources\1\2\0\0\bcoc\1\2\0\0\16diagnostics\14lualine_c\tcond\1\0\0\17is_available\1\2\0\0\17lsp_progress\14lualine_b\1\2\0\0\tdiff\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\1\25component_separators\6|\nsetup\flualine\0\rnvim-gps\frequire\0" },
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nord.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\21colorscheme nord\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-gps"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/opt/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["sqlite.lua"] = {
    load_after = {
      ["telescope-frecency.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/opt/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["telescope-frecency.nvim"] = {
    after = { "sqlite.lua", "telescope-zoxide" },
    load_after = {
      ["telescope-project.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/opt/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    after = { "telescope-project.nvim" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-project.nvim"] = {
    after = { "telescope-frecency.nvim" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/opt/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope-zoxide"] = {
    load_after = {
      ["telescope-frecency.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/opt/telescope-zoxide",
    url = "https://github.com/jvgrootveld/telescope-zoxide"
  },
  ["telescope.nvim"] = {
    after = { "telescope-fzf-native.nvim" },
    loaded = true,
    only_config = true
  },
  vimcdoc = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/vimcdoc",
    url = "https://github.com/yianwillis/vimcdoc"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: coc.nvim
time([[Config for coc.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "coc.nvim")
time([[Config for coc.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nπ\n\0\0\a\0003\0i6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2&\0005\3\n\0005\4\f\0005\5\v\0=\5\r\0045\5\14\0=\5\15\4=\4\16\0036\4\a\0'\6\17\0B\4\2\0029\4\18\0049\4\19\4=\4\20\0036\4\a\0'\6\17\0B\4\2\0029\4\21\0049\4\19\4=\4\22\0036\4\a\0'\6\17\0B\4\2\0029\4\23\0049\4\19\4=\4\24\0036\4\a\0'\6\25\0B\4\2\0029\4\26\4=\4\27\0034\4\0\0=\4\28\0036\4\a\0'\6\25\0B\4\2\0029\4\29\4=\4\30\0035\4\31\0=\4 \0034\4\0\0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\3=\3'\0025\3)\0005\4(\0=\4*\0035\4+\0005\5,\0=\5-\4=\4.\3=\3/\2B\0\2\0016\0\a\0'\2\b\0B\0\2\0029\0000\0'\2*\0B\0\2\0016\0\a\0'\2\b\0B\0\2\0029\0000\0'\0021\0B\0\2\0016\0\a\0'\2\b\0B\0\2\0029\0000\0'\0022\0B\0\2\0016\0\a\0'\2\b\0B\0\2\0029\0000\0'\2.\0B\0\2\1K\0\1\0\vzoxide\fproject\19load_extension\15extensions\rfrecency\20ignore_patterns\1\3\0\0\f*.git/*\f*/tmp/*\1\0\2\19show_unindexed\2\16show_scores\2\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\1\rdefaults\1\0\0\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\vborder\17path_display\1\2\0\0\rabsolute\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\0\1\0\2\20prompt_position\vbottom\18results_width\4≥ÊÃô\3≥Êåˇ\3\1\0\5\rwinblend\3\0\20selection_caret\tÔÅ° \ruse_less\2\19color_devicons\2\18prompt_prefix\nüî≠ \nsetup\14telescope\frequire\29packadd telescope-zoxide$packadd telescope-frecency.nvim#packadd telescope-project.nvim&packadd telescope-fzf-native.nvim\23packadd sqlite.lua\bcmd\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nord.nvim
time([[Config for nord.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\21colorscheme nord\bcmd\bvim\0", "config", "nord.nvim")
time([[Config for nord.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nT\0\0\2\1\3\0\f-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0D\0\1\0X\0\2Ä'\0\2\0L\0\2\0K\0\1\0\0¿\5\17get_location\17is_available“\4\1\0\t\0 \00036\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\6\0005\5\5\0=\5\a\0045\5\t\0005\6\b\0=\6\n\0054\6\3\0005\a\v\0>\a\1\0065\a\f\0>\a\2\6=\6\r\0054\6\3\0005\a\14\0>\a\1\0065\a\16\0>\1\1\a9\b\15\0=\b\17\a>\a\2\6=\6\18\0054\6\3\0005\a\19\0005\b\20\0=\b\21\a5\b\22\0=\b\23\a>\a\1\6=\6\24\0054\6\3\0005\a\25\0>\a\1\0065\a\26\0005\b\27\0=\b\23\a>\a\2\6=\6\28\0055\6\29\0=\6\30\5=\5\31\4B\2\2\0012\0\0ÄK\0\1\0\rsections\14lualine_z\1\3\0\0\rprogress\rlocation\14lualine_y\1\0\3\bmac\aCR\tunix\aLF\bdos\tCRLF\1\2\1\0\15fileformat\18icons_enabled\2\1\3\0\0\rfiletype\rencoding\14lualine_x\fsymbols\1\0\3\tinfo\tÔÅ™ \nerror\tÔÅó \twarn\tÔÅ± \fsources\1\2\0\0\bcoc\1\2\0\0\16diagnostics\14lualine_c\tcond\1\0\0\17is_available\1\2\0\0\17lsp_progress\14lualine_b\1\2\0\0\tdiff\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\1\25component_separators\6|\nsetup\flualine\0\rnvim-gps\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd telescope-fzf-native.nvim ]]
time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
