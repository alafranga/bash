string.prefixed() {
	local string=${1?${FUNCNAME[0]}: missing argument}; shift
	local prefix=${1?${FUNCNAME[0]}: missing argument}; shift

	[[ $string =~ ^$prefix ]]
}
