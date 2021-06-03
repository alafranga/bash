path.volatile() {
	local path=${1?${FUNCNAME[0]}: missing argument}; shift

	df -t tmpfs "$path" &>/dev/null
}
