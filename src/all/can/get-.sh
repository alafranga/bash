can.get-() {
	local subject=${1?${FUNCNAME[0]}: missing argument}; shift

	can.get "$subject" || die- "Can't get URL: $subject" "$@"
}
