# Projects folders
alias woupee='~/Documents/woupee/repo'
alias appwm='~/Documents/appworldmix/repo'
alias euralis='~/Documents/euralis-ios/'
alias megaselfie='~/Documents/megaselfie/megaselfie/'
alias mindful='~/Documents/mindful/repo/'

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
