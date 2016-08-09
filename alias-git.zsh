# Moves the last X un-pushed commits to a new branch
function git_move_last_commits_to_new_branch()
{
    if [ "$#" -ne 2 ]; then
	     echo "usage: git_move_last_commits_to_new_branch branch_name nubmer_of_commits"
    else
	     git branch $1 && git reset --hard HEAD~$2 && git checkout $1
    fi
}
