deb.update() {
	if file.expired 60 /var/cache/apt/pkgcache.bin; then
		[[ ${EUID:-} -eq 0 ]] || die 'Root permissions required; use sudo.'

		waiting 'Updating package index' apt-get update -y
	fi
}
