git.reset() {
	local repo=${1:-.}

	git -C "$repo" reset --hard
}
