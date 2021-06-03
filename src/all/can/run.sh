can.run() {
	command -v "${1?${FUNCNAME[0]}: missing argument}" &>/dev/null
}
