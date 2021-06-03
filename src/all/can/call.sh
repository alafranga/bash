can.call() {
	[[ $(type -t "${1?${FUNCNAME[0]}: missing argument}" || true) == function ]]
}
