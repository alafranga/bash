git.foreach() {
	local path=${1?${FUNCNAME[0]}: missing argument}; shift
	local func=${1?${FUNCNAME[0]}: missing argument}; shift

	[[ -e $path ]] || return 0

	local -a repos=()
	readarray -t repos < <(find -L "$path" -name .git -type d -prune -printf '%h\n')

	[[ ${#repos[@]} -gt 0 ]] || return 0

	if [[ $# -gt 0 ]]; then
		[[ ${1:-} = -- ]] && shift

		waiting "$@"
	fi

	local repo
	for repo in "${repos[@]}"; do
		"$func" "$repo"
	done
}
