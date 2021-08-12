git.update-() {
	local repo=${1?${FUNCNAME[0]}: missing argument}; shift

	[[ -w $repo ]] || die "Repository not writable: $repo"

	git.unmodified- "$repo"

	local here there

	here=$(git -C "$repo" rev-parse '@')

	git -C "$repo" fetch -q || die "Error fetching repository: $repo"

	there=$(git -C "$repo" rev-parse '@{u}')

	[[ $here != "$there" ]] || return 1

	git -C "$repo" merge -q || die "Error merging repository: $repo"

	return 0
}
