alias bi='bundle install'
alias be='bundle exec'

alias bepi='bundle exec pod install'
alias bepu='bundle exec pod update'
alias bepru='bundle exec pod repo update'

# Installs bundler and the gems in the Gemfile in the .gems directory
function bilocal()
{
    if [ ! -f .rbenv-gemsets ]; then
        echo '.gems' > .rbenv-gemsets
    fi

    gem install bundler
    bundle install
}
