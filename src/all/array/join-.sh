array.join-() {
	local IFS=${1?${FUNCNAME[0]}: missing argument};            shift
	local -n array_join_=${1?${FUNCNAME[0]}: missing argument}; shift

	echo -n "${array_join_[*]}"
}
