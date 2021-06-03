text.fix() {
	local file=${1?${FUNCNAME[0]}: missing argument}; shift
	local mark=${1:-_}

	[[ ! -t 0   ]] || die 'No data available on stdin'
	[[ -f $file ]] || die "No such file: $file"

	text.unfix "$file" "$mark"; {
		echo "# begin $mark"
		cat
		echo "# end $mark"
	} >>"$file"
}
