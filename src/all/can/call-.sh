can.call-() {
	local subject=${1?${FUNCNAME[0]}: missing argument}; shift

	can.call "$subject" || die- "Not a callable: $subject" "$@"
}
