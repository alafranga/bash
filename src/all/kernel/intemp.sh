intemp() {
	[[ $# -gt 0 ]] || return 0

	local tmp
	tmp=$(mktemp -p "${TMPDIR:-/tmp}" -d "${PROGNAME:-sh}".XXXXXXXX) || exit

	local err
	(builtin cd "$tmp" && "$@") && err=$? || err=$?

	rm -rf "$tmp"

	if [[ $(type -t "$1" || true) == function ]] && [[ $1 =~ [.]$ ]]; then
		unset -f "$1"
	fi

	return $err
}
