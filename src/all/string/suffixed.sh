string.suffixed() {
	local string=${1?${FUNCNAME[0]}: missing argument}; shift
	local suffix=${1?${FUNCNAME[0]}: missing argument}; shift

	[[ $string =~ $suffix$ ]]
}
