can.read() {
	local file=${1?${FUNCNAME[0]}: missing argument}; shift

	case $file in
	*/)
		[[ -d "$file" ]] || return 1
		;;
	*)
		[[ -f "$file" ]] || return 1
		;;
	esac

	[[ -r "$file" ]]
}
