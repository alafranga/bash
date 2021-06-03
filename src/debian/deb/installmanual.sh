deb.installmanual() {
	[[ $# -gt 0 ]] || return 0

	deb.update

	.() {
		net.cat "$1" >deb && deb.installmanual_ deb
	}

	local url

	for url; do
		local deb

		if [[ $url =~ ^(/.*|[.][.]?|[.][.]?/.*)$ ]]; then
			[[ -f $url ]] || die "No such file: $url"

			deb.installmanual_ "$deb"
		else
			intemp . "$url"
		fi
	done
}

deb.installmanual_() {
	local deb="${1?${FUNCNAME[0]}: missing argument}"; shift

	dpkg-deb --info "$deb" &>/dev/null || die "Not a valid Debian package: $deb"
	dpkg -i -- "$deb" 2>/dev/null || true
	apt-get -y install --no-install-recommends --fix-broken
}
