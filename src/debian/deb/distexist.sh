deb.distexist() {
	local dist=${1?${FUNCNAME[0]}: missing argument}; shift

	grep -qE "^deb.*\bdebian.org\b.*\b$dist\b" /etc/apt/*.list /etc/apt/sources.list.d/*.list
}
