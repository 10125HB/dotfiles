# Stuff for git
parse_git_branch () {
    git branch 2> /dev/null | grep "*" | sed -e 's/* \(.*\)/ (\1)/g'
}

#autoload -U colors && colors
#PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %%{$reset_color%}%% "

# sunburst.vim like colors for prompt
BLACK=$'\033[0m'
RED=$'\033[38;5;160m'
GREEN=$'\033[38;5;71m'
BLUE=$'\033[38;5;105m'
YELLOW=$'\033[38;5;228m'
ORANGE=$'\033[38;5;173m'

function precmd() {
    export PROMPT="%{$RED%}%n%{$BLUE%}@%m%{$BLACK%}:%{$GREEN%}%~%{$YELLOW%}$(parse_git_branch)%{$BLACK%}%# "
}