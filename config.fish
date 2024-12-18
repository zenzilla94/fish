#          ╔══════════════════════════════════════════════════════════╗
#          ║                       config.fish                        ║
#          ╚══════════════════════════════════════════════════════════╝


# ══ TODO: ═════════════════════════════════════════════════════════════
#
# - [x] Remove "Welcome to fish" message
# - [ ] add kanagawa theme



if status is-interactive
	fish_vi_key_bindings
	atuin init fish | source
    # Commands to run in interactive sessions can go here
end


# ══ Variables: ═

# Set the default editor
set -x EDITOR nvim

set -x VISUAL nvim

set -x BROWSER zen-browser

set -x TERMINAL kitty

set -x SHELL /etc/profiles/per-user/mike/bin/fish


set -x HOME /home/mike
# set config home
set -x XDG_CONFIG_HOME $HOME/.config


# Remove the welcome message
set fish_greeting ""

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
abbr --add nr "sudo nixos-rebuild switch --flake .#zenbook"
abbr --add hm "home-manager switch --flake .#mike@zenbook"

# run nix code from default.nix
abbr --add ni "nix-instantiate --eval --strict"

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
abbr --add ns "nvim -S Session.vim"

# NixVim
abbr --add nxv "nix run ~/dotfiles/nixvim"

# SSH
abbr --add prawn "ssh prawn@chappie"
abbr --add zilla "ssh zilla@mothra"
abbr --add toad "ssh toad@archlinux"

# Python & Virtual Environments
abbr --add p "python"
abbr --add pm "python main.py"
abbr --add d "deactivate"

# Poetry shell environment that works with vim-tmux-navigator
abbr --add ev "source (poetry env info --path)/bin/activate.fish" # haakenlid

# Project Directories
abbr --add zz "cd ~/Projects/Zealot; nix-shell --run 'cd ~/Projects/Zealot/Zealot; exec fish'"
thefuck --alias | source
zoxide init fish | source

# Parent Directories
abbr --add - "cd .."
abbr --add ... "cd .. | cd .."
abbr --add .... "cd .. | cd .. | cd .."
abbr --add ..... "cd .. | cd .. | cd .. | cd .."

# Streamrip
abbr --add --set-cursor fetch "rip search qobuz album '%'"
abbr --add --set-cursor tfetch "rip search tidal album '%'"
abbr --add --set-cursor fetchndb "rip -ndb search qobuz album '%'"
abbr --add --set-cursor tfetchndb "rip -ndb search tidal album '%'"

# Starship
starship init fish | source

# Create custom keybinding to enable "-" to function as "cd .."
# This works, but now I can't use hyphens for setting options
# bind -M insert "-" 'commandline -r "cd .."; commandline -f execute'
