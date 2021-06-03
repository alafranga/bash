deb.uninstall() {
	[[ $# -gt 0 ]] || return 0

	local packages=()

	deb.missings packages "$@"
	[[ ${#packages[@]} -gt 0 ]] || return 0

	[[ ${EUID:-} -eq 0 ]] || die 'Root permissions required; use sudo.'

	apt-get purge -y "${packages[@]}"

	should -- apt-get autoremove -y
	should -- apt-get autoclean -y
}
