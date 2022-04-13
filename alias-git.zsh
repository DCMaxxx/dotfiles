alias git_branchname='git rev-parse --abbrev-ref HEAD'

function git_rebase()
{
	git fetch origin && git checkout "$1" && git rebase "origin/${2:-develop}"
}

function git_reset_to_remote()
{
	git fetch origin && git reset --hard origin/`git_branchname`
}

function git_rebase_onto_last_x_commits()
{
	git rebase -i --onto "$1" "`git_branchname`~$2"
}
