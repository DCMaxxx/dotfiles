alias repo='cd ~/Documents/Betclic/iOSBetclicSport'

function deploy() {
  regulation="${1:-fr}"
  branch="`git branchname`"

  read -q "CONFIRM?Releasing \"${regulation}\" on branch \"${branch}\". Continue ? (y/n) "
  echo ""
  if [ ${CONFIRM} = 'y' ]; then
    ./deploy.rb --env beta --backend stage2 --invite "qa,dev" --regulation "${regulation}" --branch "${branch}"
    echo "Done."
  else
    echo "Cancelled by user."
  fi
}

function new_branch() {
  jira=$([ ${1} = "-" ] && echo "NOISSUE" || echo "#IOSSPORT-${1}")
  name=${2// /_}
  kind=${3:-feature}

  branch="${kind}/${jira}_MDC_${name}"
  git checkout -b "${branch}"
}
