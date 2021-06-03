deb.install() {
	[[ $# -gt 0 ]] || return 0

	deb.update

	waiting 'Installing packages' apt-get install --yes --no-install-recommends "$@"
}
