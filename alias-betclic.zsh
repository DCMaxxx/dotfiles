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
