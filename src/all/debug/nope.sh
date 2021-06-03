if [[ -n ${DEBUG:-} ]]; then
	shopt -s expand_aliases

	# shellcheck disable=2142
	alias nope='echo -e "+++ ${FUNCNAME[0]}\t$*"; return'
fi
