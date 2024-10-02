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

# starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init bash)"
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
