array.join() {
	local IFS=${1?${FUNCNAME[0]}: missing argument}; shift

	echo -n "$*"
}
