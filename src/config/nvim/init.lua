function packer_present()
    local f=io.open(os.getenv("HOME") .. "/.local/share/nvim/site/pack/packer/start/packer.nvim","r")
    if f~=nil then io.close(f) return true else return false end
end

require('config/vim');
if packer_present() then 
    require('packer-config');
    require('config/status-line');
    require('config/lsp');
    require('config/nvim-cmp');
    require('config/color');
else
    print("packer not installed, use git command to install packer")
    print("git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim")
end
