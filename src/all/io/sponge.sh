io.sponge() {
	local dst=${1?${FUNCNAME[0]}: missing argument}; shift
	local mog=$1

	[[ ! -t 0 ]] || die 'No piped data found'

	local dir
	dir=${dst%/*}

	if [[ -d $dir ]]; then
		[[ -w $dir ]] || die "Directory not writable: $dir"
	else
		mkdir -p "$dir" || die "Cannot create directory: $dir"
	fi

	.sponge.() {
		local src=.tmp

		zip.cat >"$src"

		[[ -z ${mog:-} ]] || file.chmog "$mog" "$src"
		mv "$src" "$dst"
	}

	intemp .sponge.
}
