# shellcheck disable=2120
must() {
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

	local mesg=${rems[*]}; [[ -n ${mesg:-} ]] || mesg="Failed: ${args[*]:-}"

	eval -- "${args[@]}" || die "$mesg"
}
