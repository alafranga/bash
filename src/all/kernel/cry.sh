# shellcheck disable=2120
cry() {
	if [[ $# -gt 0 ]]; then
		echo -e "W: $*" >&2
	else
		echo "" >&2
	fi
}
