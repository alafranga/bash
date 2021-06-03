git.sane-() {
	local repo=${1:-.}

	git.sane "$repo" || die "Repository is not sane: $repo"
}
