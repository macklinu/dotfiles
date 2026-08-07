fish_add_path /opt/homebrew/bin
fish_add_path ~/.deno/bin
fish_add_path ~/.local/bin

set -gx EDITOR nvim
set -gx XDG_CONFIG_HOME ~/.config
set -gx DOCKER_DEFAULT_PLATFORM linux/amd64

alias ls eza

alias ll 'ls -al'
alias lzd lazydocker
alias lzg lazygit
alias opencode 'ocx opencode'

alias gc 'git commit'
alias gf 'git fetch'
alias gfo 'git fetch origin'
alias gsb 'git status --branch --short'
alias gcb 'git checkout -b'
alias glol 'git log --oneline'

function reload -d 'Reload shell after making a config change'
    source ~/.config/fish/config.fish
end

zoxide init fish | source
tv init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# nub
set -gx PATH $HOME/.nub/bin $PATH


# nub shims
set -gx PATH $HOME/.nub/shims $PATH
