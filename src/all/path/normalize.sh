path.normalize() {
	local -n path_normalize_=${1?${FUNCNAME[0]}: missing argument}; shift

	while [[ $path_normalize_ =~ //+ ]]; do
		path_normalize_=${path_normalize_/\/\//\/}
	done
}
