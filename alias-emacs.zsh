alias ne='emacs -nw'

# Cleans all the *~ files (mostly emacs backups)
function clean()
{
    if [ -z "$1" ]; then
	      clean '.'
    else
        find $1 \( -name "*~" -or -name ".*~" \) -exec rm -fv {} \;
    fi
}
