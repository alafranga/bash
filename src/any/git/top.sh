git.top() {
	local path=${1:-}

	git.sane- "$path"

	cd "$(git.where "$path")" || exit
}
