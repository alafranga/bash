string.unprefix-() {
	local -n string_unprefix_=${1?${FUNCNAME[0]}: missing argument}; shift
	local    prefix=${1?${FUNCNAME[0]}: missing argument};           shift

	if [[ $string_unprefix_ =~ ^$prefix ]]; then
		string_unprefix_=${string_unprefix_#$prefix}

		return 0
	fi

	return 1
}
