# shellcheck disable=2120
should() {
	local args=() rems=()

	while [[ $# -gt 0 ]]; do
		case $1 in
		--)
			shift
			break
			;;
		*)
			args+=("$1")
		esac

		shift
	done

	while [[ $# -gt 0 ]]; do
		case $1 in
		--)
			break
			;;
		*)
			rems+=("$1")
			;;
		esac

		shift
	done

	local mesg=${rems[*]}; [[ -n ${mesg:-} ]] || mesg="Exit code $? is suppressed: ${args[*]:-}"

	eval -- "${args[@]}" || cry "$mesg"
}
