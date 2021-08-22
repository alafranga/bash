git.origin() {
	local repo=${1:-.}

	git -C "$repo" config --get remote.origin.url
}
