p() {
	[[ $# -gt 0 ]] || return 0

	local -n p_variable_=$1

	echo "${!p_variable_}"

	local key
	for key in "${!p_variable_[@]}"; do
		printf '  %-16s  %s\n' "${key}" "${p_variable_[$key]}"
	done | sort

	echo
}
