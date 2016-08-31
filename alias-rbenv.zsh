function rbenvinit () {
  if [ $# -eq 1 ]; then
    echo $1 > .ruby-version
  fi

  echo '.gems' > .rbenv-gemsets
  reload
}
