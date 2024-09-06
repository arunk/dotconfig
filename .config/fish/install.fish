if not test -d ~/.config/omf 
    curl -L https://get.oh-my.fish | fish
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    fisher install PatrickF1/fzf.fish

    omf install bobthefish
    omf install https://github.com/jorgebucaran/fish-nvm
    omf install https://github.com/acomagu/fish-async-prompt
    omf install https://github.com/oh-my-fish/plugin-extract

    set -g theme_powerline_fonts yes
    set -g theme_nerd_fonts yes
    set -g theme_display_git_stashed_verbose yes
    set -g theme_display_git_master_branch yes
    set -g theme_display_git_untracked yes
    set -g theme_display_git_dirty yes
    set -g theme_display_nvm yes
    set -g theme_display_virtualenv yes
    set -g theme_color_scheme zenburn
end
