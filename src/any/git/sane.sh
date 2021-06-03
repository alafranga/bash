git.sane() {
	local repo=${1:-.}

	git -C "$repo" rev-parse --is-inside-work-tree &>/dev/null || return 1
	git -C "$repo" rev-parse --verify HEAD >/dev/null          || return 1
}
