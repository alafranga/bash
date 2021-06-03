file.ln() {
	local src=${1?${FUNCNAME[0]}: missing argument}; shift
	local dst=${1?${FUNCNAME[0]}: missing argument}; shift
	local mog=${1:-}

	local dir=${dst%/*}
	[[ -d $dir ]] || mkdir -p "$dir"

	src=$(realpath -m --relative-base "${dst%/*}" "$src")
	ln -sf "$src" "$dst"

	[[ -z ${mog:-} ]] || file.chmog "$mog" "$dst"
}
