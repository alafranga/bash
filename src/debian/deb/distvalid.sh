deb.distvalid() {
	local dist=${1?${FUNCNAME[0]}: missing argument}; shift

	curl --output /dev/null --silent --head --fail http://ftp.debian.org/debian/dists/"$dist"/
}
