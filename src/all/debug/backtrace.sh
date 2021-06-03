if [[ -n ${DEBUG:-} ]]; then
	set -o errtrace

	_backtrace_() {
		caller
	}

	trap _backtrace_ err
fi
