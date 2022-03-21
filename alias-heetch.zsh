alias repo='cd ~/Documents/repo'

function deploy() {
  branch="`git rev-parse --abbrev-ref HEAD`"
  workflow="${1:-to-qa}"

  read -q "CONFIRM?Triggering '${workflow}' for '${branch}'. Continue ? (y/n) "
  echo ""

  if [ ${CONFIRM} = 'y' ]; then
    build_number=`echo curl -s https://app.bitrise.io/app/$BITRISE_APP_ID/build/start.json --data "{\"hook_info\":{\"type\":\"bitrise\",\"build_trigger_token\":\"$BITRISE_BUILD_TRIGGER_TOKEN\"},\"build_params\":{\"branch\":\"${branch}\",\"workflow_id\":\"${workflow}\"},\"triggered_by\":\"curl\"}" | grep -Eo '\"build_number\"\:[0-9]+' | cut -d : -f2`
    echo "Done. Build number is #${build_number}."
  else
    echo "Cancelled by user."
  fi
}

function new_branch() {
  if [ "$#" -eq 0 ]; then
     echo "usage: new_branch (jira_number|-) branch_name [kind]"
     return 1
  fi
  jira=$([ ${1} = "-" ] && echo "NOISSUE" || echo "PGT-${1}")
  name=${2// /_}
  kind=${3:-feature}

  branch="${kind}/passenger/${jira}_${name}"
  git checkout -b "${branch}"
}
