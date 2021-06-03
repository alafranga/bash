path.base() {
	local -n path_base_=${1?${FUNCNAME[0]}: missing argument}; shift

	path_base_=${path_base_##*/}
}
