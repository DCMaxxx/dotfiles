if which pyenv > /dev/null; then
export PYENV_ROOT="$HOME/.pyenv"
export PIPX_PATH="$HOME/.local"
export PATH="$PIPX_PATH/bin:$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
fi
