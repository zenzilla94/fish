if status is-interactive
	fish_vi_key_bindings
	atuin init fish | source
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2024-04-27 02:35:12
set PATH $PATH /home/mike/.local/bin /usr/bin /usr/local/bin /usr/local/sbin /home/mike/.local/share/nvim/mason/bin /home/mike/.local/share/nvim/mason/packages/python-lsp-server/venv/bin

# Nix Path
set NIX_PATH /home/mike/dotfiles/nixos/configuration.nix

# Abbreviations

# List Directory Contents
abbr --add ll "ls -l"
abbr --add la "ls -a"

# List File Contents
abbr --add cat "bat"

# File & Directory Operations
abbr --add cp "cp -v"
abbr --add mv "mv -v"
abbr --add --set-cursor rm "rm -%"
abbr --add mkdir "mkdir -pv"

# Locate
abbr --add locate "sudo plocate"

# Networking
abbr --add ping "ping -c 5"

# Pacman
# abbr --add pac "sudo pacman"

# Nix
# abbr --add nc "sudo nix run ~/dotfiles/nixvim /home/mike/dotfiles/nixos/configuration.nix"
abbr --add nr "sudo nixos-rebuild switch --flake /home/mike/dotfiles/nixos"

# Quick Access
abbr --add c "clear"
abbr --add h "history"

# Git Commands
abbr --add gs "git status"
abbr --add gp "git pull"
abbr --add ga "git add"
abbr --add --set-cursor gc 'git commit -m "%"'
abbr --add gco "git checkout"
abbr --add gd "git diff"
abbr --add gpa "git push codeberg main && git push github main"

# Lazygit
abbr --add lg "lazygit"

# Neovim
abbr --add nv "nvim ."
abbr --add v "nvim"
abbr --add vi "nvim"
abbr --add vim "nvim"

# NixVim
abbr --add nxv "nix run ~/dotfiles/nixvim"

# SSH
abbr --add prawn "ssh prawn@chappie"
abbr --add zilla "ssh zilla@mothra"
abbr --add toad "ssh toad@archlinux"

# Python & Virtual Environments
abbr --add p "python"
abbr --add d "deactivate"
abbr --add dcd "deactivate | cd"

# Project Directories
abbr --add zz "cd ~/Projects/Zealot; nix-shell --run 'cd ~/Projects/Zealot/Zealot; exec fish'"
thefuck --alias | source
zoxide init fish | source

# Parent Directories
abbr --add - "cd .."
abbr --add ... "cd .. | cd .."
abbr --add .... "cd .. | cd .. | cd .."
abbr --add ..... "cd .. | cd .. | cd .. | cd .."

# Create custom keybinding to enable "-" to function as "cd .."
# This works, but now I can't use hyphens for setting options
# bind -M insert "-" 'commandline -r "cd .."; commandline -f execute'
