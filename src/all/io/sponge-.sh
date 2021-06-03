io.sponge-() {
	local dst=${1?${FUNCNAME[0]}: missing argument}; shift
	local mog=$1

	[[ ! -t 0 ]] || die 'No piped data found'

	local dir
	dir=${dst%/*}

	if [[ -d $dir ]]; then
		[[ -w $dir ]] || die "Directory not writable: $dir"
	else
		mkdir -p "$dir" || "Cannot create directory: $dir"
	fi

	sed 's/^\s*[.]\t//' >"$dst"

	[[ -z ${mog:-} ]] || file.chmog "$mog" "$dst"
}
