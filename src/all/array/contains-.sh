array.contains-() {
	local needle="${1?${FUNCNAME[0]}: missing argument}";             shift
	local -n array_contains_="${1?${FUNCNAME[0]}: missing argument}"; shift

	local element

	for element in "${array_contains_[@]}"; do
		if [[ $element = "$needle" ]]; then
			return 0
		fi
	done

	return 1
}
