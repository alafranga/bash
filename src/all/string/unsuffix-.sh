string.unsuffix-() {
	local -n string_unsuffix_=${1?${FUNCNAME[0]}: missing argument}; shift
	local    suffix=${1?${FUNCNAME[0]}: missing argument};           shift

	if [[ $string_unsuffix_ =~ $suffix$ ]]; then
		string_unsuffix_=${string_unsuffix_%$suffix}

		return 0
	fi

	return 1
}
