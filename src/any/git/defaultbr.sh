git.defaultbr() {
	local repo=${1:-.}

	git.sane- "$repo"

	git -C "$repo" symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'
}
