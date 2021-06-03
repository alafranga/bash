git.valid() {
	local repo=${1:-.}

	[[ -d $repo/.git ]] && git rev-parse --resolve-git-dir "$repo/.git" &>/dev/null
}
