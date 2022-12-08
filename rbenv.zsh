# Sets rbenv up

if which rbenv > /dev/null; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init - zsh)"
fi

