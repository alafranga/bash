flag.mesg() {
	local default=${1?${FUNCNAME[0]}: missing argument}; shift

	local args=()

	while [[ $# -gt 0 ]]; do
		case $1 in
		--)
			shift
			break
			;;
		esac

		shift
	done

	while [[ $# -gt 0 ]]; do
		case $1 in
		--)
			break
			;;
		*)
			args+=("$1")
			;;
		esac

		shift
	done

	local mesg="${args[*]}"

	echo "${mesg:-$default}"
}
