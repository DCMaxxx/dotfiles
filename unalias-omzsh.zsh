# Removes the aliases that oh-my-zsh adds but I don't want

{
unalias _ # sudo

unalias \... # cd ../..
unalias \.... # cd ../../../
unalias \..... # etc.
unalias \......

unalias -- - # cd -
unalias 1 # cd -1
unalias 2 # etc.
unalias 3
unalias 4
unalias 5
unalias 6
unalias 7
unalias 8
unalias 9

unalias afind # ack -il

unalias d # dirs -d | head -10

unalias globurl # noglob urlglobber

unalias po # popd
unalias pu # pushd
unalias rd # rmdir

unalias run-help # man

unalias which-command # whence
} > /dev/null 2>&1
