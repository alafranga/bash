git.unmodified() {
	local repo=${1:-.}

	git -C "$repo" rev-parse --verify HEAD >/dev/null &&
	git -C "$repo" update-index -q --ignore-submodules --refresh &&
	git -C "$repo" diff-files --quiet --ignore-submodules &&
	git -C "$repo" diff-index --cached --quiet --ignore-submodules HEAD --
}
