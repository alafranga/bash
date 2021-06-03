dict.marshal() {
	local -n dict_marshal_=${1?${FUNCNAME[0]}: missing argument}
	local name=${2:-$1}

	local pairs=()

	local key
	for key in "${!dict_marshal_[@]}"; do
		pairs+=("['$key']='${dict_marshal_[$key]}'")
	done

	echo -n "$name=("; .join ' ' "${pairs[@]}"; echo ')'
}
