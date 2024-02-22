-- reset all loaded packages
-- Therefore we can source the configs again to reload all
local load = function(mod)
    package.loaded[mod] = nil
    require(mod)
end
-- Load options
require("options")

-- Load Keymaps
require("keymaps")

-- Load Plugins using Lazy
require("lazy_nvim")

-- Load Colorschema
require("colorschema")

-- Load LSP
require('lsp')

-- Load Autocmd
require('autocmd')

-- Load Plugins Configs
require("configs")
