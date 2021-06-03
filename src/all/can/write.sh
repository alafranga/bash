can.write() {
	local file=${1?${FUNCNAME[0]}: missing argument}; shift

	[[ -e $file ]] && can.overwrite "$file"
}
