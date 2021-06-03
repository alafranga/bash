git.clone() {
	local src=${1?${FUNCNAME[0]}: missing argument}; shift
	local dst=${1?${FUNCNAME[0]}: missing argument}; shift
	local ref=${1:-}

	[[ ! -e $dst ]] || die "Destination already exists: $dst"

	local options=(
		'--single-branch'
		'--quiet'
	)

	[[ -z ${ref:-} ]] || options+=(
		'--branch'
		"$ref"
	)

	getting "Cloning $src" git clone "${options[@]}" "$src" "$dst"
}
