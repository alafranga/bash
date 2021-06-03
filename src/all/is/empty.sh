is.empty() {
	local -n is_empty_=${1?${FUNCNAME[0]}: missing argument}

	[[ ${#is_empty_[@]} -eq 0 ]]
}
