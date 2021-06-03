is.present() {
	local -n is_present_=${1?${FUNCNAME[0]}: missing argument}

	[[ ${#is_present_[@]} -gt 0 ]]
}
