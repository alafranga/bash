running() {
	local message="${1?${FUNCNAME[0]}: missing argument}"; shift

	echo -e >&2 "==> $message"

	"$@"
}
