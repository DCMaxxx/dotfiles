function git_rebase()
{
	git fetch origin && git checkout "$1" && git rebase "origin/${2:-develop}"
}

function git_reset_to_remote()
{
	git fetch origin && git reset --hard origin/`git branchname`
}
