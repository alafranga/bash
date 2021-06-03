can.run-() {
	local subject=${1?${FUNCNAME[0]}: missing argument}; shift

	can.run "$subject" || die- "Program required: $subject" "$@"
}
