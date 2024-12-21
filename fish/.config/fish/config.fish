fish_add_path /opt/homebrew/bin
fish_add_path ~/.deno/bin

set -gx EDITOR vim
set -gx XDG_CONFIG_HOME ~/.config
set -gx DOCKER_DEFAULT_PLATFORM linux/amd64

alias ls 'eza'
alias cat 'bat --theme=base16'

alias ll 'ls -al'
alias ld 'lazydocker'
alias lg 'lazygit'

alias gc 'git commit'
alias gf 'git fetch'
alias gfo 'git fetch origin'
alias gsb 'git status --branch --short'
alias gcb 'git checkout -b'
alias glol 'git log --oneline'

function reload -d 'Reload shell after making a config change'
    source ~/.config/fish/config.fish
end
