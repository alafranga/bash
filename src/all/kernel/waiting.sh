waiting() {
	local message="${1?${FUNCNAME[0]}: missing argument}"; shift

	echo -e "... $message" >&2

	"$@"
}
