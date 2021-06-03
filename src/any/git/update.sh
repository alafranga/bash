git.update() {
	local repo=${1:-.}

	getting "Updating repository" git -C "$repo" pull -q
}
