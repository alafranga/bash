git.where() {
	local path=${1:-}

	if [[ -n $path ]]; then
		[[ -e $path ]] || die "No such path found: $path"

		local d=$path
		[[ -d $path ]] || d=${path%/*}

		pushd "$d" >/dev/null || exit
	fi

	local dir
	dir=$(git rev-parse --git-dir) && dir=$(cd "$dir" && pwd)/ && echo "${dir%%/.git/*}"

	if [[ -n $path ]]; then
		popd >/dev/null || exit
	fi
}
