array.present() {
	local -n array_present_=${1?${FUNCNAME[0]}: missing argument}

	[[ ${#array_present_[@]} -gt 0 ]]
}
