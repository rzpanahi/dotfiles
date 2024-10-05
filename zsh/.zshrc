___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi


alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -la'

alias vi='vim'

alias dev='cd /home/rz/programming/projects'
alias django='cd /home/rz/programming/projects/django'
alias wp='cd /home/rz/wordpress'

alias i='sudo dnf install'

alias cat='bat'

alias dj='python manage.py'

alias neo='neofetch'



# config starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
