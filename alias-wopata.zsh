# Projects folders
alias woupee='cd ~/Documents/woupee/repo'
alias legrand='cd ~/Documents/legrand/ios/Legrand\ ecat'
alias mcs='cd ~/Documents/mcs/repos/MonCoachSommeil'
alias merck='cd ~/Documents/merck/repo'

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
