file.cp() {
	local src=${1?${FUNCNAME[0]}: missing argument}; shift
	local dst=${1?${FUNCNAME[0]}: missing argument}; shift
	local mog=${1:-}

	local dir=${dst%/*}
	[[ -d $dir ]] || mkdir -p "$dir"

	cp -a "$src" "$dst"

	[[ -z ${mog:-} ]] || file.chmog "$mog" "$dst"
}
