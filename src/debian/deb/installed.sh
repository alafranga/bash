deb.installed() {
	local package="${1?${FUNCNAME[0]}: missing argument}"; shift

	[[ -n "$(dpkg-query -W -f='${Installed-Size}' "$package" 2>/dev/null ||:)" ]]
}
