array.empty() {
	local -n array_empty_=${1?${FUNCNAME[0]}: missing argument}

	[[ ${#array_empty_[@]} -eq 0 ]]
}
