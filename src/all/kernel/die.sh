die() {
	if [[ $# -gt 0 ]]; then
		echo -e >&2 "E: $*"
	else
		echo >&2 ""
	fi

	exit 1
}
