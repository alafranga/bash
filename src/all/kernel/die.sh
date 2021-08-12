die() {
	if [[ $# -gt 0 ]]; then
		echo -e "E: $*" >&2
	else
		echo "" >&2
	fi

	exit 1
}
