if [[ -n ${VERBOSE:-} ]]; then
	verbose() {
		if [[ $# -gt 0 ]]; then
			echo -e >&2 "$*"
		else
			echo >&2 ""
		fi

		exit 0
	}
else
	verbose() {
		:
	}
fi
