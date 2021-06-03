can.overwrite() {
	local file=${1?${FUNCNAME[0]}: missing argument}; shift

	local parent=${file%/*}

	case $file in
	*/)
		parent=${parent%/*}
		;;
	esac

	[[ -d "$parent" ]] && [[ -w "$parent" ]]
}
