# Projects folders
alias -g Woupee='~/Documents/woupee/repo'
alias -g Legrand='~/Documents/legrand/repo/Legrand\ ecat'
alias -g Mcs='cd ~/Documents/mcs/repo/MonCoachSommeil'
alias -g Merck='cd ~/Documents/merck/repo'
alias -g Appwm='cd ~/Documents/appworldmix/repo'

# SSH to the CI machine
alias bamboo='ssh bambooci@bamboo'

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

# Removes all the old crashlytics bundles
alias clear_fabric_archives='rm -rf ~/Library/Caches/com.crashlytics.mac'
