# shellcheck disable=2120
cry() {
	if [[ $# -gt 0 ]]; then
		echo -e >&2 "W: $*"
	else
		echo >&2 ""
	fi
}
