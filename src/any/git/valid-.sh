git.valid-() {
	local repo=${1:-.}

	git.valid "$repo" || die "Not a valid Git repository: $repo"
}
