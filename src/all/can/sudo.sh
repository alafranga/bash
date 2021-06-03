can.sudo() {
	[[ ${EUID:-} -eq 0 ]]
}
