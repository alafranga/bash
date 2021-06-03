path.identical() {
	local actual=${1?${FUNCNAME[0]}: missing argument};   shift
	local expected=${1?${FUNCNAME[0]}: missing argument}; shift

	[[ $(realpath -m "$actual") = $(realpath -m "$expected") ]]
}
