bye-() {
	local default=${1?${FUNCNAME[0]}: missing argument}; shift

	local mesg

	while [[ $# -gt 0 ]]; do
		case $1 in
		--)
			shift
			mesg=$*

			break
			;;
		esac

		shift
	done

	bye "${mesg:-$default}"
}
