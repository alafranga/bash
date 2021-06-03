git.switch() {
	local repo=${1?${FUNCNAME[0]}: missing argument}; shift
	local branch=${1:-}

	[[ -n $branch ]] || branch=$(git.defaultbr "$repo")

	git -C "$repo" checkout --quiet "$branch"
}
