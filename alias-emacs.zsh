alias ne='emacs -nw'

# Cleans all the *~ files (mostly emacs backups)
function clean()
{
    if [ -z "$1" ]; then
	      clean '.'
    else
        find $1 -type f \( \( -name "*~" -or -name ".*~" \) -and \( -not -name "dgph~" -and -not -name "*.swiftdeps~" \) \) -exec rm -fv {} \;
    fi
}
