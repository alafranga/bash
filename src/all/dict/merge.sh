dict.merge() {
	local -n dict_merge_lhs_=${1?${FUNCNAME[0]}: missing argument}; shift
	local -n dict_merge_rhs_=${1?${FUNCNAME[0]}: missing argument}; shift

	local key
	for key in "${!dict_merge_rhs_[@]}"; do
		# shellcheck disable=2034
		dict_merge_lhs_[$key]=${dict_merge_rhs_[$key]}
	done
}
