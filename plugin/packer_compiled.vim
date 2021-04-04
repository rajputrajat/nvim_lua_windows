" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "C:\\Users\\rajput\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\rajput\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\rajput\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\rajput\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\rajput\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["completion-nvim"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\completion-nvim"
  },
  ["diagnostic-nvim"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\diagnostic-nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox-material"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp_extensions.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popup.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust.vim"
  },
  ["snippets.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\snippets.nvim"
  },
  ["srcery-vim"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\srcery-vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-commentary"
  },
  ["vim-indentguides"] = {
    loaded = true,
    path = "C:\\Users\\rajput\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-indentguides"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
