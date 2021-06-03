dict.dup() {
	local -n dict_dup_lhs_=${1?${FUNCNAME[0]}: missing argument}; shift
	local -n dict_dup_rhs_=${1?${FUNCNAME[0]}: missing argument}; shift

	local key
	for key in "${!dict_dup_rhs_[@]}"; do
		# shellcheck disable=2034
		dict_dup_lhs_[$key]=${dict_dup_rhs_[$key]}
	done
}
