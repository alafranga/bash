text.unfix() {
	local file=${1?${FUNCNAME[0]}: missing argument}; shift
	local mark=${1:-_}

	[[ -f $file ]] || die "No such file: $file"

	grep -qE "#\s+(begin|end)\s+$mark" "$file" || return 0

	[[ -w $file ]] || die "File is not writable: $file"
	sed -i "/begin $mark/,/end $mark/d" "$file"
}
