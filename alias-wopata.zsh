# Alias to cd to a project's repository
function cdprj()
{
    if [ -z "$1" ]; then
        echo "usage: cdprj project"
    else
        cd ~/"Documents/projects/${1}/repo/"
    fi
}

alias woupee='cdprj woupee'
alias appwm='cdprj appworldmix'
alias megaselfie='cdprj megaselfie'
alias mindful='cdprj mindful'
alias ystudents='cdprj ystudents'

# SSH to the CI machine
alias bamboo='ssh bambooci@panda.local'

# Updates the localized strings
function istr()
{
    if [ -f update-localizations.js ]; then
        echo "Updating strings with update-localizatings.js..." && node update-localizations.js >/dev/null && echo "Strings updated"
    elif [ -f poolstrings.js ]; then
        echo "Updating strings with poolstrings.js..." && node poolstrings.js >/dev/null && echo "Strings updated"
    else
        echo "Neither 'update-localizations.js' nor 'poolstrings.js' exists" && false
    fi
}

# `bonjour` administator
alias bonjour='wget -q http://bonjourmadame.fr -O - | grep ".media.tumblr.com/" | grep "img" | grep "alt=" | cut -d\" -f2 | pbcopy'
alias bonjour_open='bonjour && ~/.bonjour.oascript'
