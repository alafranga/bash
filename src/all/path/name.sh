path.name() {
	local -n path_name_=${1?${FUNCNAME[0]}: missing argument}; shift

	path_name_=${path_name_##*/}
	path_name_=${path_name_%.*}
}
