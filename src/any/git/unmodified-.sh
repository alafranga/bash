git.unmodified-() {
	local repo=${1:-.}

	git.unmodified "$repo" || die "Repository is not clean: $repo"
}
