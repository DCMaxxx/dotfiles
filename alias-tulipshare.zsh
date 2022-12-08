alias repo='cd ~/Documents/repo'

function deploy() {
  branch="`git rev-parse --abbrev-ref HEAD`"
  workflow="${1:-to-qa}"

  read -q "CONFIRM?Triggering '${workflow}' for '${branch}'. Continue? (y/n) "
  echo ""

  if [ ${CONFIRM} = 'y' ]; then
    echo "This isn't done yet."
    exit 1;
    echo -n "Done. Build number is #${build_number}. "
    read -q "CONFIRM?Copy build number to clipboard? (y/n) "
    echo ""
    if [ ${CONFIRM} = 'y' ]; then
      echo -n "#${build_number}" | pbcopy
    fi
  else
    echo "Cancelled by user."
  fi
}

function new_branch() {
  if [ "$#" -eq 0 ]; then
     echo "usage: new_branch (jira_number|-) branch_name [kind]"
     return 1
  fi
  jira=$([ ${1} = "-" ] && echo "NOISSUE" || echo "TIOS-${1}")
  name=${2// /_}
  kind=${3:-feature}

  branch="${kind}/#${jira}_MDC_${name}"
  git checkout -b "${branch}"
}

function compare_snapshots() {
  pbpaste | perl -n -e'/"(\/Users\/[^"]+)"/m && system("echo $1 && open $1")'
}